// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xntt.h"

extern XNtt_Config XNtt_ConfigTable[];

XNtt_Config *XNtt_LookupConfig(u16 DeviceId) {
	XNtt_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XNTT_NUM_INSTANCES; Index++) {
		if (XNtt_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XNtt_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNtt_Initialize(XNtt *InstancePtr, u16 DeviceId) {
	XNtt_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNtt_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNtt_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

