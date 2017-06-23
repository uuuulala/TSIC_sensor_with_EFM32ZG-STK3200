################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Graphics/dmd_display.c \
../Graphics/glib.c \
../Graphics/glib_font_narrow_6x8.c \
../Graphics/glib_font_normal_8x8.c \
../Graphics/glib_rectangle.c \
../Graphics/glib_string.c 

OBJS += \
./Graphics/dmd_display.o \
./Graphics/glib.o \
./Graphics/glib_font_narrow_6x8.o \
./Graphics/glib_font_normal_8x8.o \
./Graphics/glib_rectangle.o \
./Graphics/glib_string.o 

C_DEPS += \
./Graphics/dmd_display.d \
./Graphics/glib.d \
./Graphics/glib_font_narrow_6x8.d \
./Graphics/glib_font_normal_8x8.d \
./Graphics/glib_rectangle.d \
./Graphics/glib_string.d 


# Each subdirectory must supply rules for building sources it contributes
Graphics/dmd_display.o: ../Graphics/dmd_display.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/dmd_display.d" -MT"Graphics/dmd_display.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib.o: ../Graphics/glib.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib.d" -MT"Graphics/glib.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib_font_narrow_6x8.o: ../Graphics/glib_font_narrow_6x8.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib_font_narrow_6x8.d" -MT"Graphics/glib_font_narrow_6x8.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib_font_normal_8x8.o: ../Graphics/glib_font_normal_8x8.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib_font_normal_8x8.d" -MT"Graphics/glib_font_normal_8x8.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib_rectangle.o: ../Graphics/glib_rectangle.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib_rectangle.d" -MT"Graphics/glib_rectangle.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib_string.o: ../Graphics/glib_string.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib_string.d" -MT"Graphics/glib_string.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


