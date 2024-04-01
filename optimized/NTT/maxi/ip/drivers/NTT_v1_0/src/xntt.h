// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XNTT_H
#define XNTT_H

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
#include "xntt_hw.h"

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
} XNtt_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XNtt;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XNtt_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XNtt_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XNtt_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XNtt_ReadReg(BaseAddress, RegOffset) \
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
int XNtt_Initialize(XNtt *InstancePtr, u16 DeviceId);
XNtt_Config* XNtt_LookupConfig(u16 DeviceId);
int XNtt_CfgInitialize(XNtt *InstancePtr, XNtt_Config *ConfigPtr);
#else
int XNtt_Initialize(XNtt *InstancePtr, const char* InstanceName);
int XNtt_Release(XNtt *InstancePtr);
#endif

void XNtt_Start(XNtt *InstancePtr);
u32 XNtt_IsDone(XNtt *InstancePtr);
u32 XNtt_IsIdle(XNtt *InstancePtr);
u32 XNtt_IsReady(XNtt *InstancePtr);
void XNtt_EnableAutoRestart(XNtt *InstancePtr);
void XNtt_DisableAutoRestart(XNtt *InstancePtr);

void XNtt_Set_a(XNtt *InstancePtr, u64 Data);
u64 XNtt_Get_a(XNtt *InstancePtr);

void XNtt_InterruptGlobalEnable(XNtt *InstancePtr);
void XNtt_InterruptGlobalDisable(XNtt *InstancePtr);
void XNtt_InterruptEnable(XNtt *InstancePtr, u32 Mask);
void XNtt_InterruptDisable(XNtt *InstancePtr, u32 Mask);
void XNtt_InterruptClear(XNtt *InstancePtr, u32 Mask);
u32 XNtt_InterruptGetEnabled(XNtt *InstancePtr);
u32 XNtt_InterruptGetStatus(XNtt *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
