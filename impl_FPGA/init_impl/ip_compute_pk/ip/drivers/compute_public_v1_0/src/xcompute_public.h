// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCOMPUTE_PUBLIC_H
#define XCOMPUTE_PUBLIC_H

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
#include "xcompute_public_hw.h"

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
} XCompute_public_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCompute_public;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCompute_public_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCompute_public_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCompute_public_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCompute_public_ReadReg(BaseAddress, RegOffset) \
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
int XCompute_public_Initialize(XCompute_public *InstancePtr, u16 DeviceId);
XCompute_public_Config* XCompute_public_LookupConfig(u16 DeviceId);
int XCompute_public_CfgInitialize(XCompute_public *InstancePtr, XCompute_public_Config *ConfigPtr);
#else
int XCompute_public_Initialize(XCompute_public *InstancePtr, const char* InstanceName);
int XCompute_public_Release(XCompute_public *InstancePtr);
#endif

void XCompute_public_Start(XCompute_public *InstancePtr);
u32 XCompute_public_IsDone(XCompute_public *InstancePtr);
u32 XCompute_public_IsIdle(XCompute_public *InstancePtr);
u32 XCompute_public_IsReady(XCompute_public *InstancePtr);
void XCompute_public_EnableAutoRestart(XCompute_public *InstancePtr);
void XCompute_public_DisableAutoRestart(XCompute_public *InstancePtr);
u32 XCompute_public_Get_return(XCompute_public *InstancePtr);

void XCompute_public_Set_h(XCompute_public *InstancePtr, u64 Data);
u64 XCompute_public_Get_h(XCompute_public *InstancePtr);
void XCompute_public_Set_f(XCompute_public *InstancePtr, u64 Data);
u64 XCompute_public_Get_f(XCompute_public *InstancePtr);
void XCompute_public_Set_g(XCompute_public *InstancePtr, u64 Data);
u64 XCompute_public_Get_g(XCompute_public *InstancePtr);
void XCompute_public_Set_logn(XCompute_public *InstancePtr, u32 Data);
u32 XCompute_public_Get_logn(XCompute_public *InstancePtr);
void XCompute_public_Set_tmp(XCompute_public *InstancePtr, u64 Data);
u64 XCompute_public_Get_tmp(XCompute_public *InstancePtr);

void XCompute_public_InterruptGlobalEnable(XCompute_public *InstancePtr);
void XCompute_public_InterruptGlobalDisable(XCompute_public *InstancePtr);
void XCompute_public_InterruptEnable(XCompute_public *InstancePtr, u32 Mask);
void XCompute_public_InterruptDisable(XCompute_public *InstancePtr, u32 Mask);
void XCompute_public_InterruptClear(XCompute_public *InstancePtr, u32 Mask);
u32 XCompute_public_InterruptGetEnabled(XCompute_public *InstancePtr);
u32 XCompute_public_InterruptGetStatus(XCompute_public *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
