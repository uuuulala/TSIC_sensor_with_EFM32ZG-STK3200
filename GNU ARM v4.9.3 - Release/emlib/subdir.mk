################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../emlib/em_assert.c \
../emlib/em_cmu.c \
../emlib/em_emu.c \
../emlib/em_gpio.c \
../emlib/em_int.c \
../emlib/em_pcnt.c \
../emlib/em_prs.c \
../emlib/em_rtc.c \
../emlib/em_system.c \
../emlib/em_timer.c \
../emlib/em_usart.c 

OBJS += \
./emlib/em_assert.o \
./emlib/em_cmu.o \
./emlib/em_emu.o \
./emlib/em_gpio.o \
./emlib/em_int.o \
./emlib/em_pcnt.o \
./emlib/em_prs.o \
./emlib/em_rtc.o \
./emlib/em_system.o \
./emlib/em_timer.o \
./emlib/em_usart.o 

C_DEPS += \
./emlib/em_assert.d \
./emlib/em_cmu.d \
./emlib/em_emu.d \
./emlib/em_gpio.d \
./emlib/em_int.d \
./emlib/em_pcnt.d \
./emlib/em_prs.d \
./emlib/em_rtc.d \
./emlib/em_system.d \
./emlib/em_timer.d \
./emlib/em_usart.d 


# Each subdirectory must supply rules for building sources it contributes
emlib/em_assert.o: ../emlib/em_assert.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_assert.d" -MT"emlib/em_assert.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_cmu.o: ../emlib/em_cmu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_cmu.d" -MT"emlib/em_cmu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_emu.o: ../emlib/em_emu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_emu.d" -MT"emlib/em_emu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_gpio.o: ../emlib/em_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_gpio.d" -MT"emlib/em_gpio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_int.o: ../emlib/em_int.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_int.d" -MT"emlib/em_int.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_pcnt.o: ../emlib/em_pcnt.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_pcnt.d" -MT"emlib/em_pcnt.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_prs.o: ../emlib/em_prs.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_prs.d" -MT"emlib/em_prs.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_rtc.o: ../emlib/em_rtc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_rtc.d" -MT"emlib/em_rtc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_system.o: ../emlib/em_system.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_system.d" -MT"emlib/em_system.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_timer.o: ../emlib/em_timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_timer.d" -MT"emlib/em_timer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_usart.o: ../emlib/em_usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_usart.d" -MT"emlib/em_usart.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


