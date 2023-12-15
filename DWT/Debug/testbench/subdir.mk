################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../DWT_Accel_TB.c 

OBJS += \
./testbench/DWT_Accel_TB.o 

C_DEPS += \
./testbench/DWT_Accel_TB.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/DWT_Accel_TB.o: D:/Vivado/Projects/DWT/DWT_Accel_TB.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -ID:/Vivado/Projects -ID:/Vivado/Vivado/2019.1/include/ap_sysc -ID:/Vivado/Vivado/2019.1/win64/tools/systemc/include -ID:/Vivado/Vivado/2019.1/include -ID:/Vivado/Vivado/2019.1/include/etc -ID:/Vivado/Vivado/2019.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


