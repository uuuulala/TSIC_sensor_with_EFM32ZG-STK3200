/* PB #1 */
#define BUTTON_PORT 			gpioPortC
#define BUTTON_PIN  			9

/* TSIC SENSOR PINS */
#define TSIC_DATA_PORT			gpioPortC
#define TSIC_DATA_PIN			0
#define TSIC_VDD_PORT			gpioPortC
#define TSIC_VDD_PIN			1
#define TSIC_DATA_HIGH			(GPIO_PinInGet(TSIC_DATA_PORT, TSIC_DATA_PIN))
#define TSIC_DATA_LOW			!(GPIO_PinInGet(TSIC_DATA_PORT, TSIC_DATA_PIN))

/* TSIC SENSOR STATES */
#define TSIC_IS_OK 				0
#define TSIC_PARITY_ERROR 		-1
#define TSIC_TIMING_ERROR 		-2
#define PARITY_OK 				0
#define PARITY_ERROR 			-1
#define PACKAGE_READING_OK 		0
#define NO_SIGNAL_OCCURS		-1
#define NO_SECOND_PACKAGE		-2
#define START_BIT_ERROR			-3
#define PACKAGE_TIMING_ERROR	-4

/* TIMING FOR TSIC POLLING */
#define TIMER_COUNTER			(TIMER0 -> CNT)

/* W/O PRESCALER: 14 Mhz * 62.5 usec = 875 */
#define TSTROBE_TICKS			875
#define NO_PRESCALER			false

/* W/ PRESCALER: 14 Mhz * 90 msec / 1024 = 1230 */
#define WAITING90MS_TICKS		1230
#define PRESCALER_1024			true
