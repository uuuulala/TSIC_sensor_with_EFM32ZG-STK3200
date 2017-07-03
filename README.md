# TSIC_sensor_with_EFM32ZG-STK3200

TSic206/306/506 digital temperature sensor reading with EFM32ZG-STK3200 board.

Every time the button #1 is pushed we power up the sensor, read temperature value, unpower the sensor and update information at the display.

[![TSIC sensor with EFM32ZG STK3200 board](https://habrastorage.org/web/838/4a1/51e/8384a151ec07408991a440436a250cd1.PNG)](https://youtu.be/Gf35uOftPwY "TSIC sensor with EFM32ZG STK3200 board")

click to open the video

<b>The code isn't optimized for low energy consuption as any EFM32 programm could be. Even timer interruptions were not used here :) 
So the only target is to provide simple and understandable code for TSic sensor.</b>

## EFM32ZG-STK3200 board

EFM32ZG-STK3200 is a starter Kit designed by Silicon Labs company to get familiar with the EFM32 Zero Gecko 32-bit microcontrollers. 
You can find all information about the kit at [silabs.com](http://www.silabs.com/products/development-tools/mcu/32-bit/efm32-zero-gecko-starter-kit).

Here we use the following board components: 
* expansion header to connect TSic sensor
* user button #1
* 128 x 128 pixel Memory-LCD
* Integrated SEGGER J-Link USB debugger/emulator
* EFM32ZG222F32 Cortex-M0+ MCU

## Connecting the sensor

All TSic sensors use 3 pins to be connected - Vcc, GND and Signal as shown in the datasheet. No additional components are required. In this particular program port C was used (pin #0 for signal and pin #1 for Vcc).

Since the sensor is powered on you can receive temperature data using ZACwire protocol. Every transmission from TSic sensor includes two 8-bit packets with 11 or 14 databits inside:

![transmission](http://i.imgur.com/uSnoSVw.png)

Here you can see example of real scillogram:

![osc1](http://i.imgur.com/8PAOlPT.png) ![osc2](http://i.imgur.com/34kow0J.png)


All information about protocol available in [Application Note](https://www.ist-ag.com/sites/default/files/ATTSic_E.pdf). The difference between TSic206, TSic306 and TSic506 sensors' polling is about calculations (raw data to Celsius).

## LCD

Nice LCD is embedded in EFM32ZG-STK3200 starter kit. The best way to use it is GLIB graphic library provided by Silicon Labs.

## IDE

The project was created with Simplicity Studio IDE v4.
