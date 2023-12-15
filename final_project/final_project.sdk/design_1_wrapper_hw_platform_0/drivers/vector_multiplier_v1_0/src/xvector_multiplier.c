// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xvector_multiplier.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVector_multiplier_CfgInitialize(XVector_multiplier *InstancePtr, XVector_multiplier_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctl_BaseAddress = ConfigPtr->Ctl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XVector_multiplier_Start(XVector_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVector_multiplier_ReadReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_AP_CTRL) & 0x80;
    XVector_multiplier_WriteReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XVector_multiplier_IsDone(XVector_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVector_multiplier_ReadReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XVector_multiplier_IsIdle(XVector_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVector_multiplier_ReadReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XVector_multiplier_IsReady(XVector_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVector_multiplier_ReadReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XVector_multiplier_EnableAutoRestart(XVector_multiplier *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVector_multiplier_WriteReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_AP_CTRL, 0x80);
}

void XVector_multiplier_DisableAutoRestart(XVector_multiplier *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVector_multiplier_WriteReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_AP_CTRL, 0);
}

u32 XVector_multiplier_Get_return(XVector_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVector_multiplier_ReadReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_AP_RETURN);
    return Data;
}
void XVector_multiplier_Set_a(XVector_multiplier *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVector_multiplier_WriteReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_A_DATA, Data);
}

u32 XVector_multiplier_Get_a(XVector_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVector_multiplier_ReadReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_A_DATA);
    return Data;
}

void XVector_multiplier_Set_b(XVector_multiplier *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVector_multiplier_WriteReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_B_DATA, Data);
}

u32 XVector_multiplier_Get_b(XVector_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVector_multiplier_ReadReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_B_DATA);
    return Data;
}

void XVector_multiplier_Set_c(XVector_multiplier *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVector_multiplier_WriteReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_C_DATA, Data);
}

u32 XVector_multiplier_Get_c(XVector_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVector_multiplier_ReadReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_C_DATA);
    return Data;
}

void XVector_multiplier_InterruptGlobalEnable(XVector_multiplier *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVector_multiplier_WriteReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_GIE, 1);
}

void XVector_multiplier_InterruptGlobalDisable(XVector_multiplier *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVector_multiplier_WriteReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_GIE, 0);
}

void XVector_multiplier_InterruptEnable(XVector_multiplier *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVector_multiplier_ReadReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_IER);
    XVector_multiplier_WriteReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_IER, Register | Mask);
}

void XVector_multiplier_InterruptDisable(XVector_multiplier *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVector_multiplier_ReadReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_IER);
    XVector_multiplier_WriteReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_IER, Register & (~Mask));
}

void XVector_multiplier_InterruptClear(XVector_multiplier *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVector_multiplier_WriteReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_ISR, Mask);
}

u32 XVector_multiplier_InterruptGetEnabled(XVector_multiplier *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVector_multiplier_ReadReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_IER);
}

u32 XVector_multiplier_InterruptGetStatus(XVector_multiplier *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVector_multiplier_ReadReg(InstancePtr->Ctl_BaseAddress, XVECTOR_MULTIPLIER_CTL_ADDR_ISR);
}

