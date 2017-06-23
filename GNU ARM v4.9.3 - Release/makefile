################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include emlib/subdir.mk
-include Graphics/subdir.mk
-include Drivers/subdir.mk
-include CMSIS/EFM32ZG/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: STK3200_TSic_glib.axf

# Tool invocations
STK3200_TSic_glib.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -T "STK3200_TSic_glib.ld" -Xlinker --gc-sections -Xlinker -Map="STK3200_TSic_glib.map" --specs=nano.specs -o STK3200_TSic_glib.axf "./CMSIS/EFM32ZG/startup_gcc_efm32zg.o" "./CMSIS/EFM32ZG/system_efm32zg.o" "./Drivers/display.o" "./Drivers/displayls013b7dh03.o" "./Drivers/displaypalemlib.o" "./Drivers/udelay.o" "./Graphics/dmd_display.o" "./Graphics/glib.o" "./Graphics/glib_font_narrow_6x8.o" "./Graphics/glib_font_normal_8x8.o" "./Graphics/glib_rectangle.o" "./Graphics/glib_string.o" "./emlib/em_assert.o" "./emlib/em_cmu.o" "./emlib/em_emu.o" "./emlib/em_gpio.o" "./emlib/em_int.o" "./emlib/em_pcnt.o" "./emlib/em_prs.o" "./emlib/em_rtc.o" "./emlib/em_system.o" "./emlib/em_timer.o" "./emlib/em_usart.o" "./src/disp.o" "./src/main.o" -lm -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: STK3200_TSic_glib.hex'
	arm-none-eabi-objcopy -O ihex "STK3200_TSic_glib.axf" "STK3200_TSic_glib.hex"
	@echo ' '

	@echo 'Building bin file: STK3200_TSic_glib.bin'
	arm-none-eabi-objcopy -O binary "STK3200_TSic_glib.axf" "STK3200_TSic_glib.bin"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "STK3200_TSic_glib.axf"
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) STK3200_TSic_glib.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
