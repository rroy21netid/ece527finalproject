################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Vivado/Projects/HLS/accelerator_hls/accelerator.cpp 

C_SRCS += \
../DWT_Accel.c \
D:/Vivado/Projects/HLS/Baseline_accelerator/accelerator_b.c 

OBJS += \
./source/DWT_Accel.o \
./source/accelerator.o \
./source/accelerator_b.o 

CPP_DEPS += \
./source/accelerator.d 

C_DEPS += \
./source/DWT_Accel.d \
./source/accelerator_b.d 


# Each subdirectory must supply rules for building sources it contributes
source/DWT_Accel.o: D:/Vivado/Projects/DWT/DWT_Accel.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -ID:/Vivado/Projects -ID:/Vivado/Vivado/2019.1/include/ap_sysc -ID:/Vivado/Vivado/2019.1/win64/tools/systemc/include -ID:/Vivado/Vivado/2019.1/include -ID:/Vivado/Vivado/2019.1/include/etc -ID:/Vivado/Vivado/2019.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/accelerator.o: D:/Vivado/Projects/HLS/accelerator_hls/accelerator.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/Vivado/Projects -ID:/Vivado/Vivado/2019.1/include/ap_sysc -ID:/Vivado/Vivado/2019.1/win64/tools/systemc/include -ID:/Vivado/Vivado/2019.1/include -ID:/Vivado/Vivado/2019.1/include/etc -ID:/Vivado/Vivado/2019.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/accelerator_b.o: D:/Vivado/Projects/HLS/Baseline_accelerator/accelerator_b.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -ID:/Vivado/Projects -ID:/Vivado/Vivado/2019.1/include/ap_sysc -ID:/Vivado/Vivado/2019.1/win64/tools/systemc/include -ID:/Vivado/Vivado/2019.1/include -ID:/Vivado/Vivado/2019.1/include/etc -ID:/Vivado/Vivado/2019.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


