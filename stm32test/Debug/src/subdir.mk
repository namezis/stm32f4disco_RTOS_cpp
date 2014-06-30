################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/app.cpp \
../src/ledtask.cpp \
../src/main.cpp \
../src/tasks.cpp 

OBJS += \
./src/app.o \
./src/ledtask.o \
./src/main.o \
./src/tasks.o 

CPP_DEPS += \
./src/app.d \
./src/ledtask.d \
./src/main.d \
./src/tasks.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -DSTM32F429_439xx -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=160000000 -DDEBUG -I"../libs/misc/include" -I"../libs/freertos/include" -I"../include" -I"../libs/CMSIS/include" -I"../libs/StdPeriph/include" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


