#include "display.h"
#include "dmd.h"
#include "glib.h"
#include <stdio.h>
#include <string.h>

#define STR_LEN 			50
static GLIB_Context_t 		glibContext;


/**************************************************************************//**
 * Floating point value to the string
 *  - one digit after the decimal point
 *  - add "-" if necessary
 *  - add "C" at the end
 *****************************************************************************/
static void convertTempToString(char *str, float temp) {
	uint8_t strCnt = 0;
	int16_t multipliedTemp = temp * 10;

	if (multipliedTemp < 0) {
		multipliedTemp = -multipliedTemp;
		str[strCnt] = '-';
		strCnt++;
	}
	if (multipliedTemp >= 1000) {
		str[strCnt] = '0' + (multipliedTemp % 10000) / 1000;
		strCnt++;
	}
	if (multipliedTemp >= 100) {
		str[strCnt] = '0' + (multipliedTemp % 1000) / 100;
		strCnt++;
	}
	if (multipliedTemp >= 10) {
		str[strCnt] = '0' + (multipliedTemp % 100) / 10;
		strCnt++;
	}
	str[strCnt] = '.';
	strCnt++;
	if (multipliedTemp >= 1) {
		str[strCnt] = '0' + (multipliedTemp % 10);
	} else {
		str[strCnt] = '0';
	}
	strCnt++;
	str[strCnt] = 'C';
	strCnt++;
	str[strCnt] = 0;
}


/**************************************************************************//**
 * Text output functions
 *****************************************************************************/
static void Glib_ShowTemperature(GLIB_Context_t *pContext, float temp_value) {
	char string[STR_LEN];

	GLIB_setFont(&glibContext, (GLIB_Font_t *) &GLIB_FontNarrow6x8);
	snprintf(string, STR_LEN, "Temperature = ");
	GLIB_drawString(&glibContext, string, strlen(string), 3, 105, 0);
	convertTempToString(string, temp_value);
	GLIB_setFont(pContext, (GLIB_Font_t *) &GLIB_FontNormal8x8);
	GLIB_drawString(&glibContext, string, strlen(string), 85, 105, 0);
}

static void Glib_ShowParityError(GLIB_Context_t *pContext) {
	char string[STR_LEN];

	GLIB_setFont(pContext, (GLIB_Font_t *) &GLIB_FontNormal8x8);
	snprintf(string, STR_LEN, "PARITY ERROR");
	GLIB_drawString(&glibContext, string, strlen(string), 15, 105, 0);
}

static void Glib_ShowTimingError(GLIB_Context_t *pContext) {
	char string[STR_LEN];

	GLIB_setFont(pContext, (GLIB_Font_t *) &GLIB_FontNormal8x8);
	snprintf(string, STR_LEN, "TIMING ERROR");
	GLIB_drawString(&glibContext, string, strlen(string), 15, 105, 0);
}

static void Glib_ShowText(GLIB_Context_t *pContext) {
	char string[STR_LEN];

	GLIB_setFont(pContext, (GLIB_Font_t *) &GLIB_FontNormal8x8);
	snprintf(string, STR_LEN, "TSIC \nTEMPERATURE \nSENSOR");
	GLIB_drawString(&glibContext, string, strlen(string), 15, 15, 0);

	GLIB_setFont(&glibContext, (GLIB_Font_t *) &GLIB_FontNarrow6x8);
	snprintf(string, STR_LEN,
			"Use pushbutton #1 to\nupdate temperature \nvalue..");
	GLIB_drawString(&glibContext, string, strlen(string), 3, 55, 0);
}


/**************************************************************************//**
 * Auxiliary display functions
 *****************************************************************************/
void Display_Init(void) {
	EMSTATUS status;

	status = DISPLAY_Init();
	if (DISPLAY_EMSTATUS_OK != status)
		while (1) {
		}
	status = DMD_init(0);
	if (DMD_OK != status)
		while (1) {
		}
	status = GLIB_contextInit(&glibContext);
	if (GLIB_OK != status)
		while (1) {
		}
}

static void Glib_PrepareAndClear(void) {
	glibContext.backgroundColor = White;
	glibContext.foregroundColor = Black;
	GLIB_clear(&glibContext);
}


/**************************************************************************//**
 * Functions to use from main program
 *****************************************************************************/
void Display_ShowTemperature(float temp) {
	Glib_PrepareAndClear();
	Glib_ShowText(&glibContext);
	Glib_ShowTemperature(&glibContext, temp);
	DMD_updateDisplay();
}

void Display_ShowParityError(void) {
	Glib_PrepareAndClear();
	Glib_ShowText(&glibContext);
	Glib_ShowParityError(&glibContext);
	DMD_updateDisplay();
}

void Display_ShowTimingError(void) {
	Glib_PrepareAndClear();
	Glib_ShowText(&glibContext);
	Glib_ShowTimingError(&glibContext);
	DMD_updateDisplay();
}

void Display_WellcomeScreen(void) {
	Glib_PrepareAndClear();
	Glib_ShowText(&glibContext);
	DMD_updateDisplay();
}
