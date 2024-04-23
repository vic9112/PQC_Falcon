// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfiffntt.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFiffntt_CfgInitialize(XFiffntt *InstancePtr, XFiffntt_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFiffntt_Start(XFiffntt *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFiffntt_ReadReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFiffntt_WriteReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFiffntt_IsDone(XFiffntt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFiffntt_ReadReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFiffntt_IsIdle(XFiffntt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFiffntt_ReadReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFiffntt_IsReady(XFiffntt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFiffntt_ReadReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFiffntt_EnableAutoRestart(XFiffntt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFiffntt_WriteReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFiffntt_DisableAutoRestart(XFiffntt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFiffntt_WriteReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_AP_CTRL, 0);
}

void XFiffntt_Set_in_r(XFiffntt *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFiffntt_WriteReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_IN_R_DATA, (u32)(Data));
    XFiffntt_WriteReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_IN_R_DATA + 4, (u32)(Data >> 32));
}

u64 XFiffntt_Get_in_r(XFiffntt *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFiffntt_ReadReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_IN_R_DATA);
    Data += (u64)XFiffntt_ReadReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_IN_R_DATA + 4) << 32;
    return Data;
}

void XFiffntt_Set_mode(XFiffntt *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFiffntt_WriteReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_MODE_DATA, Data);
}

u32 XFiffntt_Get_mode(XFiffntt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFiffntt_ReadReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_MODE_DATA);
    return Data;
}

void XFiffntt_Set_inverse(XFiffntt *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFiffntt_WriteReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_INVERSE_DATA, Data);
}

u32 XFiffntt_Get_inverse(XFiffntt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFiffntt_ReadReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_INVERSE_DATA);
    return Data;
}

void XFiffntt_InterruptGlobalEnable(XFiffntt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFiffntt_WriteReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_GIE, 1);
}

void XFiffntt_InterruptGlobalDisable(XFiffntt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFiffntt_WriteReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_GIE, 0);
}

void XFiffntt_InterruptEnable(XFiffntt *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFiffntt_ReadReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_IER);
    XFiffntt_WriteReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_IER, Register | Mask);
}

void XFiffntt_InterruptDisable(XFiffntt *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFiffntt_ReadReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_IER);
    XFiffntt_WriteReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFiffntt_InterruptClear(XFiffntt *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XFiffntt_WriteReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_ISR, Mask);
}

u32 XFiffntt_InterruptGetEnabled(XFiffntt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFiffntt_ReadReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_IER);
}

u32 XFiffntt_InterruptGetStatus(XFiffntt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XFiffntt_ReadReg(InstancePtr->Control_BaseAddress, XFIFFNTT_CONTROL_ADDR_ISR);
}

