################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rabbitmq-c/amqp_api.c \
../rabbitmq-c/amqp_connection.c \
../rabbitmq-c/amqp_consumer.c \
../rabbitmq-c/amqp_framing.c \
../rabbitmq-c/amqp_hostcheck.c \
../rabbitmq-c/amqp_mem.c \
../rabbitmq-c/amqp_openssl.c \
../rabbitmq-c/amqp_openssl_bio.c \
../rabbitmq-c/amqp_openssl_hostname_validation.c \
../rabbitmq-c/amqp_socket.c \
../rabbitmq-c/amqp_table.c \
../rabbitmq-c/amqp_tcp_socket.c \
../rabbitmq-c/amqp_time.c \
../rabbitmq-c/amqp_url.c \
../rabbitmq-c/utils.c 

OBJS += \
./rabbitmq-c/amqp_api.o \
./rabbitmq-c/amqp_connection.o \
./rabbitmq-c/amqp_consumer.o \
./rabbitmq-c/amqp_framing.o \
./rabbitmq-c/amqp_hostcheck.o \
./rabbitmq-c/amqp_mem.o \
./rabbitmq-c/amqp_openssl.o \
./rabbitmq-c/amqp_openssl_bio.o \
./rabbitmq-c/amqp_openssl_hostname_validation.o \
./rabbitmq-c/amqp_socket.o \
./rabbitmq-c/amqp_table.o \
./rabbitmq-c/amqp_tcp_socket.o \
./rabbitmq-c/amqp_time.o \
./rabbitmq-c/amqp_url.o \
./rabbitmq-c/utils.o 

C_DEPS += \
./rabbitmq-c/amqp_api.d \
./rabbitmq-c/amqp_connection.d \
./rabbitmq-c/amqp_consumer.d \
./rabbitmq-c/amqp_framing.d \
./rabbitmq-c/amqp_hostcheck.d \
./rabbitmq-c/amqp_mem.d \
./rabbitmq-c/amqp_openssl.d \
./rabbitmq-c/amqp_openssl_bio.d \
./rabbitmq-c/amqp_openssl_hostname_validation.d \
./rabbitmq-c/amqp_socket.d \
./rabbitmq-c/amqp_table.d \
./rabbitmq-c/amqp_tcp_socket.d \
./rabbitmq-c/amqp_time.d \
./rabbitmq-c/amqp_url.d \
./rabbitmq-c/utils.d 


# Each subdirectory must supply rules for building sources it contributes
rabbitmq-c/%.o: ../rabbitmq-c/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gnueabihf-gcc -I"/home/anhpt26/Desktop/task/test_rpi_sendstring/rabbitmq-c" -I"/home/anhpt26/Desktop/task/test_rpi_sendstring/open_ssl_lib/include" -I"/home/anhpt26/Desktop/task/test_rpi_sendstring/json-c" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


