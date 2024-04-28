// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmq_ntt.h"

extern XMq_ntt_Config XMq_ntt_ConfigTable[];

XMq_ntt_Config *XMq_ntt_LookupConfig(u16 DeviceId) {
	XMq_ntt_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMQ_NTT_NUM_INSTANCES; Index++) {
		if (XMq_ntt_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMq_ntt_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMq_ntt_Initialize(XMq_ntt *InstancePtr, u16 DeviceId) {
	XMq_ntt_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMq_ntt_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMq_ntt_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

