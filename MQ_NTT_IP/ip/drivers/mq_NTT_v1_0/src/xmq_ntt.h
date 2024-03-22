// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMQ_NTT_H
#define XMQ_NTT_H

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
#include "xmq_ntt_hw.h"

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
} XMq_ntt_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMq_ntt;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMq_ntt_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMq_ntt_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMq_ntt_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMq_ntt_ReadReg(BaseAddress, RegOffset) \
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
int XMq_ntt_Initialize(XMq_ntt *InstancePtr, u16 DeviceId);
XMq_ntt_Config* XMq_ntt_LookupConfig(u16 DeviceId);
int XMq_ntt_CfgInitialize(XMq_ntt *InstancePtr, XMq_ntt_Config *ConfigPtr);
#else
int XMq_ntt_Initialize(XMq_ntt *InstancePtr, const char* InstanceName);
int XMq_ntt_Release(XMq_ntt *InstancePtr);
#endif

void XMq_ntt_Start(XMq_ntt *InstancePtr);
u32 XMq_ntt_IsDone(XMq_ntt *InstancePtr);
u32 XMq_ntt_IsIdle(XMq_ntt *InstancePtr);
u32 XMq_ntt_IsReady(XMq_ntt *InstancePtr);
void XMq_ntt_EnableAutoRestart(XMq_ntt *InstancePtr);
void XMq_ntt_DisableAutoRestart(XMq_ntt *InstancePtr);

void XMq_ntt_Set_a(XMq_ntt *InstancePtr, u64 Data);
u64 XMq_ntt_Get_a(XMq_ntt *InstancePtr);
void XMq_ntt_Set_logn(XMq_ntt *InstancePtr, u32 Data);
u32 XMq_ntt_Get_logn(XMq_ntt *InstancePtr);

void XMq_ntt_InterruptGlobalEnable(XMq_ntt *InstancePtr);
void XMq_ntt_InterruptGlobalDisable(XMq_ntt *InstancePtr);
void XMq_ntt_InterruptEnable(XMq_ntt *InstancePtr, u32 Mask);
void XMq_ntt_InterruptDisable(XMq_ntt *InstancePtr, u32 Mask);
void XMq_ntt_InterruptClear(XMq_ntt *InstancePtr, u32 Mask);
u32 XMq_ntt_InterruptGetEnabled(XMq_ntt *InstancePtr);
u32 XMq_ntt_InterruptGetStatus(XMq_ntt *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
