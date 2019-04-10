################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rabbitmqc_lib/amqp_api.c \
../rabbitmqc_lib/amqp_connection.c \
../rabbitmqc_lib/amqp_consumer.c \
../rabbitmqc_lib/amqp_framing.c \
../rabbitmqc_lib/amqp_hostcheck.c \
../rabbitmqc_lib/amqp_mem.c \
../rabbitmqc_lib/amqp_openssl.c \
../rabbitmqc_lib/amqp_openssl_bio.c \
../rabbitmqc_lib/amqp_openssl_hostname_validation.c \
../rabbitmqc_lib/amqp_socket.c \
../rabbitmqc_lib/amqp_table.c \
../rabbitmqc_lib/amqp_tcp_socket.c \
../rabbitmqc_lib/amqp_time.c \
../rabbitmqc_lib/amqp_url.c \
../rabbitmqc_lib/utils.c 

OBJS += \
./rabbitmqc_lib/amqp_api.o \
./rabbitmqc_lib/amqp_connection.o \
./rabbitmqc_lib/amqp_consumer.o \
./rabbitmqc_lib/amqp_framing.o \
./rabbitmqc_lib/amqp_hostcheck.o \
./rabbitmqc_lib/amqp_mem.o \
./rabbitmqc_lib/amqp_openssl.o \
./rabbitmqc_lib/amqp_openssl_bio.o \
./rabbitmqc_lib/amqp_openssl_hostname_validation.o \
./rabbitmqc_lib/amqp_socket.o \
./rabbitmqc_lib/amqp_table.o \
./rabbitmqc_lib/amqp_tcp_socket.o \
./rabbitmqc_lib/amqp_time.o \
./rabbitmqc_lib/amqp_url.o \
./rabbitmqc_lib/utils.o 

C_DEPS += \
./rabbitmqc_lib/amqp_api.d \
./rabbitmqc_lib/amqp_connection.d \
./rabbitmqc_lib/amqp_consumer.d \
./rabbitmqc_lib/amqp_framing.d \
./rabbitmqc_lib/amqp_hostcheck.d \
./rabbitmqc_lib/amqp_mem.d \
./rabbitmqc_lib/amqp_openssl.d \
./rabbitmqc_lib/amqp_openssl_bio.d \
./rabbitmqc_lib/amqp_openssl_hostname_validation.d \
./rabbitmqc_lib/amqp_socket.d \
./rabbitmqc_lib/amqp_table.d \
./rabbitmqc_lib/amqp_tcp_socket.d \
./rabbitmqc_lib/amqp_time.d \
./rabbitmqc_lib/amqp_url.d \
./rabbitmqc_lib/utils.d 


# Each subdirectory must supply rules for building sources it contributes
rabbitmqc_lib/%.o: ../rabbitmqc_lib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"/home/anhpt26/eclipse-workspace/test_sendstring_client/rabbitmqc_lib" -I"/home/anhpt26/eclipse-workspace/test_sendstring_client/openssl_lib/include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


