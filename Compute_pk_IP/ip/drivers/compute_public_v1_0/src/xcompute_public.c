// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcompute_public.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCompute_public_CfgInitialize(XCompute_public *InstancePtr, XCompute_public_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCompute_public_Start(XCompute_public *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCompute_public_IsDone(XCompute_public *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCompute_public_IsIdle(XCompute_public *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCompute_public_IsReady(XCompute_public *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCompute_public_EnableAutoRestart(XCompute_public *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCompute_public_DisableAutoRestart(XCompute_public *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XCompute_public_Get_return(XCompute_public *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_AP_RETURN);
    return Data;
}
void XCompute_public_Set_h(XCompute_public *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_H_DATA, (u32)(Data));
    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_H_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_public_Get_h(XCompute_public *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_H_DATA);
    Data += (u64)XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_H_DATA + 4) << 32;
    return Data;
}

void XCompute_public_Set_f(XCompute_public *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_F_DATA, (u32)(Data));
    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_F_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_public_Get_f(XCompute_public *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_F_DATA);
    Data += (u64)XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_F_DATA + 4) << 32;
    return Data;
}

void XCompute_public_Set_g(XCompute_public *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_G_DATA, (u32)(Data));
    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_G_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_public_Get_g(XCompute_public *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_G_DATA);
    Data += (u64)XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_G_DATA + 4) << 32;
    return Data;
}

void XCompute_public_Set_logn(XCompute_public *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_LOGN_DATA, Data);
}

u32 XCompute_public_Get_logn(XCompute_public *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_LOGN_DATA);
    return Data;
}

void XCompute_public_Set_tmp(XCompute_public *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_TMP_DATA, (u32)(Data));
    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_TMP_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_public_Get_tmp(XCompute_public *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_TMP_DATA);
    Data += (u64)XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_TMP_DATA + 4) << 32;
    return Data;
}

void XCompute_public_InterruptGlobalEnable(XCompute_public *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_GIE, 1);
}

void XCompute_public_InterruptGlobalDisable(XCompute_public *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_GIE, 0);
}

void XCompute_public_InterruptEnable(XCompute_public *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_IER);
    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_IER, Register | Mask);
}

void XCompute_public_InterruptDisable(XCompute_public *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_IER);
    XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCompute_public_InterruptClear(XCompute_public *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XCompute_public_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_ISR, Mask);
}

u32 XCompute_public_InterruptGetEnabled(XCompute_public *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_IER);
}

u32 XCompute_public_InterruptGetStatus(XCompute_public *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XCompute_public_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_PUBLIC_CONTROL_ADDR_ISR);
}

