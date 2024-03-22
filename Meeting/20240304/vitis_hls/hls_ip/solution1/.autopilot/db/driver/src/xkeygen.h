// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XKEYGEN_H
#define XKEYGEN_H

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
#include "xkeygen_hw.h"

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
} XKeygen_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XKeygen;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKeygen_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKeygen_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKeygen_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKeygen_ReadReg(BaseAddress, RegOffset) \
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
int XKeygen_Initialize(XKeygen *InstancePtr, u16 DeviceId);
XKeygen_Config* XKeygen_LookupConfig(u16 DeviceId);
int XKeygen_CfgInitialize(XKeygen *InstancePtr, XKeygen_Config *ConfigPtr);
#else
int XKeygen_Initialize(XKeygen *InstancePtr, const char* InstanceName);
int XKeygen_Release(XKeygen *InstancePtr);
#endif

void XKeygen_Start(XKeygen *InstancePtr);
u32 XKeygen_IsDone(XKeygen *InstancePtr);
u32 XKeygen_IsIdle(XKeygen *InstancePtr);
u32 XKeygen_IsReady(XKeygen *InstancePtr);
void XKeygen_EnableAutoRestart(XKeygen *InstancePtr);
void XKeygen_DisableAutoRestart(XKeygen *InstancePtr);

void XKeygen_Set_f_out(XKeygen *InstancePtr, u64 Data);
u64 XKeygen_Get_f_out(XKeygen *InstancePtr);
void XKeygen_Set_g_out(XKeygen *InstancePtr, u64 Data);
u64 XKeygen_Get_g_out(XKeygen *InstancePtr);
void XKeygen_Set_F_upper_out(XKeygen *InstancePtr, u64 Data);
u64 XKeygen_Get_F_upper_out(XKeygen *InstancePtr);
void XKeygen_Set_G_upper_out(XKeygen *InstancePtr, u64 Data);
u64 XKeygen_Get_G_upper_out(XKeygen *InstancePtr);
void XKeygen_Set_h_out(XKeygen *InstancePtr, u64 Data);
u64 XKeygen_Get_h_out(XKeygen *InstancePtr);
void XKeygen_Set_seed(XKeygen *InstancePtr, u64 Data);
u64 XKeygen_Get_seed(XKeygen *InstancePtr);

void XKeygen_InterruptGlobalEnable(XKeygen *InstancePtr);
void XKeygen_InterruptGlobalDisable(XKeygen *InstancePtr);
void XKeygen_InterruptEnable(XKeygen *InstancePtr, u32 Mask);
void XKeygen_InterruptDisable(XKeygen *InstancePtr, u32 Mask);
void XKeygen_InterruptClear(XKeygen *InstancePtr, u32 Mask);
u32 XKeygen_InterruptGetEnabled(XKeygen *InstancePtr);
u32 XKeygen_InterruptGetStatus(XKeygen *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
