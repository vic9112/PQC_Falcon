// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmq_intt.h"

extern XMq_intt_Config XMq_intt_ConfigTable[];

XMq_intt_Config *XMq_intt_LookupConfig(u16 DeviceId) {
	XMq_intt_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMQ_INTT_NUM_INSTANCES; Index++) {
		if (XMq_intt_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMq_intt_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMq_intt_Initialize(XMq_intt *InstancePtr, u16 DeviceId) {
	XMq_intt_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMq_intt_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMq_intt_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

