// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xvector_multiplier.h"

extern XVector_multiplier_Config XVector_multiplier_ConfigTable[];

XVector_multiplier_Config *XVector_multiplier_LookupConfig(u16 DeviceId) {
	XVector_multiplier_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XVECTOR_MULTIPLIER_NUM_INSTANCES; Index++) {
		if (XVector_multiplier_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XVector_multiplier_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVector_multiplier_Initialize(XVector_multiplier *InstancePtr, u16 DeviceId) {
	XVector_multiplier_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVector_multiplier_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVector_multiplier_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

