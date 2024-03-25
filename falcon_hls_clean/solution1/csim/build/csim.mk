# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
# Tool Version Limit: 2022.04
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../hls_source/tb.c ../../../../hls_source/vrfy.c ../../../../hls_source/sign.c ../../../../hls_source/shake.c ../../../../hls_source/rng.c ../../../../hls_source/my_ntt.c ../../../../hls_source/my_intt.c ../../../../hls_source/keygen.c ../../../../hls_source/fpr.c ../../../../hls_source/fft.c ../../../../hls_source/common.c ../../../../hls_source/codec.c

override TARGET := csim.exe

AUTOPILOT_ROOT := /tools/Xilinx/Vitis_HLS/2022.1
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /tools/Xilinx/Vitis_HLS/2022.1/tps/lnx64/gcc-8.3.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_TOOL}/clang-3.9/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -I "/usr/include/x86_64-linux-gnu"
IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E2__
IFLAG += -Wno-unknown-pragmas 
IFLAG += -g
DFLAG += -DAUTOCC
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



AUTOCC := apcc  

$(ObjDir)/tb.o: ../../../../hls_source/tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../hls_source/tb.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/tb.d

$(ObjDir)/vrfy.o: ../../../../hls_source/vrfy.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../hls_source/vrfy.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/vrfy.d

$(ObjDir)/sign.o: ../../../../hls_source/sign.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../hls_source/sign.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/sign.d

$(ObjDir)/shake.o: ../../../../hls_source/shake.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../hls_source/shake.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/shake.d

$(ObjDir)/rng.o: ../../../../hls_source/rng.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../hls_source/rng.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/rng.d

$(ObjDir)/my_ntt.o: ../../../../hls_source/my_ntt.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../hls_source/my_ntt.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/my_ntt.d

$(ObjDir)/my_intt.o: ../../../../hls_source/my_intt.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../hls_source/my_intt.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/my_intt.d

$(ObjDir)/keygen.o: ../../../../hls_source/keygen.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../hls_source/keygen.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/keygen.d

$(ObjDir)/fpr.o: ../../../../hls_source/fpr.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../hls_source/fpr.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fpr.d

$(ObjDir)/fft.o: ../../../../hls_source/fft.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../hls_source/fft.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fft.d

$(ObjDir)/common.o: ../../../../hls_source/common.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../hls_source/common.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/common.d

$(ObjDir)/codec.o: ../../../../hls_source/codec.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../hls_source/codec.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/codec.d
