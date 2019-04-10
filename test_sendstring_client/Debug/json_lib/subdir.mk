################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../json_lib/arraylist.c \
../json_lib/debug.c \
../json_lib/json_c_version.c \
../json_lib/json_object.c \
../json_lib/json_object_iterator.c \
../json_lib/json_pointer.c \
../json_lib/json_tokener.c \
../json_lib/json_util.c \
../json_lib/json_visit.c \
../json_lib/libjson.c \
../json_lib/linkhash.c \
../json_lib/printbuf.c \
../json_lib/random_seed.c \
../json_lib/strerror_override.c 

OBJS += \
./json_lib/arraylist.o \
./json_lib/debug.o \
./json_lib/json_c_version.o \
./json_lib/json_object.o \
./json_lib/json_object_iterator.o \
./json_lib/json_pointer.o \
./json_lib/json_tokener.o \
./json_lib/json_util.o \
./json_lib/json_visit.o \
./json_lib/libjson.o \
./json_lib/linkhash.o \
./json_lib/printbuf.o \
./json_lib/random_seed.o \
./json_lib/strerror_override.o 

C_DEPS += \
./json_lib/arraylist.d \
./json_lib/debug.d \
./json_lib/json_c_version.d \
./json_lib/json_object.d \
./json_lib/json_object_iterator.d \
./json_lib/json_pointer.d \
./json_lib/json_tokener.d \
./json_lib/json_util.d \
./json_lib/json_visit.d \
./json_lib/libjson.d \
./json_lib/linkhash.d \
./json_lib/printbuf.d \
./json_lib/random_seed.d \
./json_lib/strerror_override.d 


# Each subdirectory must supply rules for building sources it contributes
json_lib/%.o: ../json_lib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"/home/anhpt26/eclipse-workspace/test_sendstring_client/json_lib" -I"/home/anhpt26/eclipse-workspace/test_sendstring_client/rabbitmqc_lib" -I"/home/anhpt26/eclipse-workspace/test_sendstring_client/openssl_lib/include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


