// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmq_ntt.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMq_ntt_CfgInitialize(XMq_ntt *InstancePtr, XMq_ntt_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMq_ntt_Start(XMq_ntt *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMq_ntt_ReadReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMq_ntt_WriteReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMq_ntt_IsDone(XMq_ntt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMq_ntt_ReadReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMq_ntt_IsIdle(XMq_ntt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMq_ntt_ReadReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMq_ntt_IsReady(XMq_ntt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMq_ntt_ReadReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMq_ntt_EnableAutoRestart(XMq_ntt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMq_ntt_WriteReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMq_ntt_DisableAutoRestart(XMq_ntt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMq_ntt_WriteReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_AP_CTRL, 0);
}

void XMq_ntt_Set_a(XMq_ntt *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMq_ntt_WriteReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_A_DATA, (u32)(Data));
    XMq_ntt_WriteReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XMq_ntt_Get_a(XMq_ntt *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMq_ntt_ReadReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_A_DATA);
    Data += (u64)XMq_ntt_ReadReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XMq_ntt_Set_logn(XMq_ntt *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMq_ntt_WriteReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_LOGN_DATA, Data);
}

u32 XMq_ntt_Get_logn(XMq_ntt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMq_ntt_ReadReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_LOGN_DATA);
    return Data;
}

void XMq_ntt_InterruptGlobalEnable(XMq_ntt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMq_ntt_WriteReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_GIE, 1);
}

void XMq_ntt_InterruptGlobalDisable(XMq_ntt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMq_ntt_WriteReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_GIE, 0);
}

void XMq_ntt_InterruptEnable(XMq_ntt *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMq_ntt_ReadReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_IER);
    XMq_ntt_WriteReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_IER, Register | Mask);
}

void XMq_ntt_InterruptDisable(XMq_ntt *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMq_ntt_ReadReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_IER);
    XMq_ntt_WriteReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMq_ntt_InterruptClear(XMq_ntt *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XMq_ntt_WriteReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_ISR, Mask);
}

u32 XMq_ntt_InterruptGetEnabled(XMq_ntt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMq_ntt_ReadReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_IER);
}

u32 XMq_ntt_InterruptGetStatus(XMq_ntt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XMq_ntt_ReadReg(InstancePtr->Control_BaseAddress, XMQ_NTT_CONTROL_ADDR_ISR);
}

