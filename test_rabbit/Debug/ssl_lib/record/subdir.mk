################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ssl_lib/record/dtls1_bitmap.c \
../ssl_lib/record/rec_layer_d1.c \
../ssl_lib/record/rec_layer_s3.c \
../ssl_lib/record/ssl3_buffer.c \
../ssl_lib/record/ssl3_record.c \
../ssl_lib/record/ssl3_record_tls13.c 

O_SRCS += \
../ssl_lib/record/libssl-lib-dtls1_bitmap.o \
../ssl_lib/record/libssl-lib-rec_layer_d1.o \
../ssl_lib/record/libssl-lib-rec_layer_s3.o \
../ssl_lib/record/libssl-lib-ssl3_buffer.o \
../ssl_lib/record/libssl-lib-ssl3_record.o \
../ssl_lib/record/libssl-lib-ssl3_record_tls13.o \
../ssl_lib/record/libssl-shlib-dtls1_bitmap.o \
../ssl_lib/record/libssl-shlib-rec_layer_d1.o \
../ssl_lib/record/libssl-shlib-rec_layer_s3.o \
../ssl_lib/record/libssl-shlib-ssl3_buffer.o \
../ssl_lib/record/libssl-shlib-ssl3_record.o \
../ssl_lib/record/libssl-shlib-ssl3_record_tls13.o 

OBJS += \
./ssl_lib/record/dtls1_bitmap.o \
./ssl_lib/record/rec_layer_d1.o \
./ssl_lib/record/rec_layer_s3.o \
./ssl_lib/record/ssl3_buffer.o \
./ssl_lib/record/ssl3_record.o \
./ssl_lib/record/ssl3_record_tls13.o 

C_DEPS += \
./ssl_lib/record/dtls1_bitmap.d \
./ssl_lib/record/rec_layer_d1.d \
./ssl_lib/record/rec_layer_s3.d \
./ssl_lib/record/ssl3_buffer.d \
./ssl_lib/record/ssl3_record.d \
./ssl_lib/record/ssl3_record_tls13.d 


# Each subdirectory must supply rules for building sources it contributes
ssl_lib/record/%.o: ../ssl_lib/record/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"/home/anhpt26/eclipse-workspace/test_rabbit/rabbit_lib" -I"/home/anhpt26/eclipse-workspace/test_rabbit/ssl_lib" -I"/home/anhpt26/eclipse-workspace/test_rabbit/json_lib" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


