// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcompute_public.h"

extern XCompute_public_Config XCompute_public_ConfigTable[];

XCompute_public_Config *XCompute_public_LookupConfig(u16 DeviceId) {
	XCompute_public_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCOMPUTE_PUBLIC_NUM_INSTANCES; Index++) {
		if (XCompute_public_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCompute_public_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCompute_public_Initialize(XCompute_public *InstancePtr, u16 DeviceId) {
	XCompute_public_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCompute_public_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCompute_public_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

