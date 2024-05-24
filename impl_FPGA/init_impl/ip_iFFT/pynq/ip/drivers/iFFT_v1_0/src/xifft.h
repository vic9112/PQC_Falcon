// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XIFFT_H
#define XIFFT_H

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
#include "xifft_hw.h"

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
} XIfft_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XIfft;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XIfft_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XIfft_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XIfft_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XIfft_ReadReg(BaseAddress, RegOffset) \
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
int XIfft_Initialize(XIfft *InstancePtr, u16 DeviceId);
XIfft_Config* XIfft_LookupConfig(u16 DeviceId);
int XIfft_CfgInitialize(XIfft *InstancePtr, XIfft_Config *ConfigPtr);
#else
int XIfft_Initialize(XIfft *InstancePtr, const char* InstanceName);
int XIfft_Release(XIfft *InstancePtr);
#endif

void XIfft_Start(XIfft *InstancePtr);
u32 XIfft_IsDone(XIfft *InstancePtr);
u32 XIfft_IsIdle(XIfft *InstancePtr);
u32 XIfft_IsReady(XIfft *InstancePtr);
void XIfft_EnableAutoRestart(XIfft *InstancePtr);
void XIfft_DisableAutoRestart(XIfft *InstancePtr);

void XIfft_Set_f(XIfft *InstancePtr, u64 Data);
u64 XIfft_Get_f(XIfft *InstancePtr);
void XIfft_Set_logn(XIfft *InstancePtr, u32 Data);
u32 XIfft_Get_logn(XIfft *InstancePtr);

void XIfft_InterruptGlobalEnable(XIfft *InstancePtr);
void XIfft_InterruptGlobalDisable(XIfft *InstancePtr);
void XIfft_InterruptEnable(XIfft *InstancePtr, u32 Mask);
void XIfft_InterruptDisable(XIfft *InstancePtr, u32 Mask);
void XIfft_InterruptClear(XIfft *InstancePtr, u32 Mask);
u32 XIfft_InterruptGetEnabled(XIfft *InstancePtr);
u32 XIfft_InterruptGetStatus(XIfft *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
