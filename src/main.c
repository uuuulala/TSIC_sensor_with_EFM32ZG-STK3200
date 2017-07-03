/*
 * Program for reading TSIC digital temperature sensors TSic206, TSic306 and TSic506
 * using Silicon Labs' EFM32ZG-STK3200 kit
 *
 * Whether the button is pressed, we receive temperature data from TSic sensor.
 *
 * TSic sensor connected by three pins (Vdd, GND and signal) and distribute data with
 * ZACwire communication protocol.
 *
 * GLIB library provided by SiLabs is used to show temperature at the Sharp Memory
 * LCD on the EFM32ZG-STK3200.
 *
 * TSic Application Note: https://www.ist-ag.com/sites/default/files/ATTSic_E.pdf
 */

#include "em_device.h"
#include "em_system.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_gpio.h"
#include "em_timer.h"
#include "em_int.h"

#include "TSic.h"

/* Single TSic package (8 data bits + parity bit) */
uint16_t currentTSicPacket = 0;
/* Full temperature transmission from TSic sensor (11 bit) */
uint16_t fullTSicTransmission = 0;

/* Display functions from disp.c file */
void Display_Init(void);
void Display_WellcomeScreen(void);
void Display_ShowTemperature(float temp);
void Display_ShowParityError(void);
void Display_ShowTimingError(void);

/**************************************************************************//**
 * Setup GPIO for both TSic wires and pushbutton #1
 *****************************************************************************/
static void gpioSetup(void) {
	GPIO_PinModeSet(TSIC_DATA_PORT, TSIC_DATA_PIN, gpioModeInput, 0);

	GPIO_PinModeSet(TSIC_VDD_PORT, TSIC_VDD_PIN, gpioModePushPull, 0);
	GPIO_PinOutClear(TSIC_VDD_PORT, TSIC_VDD_PIN);

	GPIO_PinModeSet(BUTTON_PORT, BUTTON_PIN, gpioModeInput, 1);
	GPIO_IntConfig(BUTTON_PORT, BUTTON_PIN, false, true, true);
	NVIC_EnableIRQ(GPIO_ODD_IRQn);
}

/**************************************************************************//**
 * Start and stop functions for timer #0
 * Functions are using to measure duty cycles
 *****************************************************************************/
void myTIMER_Start(bool prescale) {
	TIMER_Init_TypeDef mytimerInit = TIMER_INIT_DEFAULT;
	if (prescale) {
		mytimerInit.prescale = timerPrescale1024;
	}
	TIMER_Init(TIMER0, &mytimerInit);
	TIMER_Enable(TIMER0, true);
}
void myTIMER_Stop(void) {
	TIMER_Enable(TIMER0, false);
}

/**************************************************************************//**
 * Read single packet from TSic sensor using ZACwire one-wire protocol
 * Assuming standard update rate = 10 Hz which means 125us one-bit-timeframe
 *
 *  - Start byte => 50 % duty cycle
 *  - Logic 1    => 75 % duty cycle
 *  - Logic 0    => 25 % duty cycle
 *****************************************************************************/
int8_t readTSicPacket(bool isTheFirstPacket) {
	currentTSicPacket = 0;

	/* Wait until start bit occurs, return error if it takes too long
	 */
	if (isTheFirstPacket) {
		/* If we are waiting after powering up the sensor */
		myTIMER_Start(PRESCALER_1024);
		while (TSIC_DATA_HIGH) {
			if (TIMER_COUNTER >= WAITING90MS_TICKS) {
				return NO_SIGNAL_OCCURS;
			}
		}
		myTIMER_Stop();
	} else {
		/* If we are waiting just for time between first and second packet */
		myTIMER_Start(NO_PRESCALER);
		while (TSIC_DATA_HIGH) {
			if (TIMER_COUNTER >= TSTROBE_TICKS * 4) {
				return NO_SECOND_PACKAGE;
			}
		}
		myTIMER_Stop();
	}

	/* Check if start bit has occurred:
	 *
	 * As Tstrobe = 125 us / 2 = 62.5 us,  we need to check if the signal is
	 * low for about Tstrobe time and then goes high for about Tstrobe time.
	 */
	myTIMER_Start(NO_PRESCALER);
	while (TSIC_DATA_LOW) {
		if (TIMER_COUNTER >= TSTROBE_TICKS * 1,1) {
			return START_BIT_ERROR;
		}
	}
	while (TSIC_DATA_HIGH) {
		if (TIMER_COUNTER >= TSTROBE_TICKS * 2,2) {
			return START_BIT_ERROR;
		}
	}
	if (TIMER_COUNTER <= TSTROBE_TICKS * 1,8) {
		return START_BIT_ERROR;
	}
	myTIMER_Stop();

	/*
	 * Receive 8 data bits + 1 parity bit
	 */
	for (uint8_t i = 0; i <= 8; i++) {

		/* Wait for exact Tstrobe time to check the line state */
		myTIMER_Start(NO_PRESCALER);
		while (TIMER_COUNTER < TSTROBE_TICKS) {
		}
		myTIMER_Stop();

		/* Read bit */
		currentTSicPacket <<= 1;
		if (TSIC_DATA_HIGH) {
			currentTSicPacket |= 1;
		}

		/* Wait until the end of one-bit-timeframe.
		 */
		if (TSIC_DATA_LOW) {
			myTIMER_Start(NO_PRESCALER);
			while (TSIC_DATA_LOW) {
				if (TIMER_COUNTER >= TSTROBE_TICKS * 0,6) {
					return PACKAGE_TIMING_ERROR;
				}
			}
			myTIMER_Stop();
		}
		/* Last bit (parity bit) doesn't end up with falling edge so we should
		 * wait for the next falling edge just for data bits.
		 */
		if (i != 8) {
			myTIMER_Start(NO_PRESCALER);
			while (TSIC_DATA_HIGH) {
				if (TIMER_COUNTER >= TSTROBE_TICKS * 1,1) {
					return PACKAGE_TIMING_ERROR;
				}
			}
			myTIMER_Stop();
		}
	}

	return PACKAGE_READING_OK;
}

