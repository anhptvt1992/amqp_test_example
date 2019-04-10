################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include rabbitmq-c/subdir.mk
-include json-c/.libs/subdir.mk
-include json-c/subdir.mk
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
all: test_rpi_sendstring_client

# Tool invocations
test_rpi_sendstring_client: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross GCC Linker'
	arm-linux-gnueabihf-gcc -L"/home/anhpt26/Desktop/task/test_rpi_sendstring/open_ssl_lib/lib" -o "test_rpi_sendstring_client" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) test_rpi_sendstring_client
	-@echo ' '

.PHONY: all clean dependents

-include ../makefile.targets
