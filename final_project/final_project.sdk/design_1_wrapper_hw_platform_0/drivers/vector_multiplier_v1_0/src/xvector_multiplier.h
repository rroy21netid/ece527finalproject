// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XVECTOR_MULTIPLIER_H
#define XVECTOR_MULTIPLIER_H

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
#include "xvector_multiplier_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctl_BaseAddress;
} XVector_multiplier_Config;
#endif

typedef struct {
    u32 Ctl_BaseAddress;
    u32 IsReady;
} XVector_multiplier;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XVector_multiplier_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XVector_multiplier_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XVector_multiplier_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XVector_multiplier_ReadReg(BaseAddress, RegOffset) \
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
int XVector_multiplier_Initialize(XVector_multiplier *InstancePtr, u16 DeviceId);
XVector_multiplier_Config* XVector_multiplier_LookupConfig(u16 DeviceId);
int XVector_multiplier_CfgInitialize(XVector_multiplier *InstancePtr, XVector_multiplier_Config *ConfigPtr);
#else
int XVector_multiplier_Initialize(XVector_multiplier *InstancePtr, const char* InstanceName);
int XVector_multiplier_Release(XVector_multiplier *InstancePtr);
#endif

void XVector_multiplier_Start(XVector_multiplier *InstancePtr);
u32 XVector_multiplier_IsDone(XVector_multiplier *InstancePtr);
u32 XVector_multiplier_IsIdle(XVector_multiplier *InstancePtr);
u32 XVector_multiplier_IsReady(XVector_multiplier *InstancePtr);
void XVector_multiplier_EnableAutoRestart(XVector_multiplier *InstancePtr);
void XVector_multiplier_DisableAutoRestart(XVector_multiplier *InstancePtr);
u32 XVector_multiplier_Get_return(XVector_multiplier *InstancePtr);

void XVector_multiplier_Set_a(XVector_multiplier *InstancePtr, u32 Data);
u32 XVector_multiplier_Get_a(XVector_multiplier *InstancePtr);
void XVector_multiplier_Set_b(XVector_multiplier *InstancePtr, u32 Data);
u32 XVector_multiplier_Get_b(XVector_multiplier *InstancePtr);
void XVector_multiplier_Set_c(XVector_multiplier *InstancePtr, u32 Data);
u32 XVector_multiplier_Get_c(XVector_multiplier *InstancePtr);

void XVector_multiplier_InterruptGlobalEnable(XVector_multiplier *InstancePtr);
void XVector_multiplier_InterruptGlobalDisable(XVector_multiplier *InstancePtr);
void XVector_multiplier_InterruptEnable(XVector_multiplier *InstancePtr, u32 Mask);
void XVector_multiplier_InterruptDisable(XVector_multiplier *InstancePtr, u32 Mask);
void XVector_multiplier_InterruptClear(XVector_multiplier *InstancePtr, u32 Mask);
u32 XVector_multiplier_InterruptGetEnabled(XVector_multiplier *InstancePtr);
u32 XVector_multiplier_InterruptGetStatus(XVector_multiplier *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
