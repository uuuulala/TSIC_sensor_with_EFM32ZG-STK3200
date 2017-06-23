################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/disp.c \
../src/main.c 

OBJS += \
./src/disp.o \
./src/main.o 

C_DEPS += \
./src/disp.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/disp.o: ../src/disp.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"src/disp.d" -MT"src/disp.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/main.o: ../src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"src/main.d" -MT"src/main.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


