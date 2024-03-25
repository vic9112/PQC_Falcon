// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMQ_INTT_H
#define XMQ_INTT_H

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
#include "xmq_intt_hw.h"

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
} XMq_intt_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMq_intt;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMq_intt_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMq_intt_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMq_intt_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMq_intt_ReadReg(BaseAddress, RegOffset) \
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
int XMq_intt_Initialize(XMq_intt *InstancePtr, u16 DeviceId);
XMq_intt_Config* XMq_intt_LookupConfig(u16 DeviceId);
int XMq_intt_CfgInitialize(XMq_intt *InstancePtr, XMq_intt_Config *ConfigPtr);
#else
int XMq_intt_Initialize(XMq_intt *InstancePtr, const char* InstanceName);
int XMq_intt_Release(XMq_intt *InstancePtr);
#endif

void XMq_intt_Start(XMq_intt *InstancePtr);
u32 XMq_intt_IsDone(XMq_intt *InstancePtr);
u32 XMq_intt_IsIdle(XMq_intt *InstancePtr);
u32 XMq_intt_IsReady(XMq_intt *InstancePtr);
void XMq_intt_EnableAutoRestart(XMq_intt *InstancePtr);
void XMq_intt_DisableAutoRestart(XMq_intt *InstancePtr);

void XMq_intt_Set_a(XMq_intt *InstancePtr, u64 Data);
u64 XMq_intt_Get_a(XMq_intt *InstancePtr);
void XMq_intt_Set_logn(XMq_intt *InstancePtr, u32 Data);
u32 XMq_intt_Get_logn(XMq_intt *InstancePtr);

void XMq_intt_InterruptGlobalEnable(XMq_intt *InstancePtr);
void XMq_intt_InterruptGlobalDisable(XMq_intt *InstancePtr);
void XMq_intt_InterruptEnable(XMq_intt *InstancePtr, u32 Mask);
void XMq_intt_InterruptDisable(XMq_intt *InstancePtr, u32 Mask);
void XMq_intt_InterruptClear(XMq_intt *InstancePtr, u32 Mask);
u32 XMq_intt_InterruptGetEnabled(XMq_intt *InstancePtr);
u32 XMq_intt_InterruptGetStatus(XMq_intt *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
