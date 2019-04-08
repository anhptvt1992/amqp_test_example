################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../json_c/arraylist.c \
../json_c/debug.c \
../json_c/json_c_version.c \
../json_c/json_object.c \
../json_c/json_object_iterator.c \
../json_c/json_pointer.c \
../json_c/json_tokener.c \
../json_c/json_util.c \
../json_c/json_visit.c \
../json_c/libjson.c \
../json_c/linkhash.c \
../json_c/printbuf.c \
../json_c/random_seed.c \
../json_c/strerror_override.c 

OBJS += \
./json_c/arraylist.o \
./json_c/debug.o \
./json_c/json_c_version.o \
./json_c/json_object.o \
./json_c/json_object_iterator.o \
./json_c/json_pointer.o \
./json_c/json_tokener.o \
./json_c/json_util.o \
./json_c/json_visit.o \
./json_c/libjson.o \
./json_c/linkhash.o \
./json_c/printbuf.o \
./json_c/random_seed.o \
./json_c/strerror_override.o 

C_DEPS += \
./json_c/arraylist.d \
./json_c/debug.d \
./json_c/json_c_version.d \
./json_c/json_object.d \
./json_c/json_object_iterator.d \
./json_c/json_pointer.d \
./json_c/json_tokener.d \
./json_c/json_util.d \
./json_c/json_visit.d \
./json_c/libjson.d \
./json_c/linkhash.d \
./json_c/printbuf.d \
./json_c/random_seed.d \
./json_c/strerror_override.d 


# Each subdirectory must supply rules for building sources it contributes
json_c/%.o: ../json_c/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"/home/anhpt26/eclipse-workspace/test_rabbit/rabbit_lib" -I"/home/anhpt26/eclipse-workspace/test_rabbit/openssl/include" -I"/home/anhpt26/eclipse-workspace/test_rabbit/json_c" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


