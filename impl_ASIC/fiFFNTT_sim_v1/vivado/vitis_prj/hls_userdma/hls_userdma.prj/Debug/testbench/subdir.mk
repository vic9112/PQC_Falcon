################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/ubuntu/fsic_pqc/vivado/vitis_prj/hls_userdma/userdma_test.cpp 

OBJS += \
./testbench/userdma_test.o 

CPP_DEPS += \
./testbench/userdma_test.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/userdma_test.o: /home/ubuntu/fsic_pqc/vivado/vitis_prj/hls_userdma/userdma_test.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/tools/Xilinx/Vitis_HLS/2022.1/include/ap_sysc -I/tools/Xilinx/Vitis_HLS/2022.1/include/etc -I/home/ubuntu/fsic_pqc/vivado/vitis_prj/hls_userdma -I/tools/Xilinx/Vitis_HLS/2022.1/include -I/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/auto_cc/include -I/tools/Xilinx/Vitis_HLS/2022.1/lnx64/tools/systemc/include -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/userdma_test.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


