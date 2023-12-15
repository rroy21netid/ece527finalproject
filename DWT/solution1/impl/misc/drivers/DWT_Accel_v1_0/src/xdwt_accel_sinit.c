// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdwt_accel.h"

extern XDwt_accel_Config XDwt_accel_ConfigTable[];

XDwt_accel_Config *XDwt_accel_LookupConfig(u16 DeviceId) {
	XDwt_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDWT_ACCEL_NUM_INSTANCES; Index++) {
		if (XDwt_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDwt_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDwt_accel_Initialize(XDwt_accel *InstancePtr, u16 DeviceId) {
	XDwt_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDwt_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDwt_accel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

