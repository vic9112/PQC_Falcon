// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xntt.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XNtt_CfgInitialize(XNtt *InstancePtr, XNtt_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XNtt_Start(XNtt *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_ReadReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XNtt_WriteReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XNtt_IsDone(XNtt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_ReadReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XNtt_IsIdle(XNtt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_ReadReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XNtt_IsReady(XNtt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_ReadReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XNtt_EnableAutoRestart(XNtt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_WriteReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XNtt_DisableAutoRestart(XNtt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_WriteReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_AP_CTRL, 0);
}

void XNtt_Set_a(XNtt *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_WriteReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_A_DATA, (u32)(Data));
    XNtt_WriteReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XNtt_Get_a(XNtt *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_ReadReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_A_DATA);
    Data += (u64)XNtt_ReadReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XNtt_InterruptGlobalEnable(XNtt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_WriteReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_GIE, 1);
}

void XNtt_InterruptGlobalDisable(XNtt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_WriteReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_GIE, 0);
}

void XNtt_InterruptEnable(XNtt *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNtt_ReadReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_IER);
    XNtt_WriteReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_IER, Register | Mask);
}

void XNtt_InterruptDisable(XNtt *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNtt_ReadReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_IER);
    XNtt_WriteReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XNtt_InterruptClear(XNtt *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XNtt_WriteReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_ISR, Mask);
}

u32 XNtt_InterruptGetEnabled(XNtt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNtt_ReadReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_IER);
}

u32 XNtt_InterruptGetStatus(XNtt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XNtt_ReadReg(InstancePtr->Control_BaseAddress, XNTT_CONTROL_ADDR_ISR);
}

