// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfft_ntt.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFft_ntt_CfgInitialize(XFft_ntt *InstancePtr, XFft_ntt_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFft_ntt_Start(XFft_ntt *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ntt_ReadReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFft_ntt_WriteReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFft_ntt_IsDone(XFft_ntt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ntt_ReadReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFft_ntt_IsIdle(XFft_ntt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ntt_ReadReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFft_ntt_IsReady(XFft_ntt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ntt_ReadReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFft_ntt_EnableAutoRestart(XFft_ntt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_ntt_WriteReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFft_ntt_DisableAutoRestart(XFft_ntt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_ntt_WriteReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_AP_CTRL, 0);
}

void XFft_ntt_Set_in_r(XFft_ntt *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_ntt_WriteReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_IN_R_DATA, (u32)(Data));
    XFft_ntt_WriteReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_IN_R_DATA + 4, (u32)(Data >> 32));
}

u64 XFft_ntt_Get_in_r(XFft_ntt *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ntt_ReadReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_IN_R_DATA);
    Data += (u64)XFft_ntt_ReadReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_IN_R_DATA + 4) << 32;
    return Data;
}

void XFft_ntt_Set_mode(XFft_ntt *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_ntt_WriteReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_MODE_DATA, Data);
}

u32 XFft_ntt_Get_mode(XFft_ntt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ntt_ReadReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_MODE_DATA);
    return Data;
}

void XFft_ntt_InterruptGlobalEnable(XFft_ntt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_ntt_WriteReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_GIE, 1);
}

void XFft_ntt_InterruptGlobalDisable(XFft_ntt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_ntt_WriteReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_GIE, 0);
}

void XFft_ntt_InterruptEnable(XFft_ntt *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFft_ntt_ReadReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_IER);
    XFft_ntt_WriteReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_IER, Register | Mask);
}

void XFft_ntt_InterruptDisable(XFft_ntt *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFft_ntt_ReadReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_IER);
    XFft_ntt_WriteReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFft_ntt_InterruptClear(XFft_ntt *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XFft_ntt_WriteReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_ISR, Mask);
}

u32 XFft_ntt_InterruptGetEnabled(XFft_ntt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFft_ntt_ReadReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_IER);
}

u32 XFft_ntt_InterruptGetStatus(XFft_ntt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XFft_ntt_ReadReg(InstancePtr->Control_BaseAddress, XFFT_NTT_CONTROL_ADDR_ISR);
}

