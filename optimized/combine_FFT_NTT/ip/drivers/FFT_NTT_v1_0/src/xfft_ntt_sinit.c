// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfft_ntt.h"

extern XFft_ntt_Config XFft_ntt_ConfigTable[];

XFft_ntt_Config *XFft_ntt_LookupConfig(u16 DeviceId) {
	XFft_ntt_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFFT_NTT_NUM_INSTANCES; Index++) {
		if (XFft_ntt_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFft_ntt_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFft_ntt_Initialize(XFft_ntt *InstancePtr, u16 DeviceId) {
	XFft_ntt_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFft_ntt_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFft_ntt_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

