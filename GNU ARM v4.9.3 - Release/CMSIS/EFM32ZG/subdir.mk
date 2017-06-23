################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../CMSIS/EFM32ZG/startup_gcc_efm32zg.s 

C_SRCS += \
../CMSIS/EFM32ZG/system_efm32zg.c 

OBJS += \
./CMSIS/EFM32ZG/startup_gcc_efm32zg.o \
./CMSIS/EFM32ZG/system_efm32zg.o 

C_DEPS += \
./CMSIS/EFM32ZG/system_efm32zg.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/EFM32ZG/%.o: ../CMSIS/EFM32ZG/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Assembler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -c -x assembler-with-cpp -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" '-DEFM32ZG222F32=1' -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CMSIS/EFM32ZG/system_efm32zg.o: ../CMSIS/EFM32ZG/system_efm32zg.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' '-DNDEBUG=1' -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/examples/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/EFM32ZG_STK3200/config" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//CMSIS/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//emlib/inc" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/bsp" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//kits/common/drivers" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//Device/SiliconLabs/EFM32ZG/Include" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/glib" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd" -I"C:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v4.4.0//reptile/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -MMD -MP -MF"CMSIS/EFM32ZG/system_efm32zg.d" -MT"CMSIS/EFM32ZG/system_efm32zg.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


