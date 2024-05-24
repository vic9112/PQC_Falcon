// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xifft.h"

extern XIfft_Config XIfft_ConfigTable[];

XIfft_Config *XIfft_LookupConfig(u16 DeviceId) {
	XIfft_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XIFFT_NUM_INSTANCES; Index++) {
		if (XIfft_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XIfft_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XIfft_Initialize(XIfft *InstancePtr, u16 DeviceId) {
	XIfft_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XIfft_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XIfft_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