/**************************************************************************//**
 * Temperature conversion from uint16_t to float in °C
 *****************************************************************************/
float calculateCelsius(uint16_t transmissionData) {
	/* TSic20x / 30x sensors: LT = -50, HT = 150, Digital output 11 bit */
	//float celsius = ((float) transmissionData * 200 / 2047) - 50;

	/* TSic50x sensors: LT = -10, HT = 60, Digital output 11 bit */
	float celsius = ((float) transmissionData * 70 / 2047) - 10;

	return celsius;
}

/**************************************************************************//**
 * Parity check
 *****************************************************************************/
int8_t checkParity(uint16_t package, bool parity) {
	uint8_t parityCounter = 0;

	for (uint8_t i = 0; i <= 7; i++) {
		if (package & (1 << i)) {
			parityCounter++;
		}
	}
	if (parityCounter % 2 == parity) {
		return PARITY_OK;
	} else {
		return PARITY_ERROR;
	}
}

/**************************************************************************//**
 * Read and analyze two packets from TSic sensor
 *****************************************************************************/
int8_t receiveTSicData(void) {
	uint16_t firstTSicPacket = 0;
	uint16_t secondTSicPacket = 0;
	bool firstParityBit = 0;
	bool secondParityBit = 0;

	/* Time critical section [all interrupts disable]:
	 * Receive two data packets from TSic sensor
	 */
	INT_Disable();
	if (readTSicPacket(1) == PACKAGE_READING_OK) {
		firstTSicPacket = currentTSicPacket;
	} else {
		INT_Enable();
		return TSIC_TIMING_ERROR;
	}
	if (readTSicPacket(0) == PACKAGE_READING_OK) {
		secondTSicPacket = currentTSicPacket;
	} else {
		INT_Enable();
		return TSIC_TIMING_ERROR;
	}
	INT_Enable();

	/* Decode received packets */
	/* Get parity bit from first packet */
	firstParityBit = firstTSicPacket & 0x01;
	/* Get 3 data bits from first packet */
	firstTSicPacket = firstTSicPacket & 0x0007;
	/* Delete first parity bit */
	firstTSicPacket >>= 1;
	/* Get parity bit from second packet */
	secondParityBit = secondTSicPacket & 0x01;
	/* Delete second parity bit */
	secondTSicPacket >>= 1;

	/* Check parity errors and assemble full temperature transmission from TSic */
	if (checkParity(firstTSicPacket, firstParityBit) == PARITY_OK
			&& checkParity(secondTSicPacket, secondParityBit) == PARITY_OK) {
		fullTSicTransmission = (firstTSicPacket << 8) + secondTSicPacket;
		return TSIC_IS_OK;
	} else {
		return TSIC_PARITY_ERROR;
	}
}

/**************************************************************************//**
 * Read temperature from TSic sensor, show result on the display
 *  - Power TSic sensor
 *  - Receive TSic data
 *  - Unpower TSic sensor
 *  - Calculate temperature in °C and show it OR show error message
 *****************************************************************************/
void ReceiveTempAndShowIt(void) {
	GPIO_PinOutSet(TSIC_VDD_PORT, TSIC_VDD_PIN);
	int8_t TSic_result = receiveTSicData();
	GPIO_PinOutClear(TSIC_VDD_PORT, TSIC_VDD_PIN);

	if (TSic_result == TSIC_IS_OK) {
		float temperatureCelsius = calculateCelsius(fullTSicTransmission);
		Display_ShowTemperature(temperatureCelsius);
	} else if (TSic_result == TSIC_PARITY_ERROR) {
		Display_ShowParityError();
	} else if (TSic_result == TSIC_TIMING_ERROR) {
		Display_ShowTimingError();
	}
}

/**************************************************************************//**
 * GPIO Interrupt handler (pushbutton # 1)
 *  - Receive TSic data & show results on the display
 *****************************************************************************/
void GPIO_ODD_IRQHandler(void) {
	uint32_t interruptMask = GPIO_IntGet();

	if (interruptMask & (1 << BUTTON_PIN)) {
		Display_WellcomeScreen();
		ReceiveTempAndShowIt();
	}

	GPIO_IntClear(interruptMask);
}

/**************************************************************************//**
 * Main function
 *****************************************************************************/
int main(void) {
	CHIP_Init();
	CMU_ClockEnable(cmuClock_GPIO, true);
	CMU_ClockEnable(cmuClock_TIMER0, true);

	gpioSetup();
	Display_Init();
	Display_WellcomeScreen();

	while (1) {
	}
}
