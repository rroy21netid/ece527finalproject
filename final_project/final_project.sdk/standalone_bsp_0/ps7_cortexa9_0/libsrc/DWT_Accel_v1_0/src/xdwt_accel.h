// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDWT_ACCEL_H
#define XDWT_ACCEL_H

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
#include "xdwt_accel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctl_BaseAddress;
} XDwt_accel_Config;
#endif

typedef struct {
    u32 Ctl_BaseAddress;
    u32 IsReady;
} XDwt_accel;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDwt_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDwt_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDwt_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDwt_accel_ReadReg(BaseAddress, RegOffset) \
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
int XDwt_accel_Initialize(XDwt_accel *InstancePtr, u16 DeviceId);
XDwt_accel_Config* XDwt_accel_LookupConfig(u16 DeviceId);
int XDwt_accel_CfgInitialize(XDwt_accel *InstancePtr, XDwt_accel_Config *ConfigPtr);
#else
int XDwt_accel_Initialize(XDwt_accel *InstancePtr, const char* InstanceName);
int XDwt_accel_Release(XDwt_accel *InstancePtr);
#endif

void XDwt_accel_Start(XDwt_accel *InstancePtr);
u32 XDwt_accel_IsDone(XDwt_accel *InstancePtr);
u32 XDwt_accel_IsIdle(XDwt_accel *InstancePtr);
u32 XDwt_accel_IsReady(XDwt_accel *InstancePtr);
void XDwt_accel_EnableAutoRestart(XDwt_accel *InstancePtr);
void XDwt_accel_DisableAutoRestart(XDwt_accel *InstancePtr);

void XDwt_accel_Set_a(XDwt_accel *InstancePtr, u32 Data);
u32 XDwt_accel_Get_a(XDwt_accel *InstancePtr);
void XDwt_accel_Set_b(XDwt_accel *InstancePtr, u32 Data);
u32 XDwt_accel_Get_b(XDwt_accel *InstancePtr);
void XDwt_accel_Set_c(XDwt_accel *InstancePtr, u32 Data);
u32 XDwt_accel_Get_c(XDwt_accel *InstancePtr);

void XDwt_accel_InterruptGlobalEnable(XDwt_accel *InstancePtr);
void XDwt_accel_InterruptGlobalDisable(XDwt_accel *InstancePtr);
void XDwt_accel_InterruptEnable(XDwt_accel *InstancePtr, u32 Mask);
void XDwt_accel_InterruptDisable(XDwt_accel *InstancePtr, u32 Mask);
void XDwt_accel_InterruptClear(XDwt_accel *InstancePtr, u32 Mask);
u32 XDwt_accel_InterruptGetEnabled(XDwt_accel *InstancePtr);
u32 XDwt_accel_InterruptGetStatus(XDwt_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
