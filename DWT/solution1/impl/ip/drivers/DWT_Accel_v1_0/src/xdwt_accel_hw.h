// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// CTL
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of a
//        bit 31~0 - a[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of b
//        bit 31~0 - b[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of c
//        bit 31~0 - c[31:0] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XDWT_ACCEL_CTL_ADDR_AP_CTRL 0x00
#define XDWT_ACCEL_CTL_ADDR_GIE     0x04
#define XDWT_ACCEL_CTL_ADDR_IER     0x08
#define XDWT_ACCEL_CTL_ADDR_ISR     0x0c
#define XDWT_ACCEL_CTL_ADDR_A_DATA  0x10
#define XDWT_ACCEL_CTL_BITS_A_DATA  32
#define XDWT_ACCEL_CTL_ADDR_B_DATA  0x18
#define XDWT_ACCEL_CTL_BITS_B_DATA  32
#define XDWT_ACCEL_CTL_ADDR_C_DATA  0x20
#define XDWT_ACCEL_CTL_BITS_C_DATA  32

