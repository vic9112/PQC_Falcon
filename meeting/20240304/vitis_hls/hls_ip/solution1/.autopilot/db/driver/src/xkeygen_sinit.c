// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xkeygen.h"

extern XKeygen_Config XKeygen_ConfigTable[];

XKeygen_Config *XKeygen_LookupConfig(u16 DeviceId) {
	XKeygen_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKEYGEN_NUM_INSTANCES; Index++) {
		if (XKeygen_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKeygen_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKeygen_Initialize(XKeygen *InstancePtr, u16 DeviceId) {
	XKeygen_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKeygen_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKeygen_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

