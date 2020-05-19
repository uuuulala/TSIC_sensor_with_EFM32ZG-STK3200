# TSIC_sensor_with_EFM32ZG-STK3200

TSic206/306/506 digital temperature sensor & EFM32ZG-STK3200 devKit (Cortex-M0+ MCU based board).

Button #1 triggers the following actions: 
1) power up the sensor
2) read temperature value
3) unpower the sensor 
4) display the value on the LCD display

[![TSIC sensor with EFM32ZG STK3200 board](https://habrastorage.org/web/838/4a1/51e/8384a151ec07408991a440436a250cd1.PNG)](https://youtu.be/Gf35uOftPwY "TSIC sensor with EFM32ZG STK3200 board")

click to open the video

<b>The project demonstrates the simpliest way to measure temperature with TSic sensor. We don't use any energy-optimization features EFM32 microcontroiller support.</b>

## EFM32ZG-STK3200 board

EFM32ZG-STK3200 is a development kit designed by Silicon Labs company. It provides all the components you may need to get familiar with EFM32 Zero Gecko 32-bit microcontrollers family. 
Learn more about the kit: [silabs.com](http://www.silabs.com/products/development-tools/mcu/32-bit/efm32-zero-gecko-starter-kit).

The following components are used in this project: 
* 20 pin expansion header to connect TSic sensor
* user button #1
* 128 x 128 pixel Memory-LCD
* Integrated SEGGER J-Link USB debugger/emulator
* EFM32ZG222F32 Cortex-M0+ MCU

## Connecting the sensor

TSic sensor needs 3 pins to be connected: Vcc, GND and Signal (see datasheet for details). No additional components are required. 
In the board, we use port C to connect the sensor (pin #0 <-> signal; pin #1 <-> Vcc), but there're options.

Once the sensor is powered we can receive temperature data by ZACwire protocol. Every transmission is two 8-bit packets with 11 or 14 databits in each:

![transmission](http://i.imgur.com/uSnoSVw.png)

Oscillogram example:

![osc1](http://i.imgur.com/8PAOlPT.png) ![osc2](http://i.imgur.com/34kow0J.png)

ZACwire protocol full description is available in [Application Note](https://www.ist-ag.com/sites/default/files/ATTSic_E.pdf). The difference between TSic206, TSic306 and TSic506 sensors' is just about raw data to Celsius calculations.

## LCD

Really nice LCD is available at EFM32ZG-STK3200 board, the graphic library (GLIB) is provided by vendor.

## IDE

The project was created with Simplicity Studio IDE v4, but you can use any IDE which supports EFM32 family
