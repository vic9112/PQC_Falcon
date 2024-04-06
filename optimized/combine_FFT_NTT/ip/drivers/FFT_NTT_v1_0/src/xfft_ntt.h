// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFFT_NTT_H
#define XFFT_NTT_H

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
#include "xfft_ntt_hw.h"

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
} XFft_ntt_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XFft_ntt;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFft_ntt_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFft_ntt_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFft_ntt_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFft_ntt_ReadReg(BaseAddress, RegOffset) \
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
int XFft_ntt_Initialize(XFft_ntt *InstancePtr, u16 DeviceId);
XFft_ntt_Config* XFft_ntt_LookupConfig(u16 DeviceId);
int XFft_ntt_CfgInitialize(XFft_ntt *InstancePtr, XFft_ntt_Config *ConfigPtr);
#else
int XFft_ntt_Initialize(XFft_ntt *InstancePtr, const char* InstanceName);
int XFft_ntt_Release(XFft_ntt *InstancePtr);
#endif

void XFft_ntt_Start(XFft_ntt *InstancePtr);
u32 XFft_ntt_IsDone(XFft_ntt *InstancePtr);
u32 XFft_ntt_IsIdle(XFft_ntt *InstancePtr);
u32 XFft_ntt_IsReady(XFft_ntt *InstancePtr);
void XFft_ntt_EnableAutoRestart(XFft_ntt *InstancePtr);
void XFft_ntt_DisableAutoRestart(XFft_ntt *InstancePtr);

void XFft_ntt_Set_in_r(XFft_ntt *InstancePtr, u64 Data);
u64 XFft_ntt_Get_in_r(XFft_ntt *InstancePtr);
void XFft_ntt_Set_mode(XFft_ntt *InstancePtr, u32 Data);
u32 XFft_ntt_Get_mode(XFft_ntt *InstancePtr);

void XFft_ntt_InterruptGlobalEnable(XFft_ntt *InstancePtr);
void XFft_ntt_InterruptGlobalDisable(XFft_ntt *InstancePtr);
void XFft_ntt_InterruptEnable(XFft_ntt *InstancePtr, u32 Mask);
void XFft_ntt_InterruptDisable(XFft_ntt *InstancePtr, u32 Mask);
void XFft_ntt_InterruptClear(XFft_ntt *InstancePtr, u32 Mask);
u32 XFft_ntt_InterruptGetEnabled(XFft_ntt *InstancePtr);
u32 XFft_ntt_InterruptGetStatus(XFft_ntt *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
