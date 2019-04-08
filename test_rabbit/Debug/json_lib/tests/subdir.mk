################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../json_lib/tests/parse_flags.c \
../json_lib/tests/test1.c \
../json_lib/tests/test2.c \
../json_lib/tests/test4.c \
../json_lib/tests/testReplaceExisting.c \
../json_lib/tests/test_cast.c \
../json_lib/tests/test_charcase.c \
../json_lib/tests/test_compare.c \
../json_lib/tests/test_deep_copy.c \
../json_lib/tests/test_double_serializer.c \
../json_lib/tests/test_float.c \
../json_lib/tests/test_int_add.c \
../json_lib/tests/test_json_pointer.c \
../json_lib/tests/test_locale.c \
../json_lib/tests/test_null.c \
../json_lib/tests/test_parse.c \
../json_lib/tests/test_parse_int64.c \
../json_lib/tests/test_printbuf.c \
../json_lib/tests/test_set_serializer.c \
../json_lib/tests/test_set_value.c \
../json_lib/tests/test_util_file.c \
../json_lib/tests/test_visit.c 

O_SRCS += \
../json_lib/tests/test1.o \
../json_lib/tests/test1Formatted-parse_flags.o \
../json_lib/tests/test1Formatted-test1.o \
../json_lib/tests/test2.o \
../json_lib/tests/test2Formatted-parse_flags.o \
../json_lib/tests/test2Formatted-test2.o \
../json_lib/tests/test4.o \
../json_lib/tests/testReplaceExisting.o \
../json_lib/tests/test_cast.o \
../json_lib/tests/test_charcase.o \
../json_lib/tests/test_compare.o \
../json_lib/tests/test_deep_copy.o \
../json_lib/tests/test_double_serializer.o \
../json_lib/tests/test_float.o \
../json_lib/tests/test_int_add.o \
../json_lib/tests/test_json_pointer.o \
../json_lib/tests/test_locale.o \
../json_lib/tests/test_null.o \
../json_lib/tests/test_parse.o \
../json_lib/tests/test_parse_int64.o \
../json_lib/tests/test_printbuf.o \
../json_lib/tests/test_set_serializer.o \
../json_lib/tests/test_set_value.o \
../json_lib/tests/test_util_file.o \
../json_lib/tests/test_visit.o 

OBJS += \
./json_lib/tests/parse_flags.o \
./json_lib/tests/test1.o \
./json_lib/tests/test2.o \
./json_lib/tests/test4.o \
./json_lib/tests/testReplaceExisting.o \
./json_lib/tests/test_cast.o \
./json_lib/tests/test_charcase.o \
./json_lib/tests/test_compare.o \
./json_lib/tests/test_deep_copy.o \
./json_lib/tests/test_double_serializer.o \
./json_lib/tests/test_float.o \
./json_lib/tests/test_int_add.o \
./json_lib/tests/test_json_pointer.o \
./json_lib/tests/test_locale.o \
./json_lib/tests/test_null.o \
./json_lib/tests/test_parse.o \
./json_lib/tests/test_parse_int64.o \
./json_lib/tests/test_printbuf.o \
./json_lib/tests/test_set_serializer.o \
./json_lib/tests/test_set_value.o \
./json_lib/tests/test_util_file.o \
./json_lib/tests/test_visit.o 

C_DEPS += \
./json_lib/tests/parse_flags.d \
./json_lib/tests/test1.d \
./json_lib/tests/test2.d \
./json_lib/tests/test4.d \
./json_lib/tests/testReplaceExisting.d \
./json_lib/tests/test_cast.d \
./json_lib/tests/test_charcase.d \
./json_lib/tests/test_compare.d \
./json_lib/tests/test_deep_copy.d \
./json_lib/tests/test_double_serializer.d \
./json_lib/tests/test_float.d \
./json_lib/tests/test_int_add.d \
./json_lib/tests/test_json_pointer.d \
./json_lib/tests/test_locale.d \
./json_lib/tests/test_null.d \
./json_lib/tests/test_parse.d \
./json_lib/tests/test_parse_int64.d \
./json_lib/tests/test_printbuf.d \
./json_lib/tests/test_set_serializer.d \
./json_lib/tests/test_set_value.d \
./json_lib/tests/test_util_file.d \
./json_lib/tests/test_visit.d 


# Each subdirectory must supply rules for building sources it contributes
json_lib/tests/%.o: ../json_lib/tests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"/home/anhpt26/eclipse-workspace/test_rabbit/rabbit_lib" -I"/home/anhpt26/eclipse-workspace/test_rabbit/json_lib" -I"/home/anhpt26/eclipse-workspace/test_rabbit/ssl_lib" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


