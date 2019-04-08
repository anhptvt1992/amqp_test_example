################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rabbit_lib/amqp_api.c \
../rabbit_lib/amqp_connection.c \
../rabbit_lib/amqp_consumer.c \
../rabbit_lib/amqp_framing.c \
../rabbit_lib/amqp_hostcheck.c \
../rabbit_lib/amqp_mem.c \
../rabbit_lib/amqp_openssl.c \
../rabbit_lib/amqp_openssl_bio.c \
../rabbit_lib/amqp_openssl_hostname_validation.c \
../rabbit_lib/amqp_socket.c \
../rabbit_lib/amqp_table.c \
../rabbit_lib/amqp_tcp_socket.c \
../rabbit_lib/amqp_time.c \
../rabbit_lib/amqp_url.c \
../rabbit_lib/utils.c 

OBJS += \
./rabbit_lib/amqp_api.o \
./rabbit_lib/amqp_connection.o \
./rabbit_lib/amqp_consumer.o \
./rabbit_lib/amqp_framing.o \
./rabbit_lib/amqp_hostcheck.o \
./rabbit_lib/amqp_mem.o \
./rabbit_lib/amqp_openssl.o \
./rabbit_lib/amqp_openssl_bio.o \
./rabbit_lib/amqp_openssl_hostname_validation.o \
./rabbit_lib/amqp_socket.o \
./rabbit_lib/amqp_table.o \
./rabbit_lib/amqp_tcp_socket.o \
./rabbit_lib/amqp_time.o \
./rabbit_lib/amqp_url.o \
./rabbit_lib/utils.o 

C_DEPS += \
./rabbit_lib/amqp_api.d \
./rabbit_lib/amqp_connection.d \
./rabbit_lib/amqp_consumer.d \
./rabbit_lib/amqp_framing.d \
./rabbit_lib/amqp_hostcheck.d \
./rabbit_lib/amqp_mem.d \
./rabbit_lib/amqp_openssl.d \
./rabbit_lib/amqp_openssl_bio.d \
./rabbit_lib/amqp_openssl_hostname_validation.d \
./rabbit_lib/amqp_socket.d \
./rabbit_lib/amqp_table.d \
./rabbit_lib/amqp_tcp_socket.d \
./rabbit_lib/amqp_time.d \
./rabbit_lib/amqp_url.d \
./rabbit_lib/utils.d 


# Each subdirectory must supply rules for building sources it contributes
rabbit_lib/%.o: ../rabbit_lib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"/home/anhpt26/eclipse-workspace/test_rabbit/rabbit_lib" -I"/home/anhpt26/eclipse-workspace/test_rabbit/openssl/include" -I"/home/anhpt26/eclipse-workspace/test_rabbit/json_c" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


