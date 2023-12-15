// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdwt_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDwt_accel_CfgInitialize(XDwt_accel *InstancePtr, XDwt_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctl_BaseAddress = ConfigPtr->Ctl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDwt_accel_Start(XDwt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDwt_accel_ReadReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_AP_CTRL) & 0x80;
    XDwt_accel_WriteReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDwt_accel_IsDone(XDwt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDwt_accel_ReadReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDwt_accel_IsIdle(XDwt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDwt_accel_ReadReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDwt_accel_IsReady(XDwt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDwt_accel_ReadReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDwt_accel_EnableAutoRestart(XDwt_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDwt_accel_WriteReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_AP_CTRL, 0x80);
}

void XDwt_accel_DisableAutoRestart(XDwt_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDwt_accel_WriteReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_AP_CTRL, 0);
}

void XDwt_accel_Set_a(XDwt_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDwt_accel_WriteReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_A_DATA, Data);
}

u32 XDwt_accel_Get_a(XDwt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDwt_accel_ReadReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_A_DATA);
    return Data;
}

void XDwt_accel_Set_b(XDwt_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDwt_accel_WriteReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_B_DATA, Data);
}

u32 XDwt_accel_Get_b(XDwt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDwt_accel_ReadReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_B_DATA);
    return Data;
}

void XDwt_accel_Set_c(XDwt_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDwt_accel_WriteReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_C_DATA, Data);
}

u32 XDwt_accel_Get_c(XDwt_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDwt_accel_ReadReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_C_DATA);
    return Data;
}

void XDwt_accel_InterruptGlobalEnable(XDwt_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDwt_accel_WriteReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_GIE, 1);
}

void XDwt_accel_InterruptGlobalDisable(XDwt_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDwt_accel_WriteReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_GIE, 0);
}

void XDwt_accel_InterruptEnable(XDwt_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDwt_accel_ReadReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_IER);
    XDwt_accel_WriteReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_IER, Register | Mask);
}

void XDwt_accel_InterruptDisable(XDwt_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDwt_accel_ReadReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_IER);
    XDwt_accel_WriteReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_IER, Register & (~Mask));
}

void XDwt_accel_InterruptClear(XDwt_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDwt_accel_WriteReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_ISR, Mask);
}

u32 XDwt_accel_InterruptGetEnabled(XDwt_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDwt_accel_ReadReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_IER);
}

u32 XDwt_accel_InterruptGetStatus(XDwt_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDwt_accel_ReadReg(InstancePtr->Ctl_BaseAddress, XDWT_ACCEL_CTL_ADDR_ISR);
}

