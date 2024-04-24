// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xkeygen.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKeygen_CfgInitialize(XKeygen *InstancePtr, XKeygen_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKeygen_Start(XKeygen *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKeygen_IsDone(XKeygen *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKeygen_IsIdle(XKeygen *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKeygen_IsReady(XKeygen *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKeygen_EnableAutoRestart(XKeygen *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XKeygen_DisableAutoRestart(XKeygen *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_AP_CTRL, 0);
}

void XKeygen_Set_f_out(XKeygen *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_F_OUT_DATA, (u32)(Data));
    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_F_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XKeygen_Get_f_out(XKeygen *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_F_OUT_DATA);
    Data += (u64)XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_F_OUT_DATA + 4) << 32;
    return Data;
}

void XKeygen_Set_g_out(XKeygen *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_G_OUT_DATA, (u32)(Data));
    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_G_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XKeygen_Get_g_out(XKeygen *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_G_OUT_DATA);
    Data += (u64)XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_G_OUT_DATA + 4) << 32;
    return Data;
}

void XKeygen_Set_F_upper_out(XKeygen *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_F_UPPER_OUT_DATA, (u32)(Data));
    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_F_UPPER_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XKeygen_Get_F_upper_out(XKeygen *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_F_UPPER_OUT_DATA);
    Data += (u64)XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_F_UPPER_OUT_DATA + 4) << 32;
    return Data;
}

void XKeygen_Set_G_upper_out(XKeygen *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_G_UPPER_OUT_DATA, (u32)(Data));
    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_G_UPPER_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XKeygen_Get_G_upper_out(XKeygen *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_G_UPPER_OUT_DATA);
    Data += (u64)XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_G_UPPER_OUT_DATA + 4) << 32;
    return Data;
}

void XKeygen_Set_h_out(XKeygen *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_H_OUT_DATA, (u32)(Data));
    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_H_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XKeygen_Get_h_out(XKeygen *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_H_OUT_DATA);
    Data += (u64)XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_H_OUT_DATA + 4) << 32;
    return Data;
}

void XKeygen_Set_seed(XKeygen *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_SEED_DATA, (u32)(Data));
    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_SEED_DATA + 4, (u32)(Data >> 32));
}

u64 XKeygen_Get_seed(XKeygen *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_SEED_DATA);
    Data += (u64)XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_SEED_DATA + 4) << 32;
    return Data;
}

void XKeygen_InterruptGlobalEnable(XKeygen *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_GIE, 1);
}

void XKeygen_InterruptGlobalDisable(XKeygen *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_GIE, 0);
}

void XKeygen_InterruptEnable(XKeygen *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_IER);
    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_IER, Register | Mask);
}

void XKeygen_InterruptDisable(XKeygen *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_IER);
    XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_IER, Register & (~Mask));
}

void XKeygen_InterruptClear(XKeygen *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XKeygen_WriteReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_ISR, Mask);
}

u32 XKeygen_InterruptGetEnabled(XKeygen *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_IER);
}

u32 XKeygen_InterruptGetStatus(XKeygen *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XKeygen_ReadReg(InstancePtr->Control_BaseAddress, XKEYGEN_CONTROL_ADDR_ISR);
}

