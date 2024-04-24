// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xifft.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XIfft_CfgInitialize(XIfft *InstancePtr, XIfft_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XIfft_Start(XIfft *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ReadReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XIfft_WriteReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XIfft_IsDone(XIfft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ReadReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XIfft_IsIdle(XIfft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ReadReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XIfft_IsReady(XIfft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ReadReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XIfft_EnableAutoRestart(XIfft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_WriteReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XIfft_DisableAutoRestart(XIfft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_WriteReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_AP_CTRL, 0);
}

void XIfft_Set_f(XIfft *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_WriteReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_F_DATA, (u32)(Data));
    XIfft_WriteReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_F_DATA + 4, (u32)(Data >> 32));
}

u64 XIfft_Get_f(XIfft *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ReadReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_F_DATA);
    Data += (u64)XIfft_ReadReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_F_DATA + 4) << 32;
    return Data;
}

void XIfft_Set_logn(XIfft *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_WriteReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_LOGN_DATA, Data);
}

u32 XIfft_Get_logn(XIfft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIfft_ReadReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_LOGN_DATA);
    return Data;
}

void XIfft_InterruptGlobalEnable(XIfft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_WriteReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_GIE, 1);
}

void XIfft_InterruptGlobalDisable(XIfft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIfft_WriteReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_GIE, 0);
}

void XIfft_InterruptEnable(XIfft *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XIfft_ReadReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_IER);
    XIfft_WriteReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_IER, Register | Mask);
}

void XIfft_InterruptDisable(XIfft *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XIfft_ReadReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_IER);
    XIfft_WriteReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XIfft_InterruptClear(XIfft *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XIfft_WriteReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_ISR, Mask);
}

u32 XIfft_InterruptGetEnabled(XIfft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XIfft_ReadReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_IER);
}

u32 XIfft_InterruptGetStatus(XIfft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XIfft_ReadReg(InstancePtr->Control_BaseAddress, XIFFT_CONTROL_ADDR_ISR);
}

