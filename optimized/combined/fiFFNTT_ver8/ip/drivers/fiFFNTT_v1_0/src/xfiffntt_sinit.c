// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfiffntt.h"

extern XFiffntt_Config XFiffntt_ConfigTable[];

XFiffntt_Config *XFiffntt_LookupConfig(u16 DeviceId) {
	XFiffntt_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFIFFNTT_NUM_INSTANCES; Index++) {
		if (XFiffntt_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFiffntt_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFiffntt_Initialize(XFiffntt *InstancePtr, u16 DeviceId) {
	XFiffntt_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFiffntt_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFiffntt_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

