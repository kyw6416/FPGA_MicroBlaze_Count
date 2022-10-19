################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hw/Button/Button.c 

OBJS += \
./src/hw/Button/Button.o 

C_DEPS += \
./src/hw/Button/Button.d 


# Each subdirectory must supply rules for building sources it contributes
src/hw/Button/%.o: ../src/hw/Button/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -ID:/FPGA/MicroBlaze_Count/MicroBlaze_Count.vitis/design_count_wrapper/export/design_count_wrapper/sw/design_count_wrapper/domain_microblaze_0/bspinclude/include -mlittle-endian -mcpu=v11.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


