// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFIFFNTT_H
#define XFIFFNTT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xfiffntt_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XFiffntt_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XFiffntt;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFiffntt_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFiffntt_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFiffntt_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFiffntt_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XFiffntt_Initialize(XFiffntt *InstancePtr, u16 DeviceId);
XFiffntt_Config* XFiffntt_LookupConfig(u16 DeviceId);
int XFiffntt_CfgInitialize(XFiffntt *InstancePtr, XFiffntt_Config *ConfigPtr);
#else
int XFiffntt_Initialize(XFiffntt *InstancePtr, const char* InstanceName);
int XFiffntt_Release(XFiffntt *InstancePtr);
#endif

void XFiffntt_Start(XFiffntt *InstancePtr);
u32 XFiffntt_IsDone(XFiffntt *InstancePtr);
u32 XFiffntt_IsIdle(XFiffntt *InstancePtr);
u32 XFiffntt_IsReady(XFiffntt *InstancePtr);
void XFiffntt_EnableAutoRestart(XFiffntt *InstancePtr);
void XFiffntt_DisableAutoRestart(XFiffntt *InstancePtr);

void XFiffntt_Set_in_r(XFiffntt *InstancePtr, u64 Data);
u64 XFiffntt_Get_in_r(XFiffntt *InstancePtr);
void XFiffntt_Set_mode(XFiffntt *InstancePtr, u32 Data);
u32 XFiffntt_Get_mode(XFiffntt *InstancePtr);
void XFiffntt_Set_inverse(XFiffntt *InstancePtr, u32 Data);
u32 XFiffntt_Get_inverse(XFiffntt *InstancePtr);

void XFiffntt_InterruptGlobalEnable(XFiffntt *InstancePtr);
void XFiffntt_InterruptGlobalDisable(XFiffntt *InstancePtr);
void XFiffntt_InterruptEnable(XFiffntt *InstancePtr, u32 Mask);
void XFiffntt_InterruptDisable(XFiffntt *InstancePtr, u32 Mask);
void XFiffntt_InterruptClear(XFiffntt *InstancePtr, u32 Mask);
u32 XFiffntt_InterruptGetEnabled(XFiffntt *InstancePtr);
u32 XFiffntt_InterruptGetStatus(XFiffntt *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
