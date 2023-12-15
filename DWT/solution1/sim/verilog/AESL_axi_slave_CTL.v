// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_CTL (
    clk,
    reset,
    TRAN_s_axi_CTL_AWADDR,
    TRAN_s_axi_CTL_AWVALID,
    TRAN_s_axi_CTL_AWREADY,
    TRAN_s_axi_CTL_WVALID,
    TRAN_s_axi_CTL_WREADY,
    TRAN_s_axi_CTL_WDATA,
    TRAN_s_axi_CTL_WSTRB,
    TRAN_s_axi_CTL_ARADDR,
    TRAN_s_axi_CTL_ARVALID,
    TRAN_s_axi_CTL_ARREADY,
    TRAN_s_axi_CTL_RVALID,
    TRAN_s_axi_CTL_RREADY,
    TRAN_s_axi_CTL_RDATA,
    TRAN_s_axi_CTL_RRESP,
    TRAN_s_axi_CTL_BVALID,
    TRAN_s_axi_CTL_BREADY,
    TRAN_s_axi_CTL_BRESP,
    TRAN_a_0,
    TRAN_a_1,
    TRAN_a_2,
    TRAN_a_3,
    TRAN_a_4,
    TRAN_a_5,
    TRAN_a_6,
    TRAN_a_7,
    TRAN_b_0,
    TRAN_b_1,
    TRAN_b_2,
    TRAN_b_3,
    TRAN_b_4,
    TRAN_b_5,
    TRAN_b_6,
    TRAN_b_7,
    TRAN_c_0,
    TRAN_c_1,
    TRAN_c_2,
    TRAN_c_3,
    TRAN_c_4,
    TRAN_c_5,
    TRAN_c_6,
    TRAN_c_7,
    TRAN_CTL_write_data_finish,
    TRAN_CTL_start_in,
    TRAN_CTL_idle_out,
    TRAN_CTL_ready_out,
    TRAN_CTL_ready_in,
    TRAN_CTL_done_out,
    TRAN_CTL_write_start_in   ,
    TRAN_CTL_write_start_finish,
    TRAN_CTL_interrupt,
    TRAN_CTL_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_a_0 "../tv/cdatafile/c.DWT_Accel.autotvin_a_0.dat"
`define TV_IN_a_1 "../tv/cdatafile/c.DWT_Accel.autotvin_a_1.dat"
`define TV_IN_a_2 "../tv/cdatafile/c.DWT_Accel.autotvin_a_2.dat"
`define TV_IN_a_3 "../tv/cdatafile/c.DWT_Accel.autotvin_a_3.dat"
`define TV_IN_a_4 "../tv/cdatafile/c.DWT_Accel.autotvin_a_4.dat"
`define TV_IN_a_5 "../tv/cdatafile/c.DWT_Accel.autotvin_a_5.dat"
`define TV_IN_a_6 "../tv/cdatafile/c.DWT_Accel.autotvin_a_6.dat"
`define TV_IN_a_7 "../tv/cdatafile/c.DWT_Accel.autotvin_a_7.dat"
`define TV_IN_b_0 "../tv/cdatafile/c.DWT_Accel.autotvin_b_0.dat"
`define TV_IN_b_1 "../tv/cdatafile/c.DWT_Accel.autotvin_b_1.dat"
`define TV_IN_b_2 "../tv/cdatafile/c.DWT_Accel.autotvin_b_2.dat"
`define TV_IN_b_3 "../tv/cdatafile/c.DWT_Accel.autotvin_b_3.dat"
`define TV_IN_b_4 "../tv/cdatafile/c.DWT_Accel.autotvin_b_4.dat"
`define TV_IN_b_5 "../tv/cdatafile/c.DWT_Accel.autotvin_b_5.dat"
`define TV_IN_b_6 "../tv/cdatafile/c.DWT_Accel.autotvin_b_6.dat"
`define TV_IN_b_7 "../tv/cdatafile/c.DWT_Accel.autotvin_b_7.dat"
`define TV_IN_c_0 "../tv/cdatafile/c.DWT_Accel.autotvin_c_0.dat"
`define TV_IN_c_1 "../tv/cdatafile/c.DWT_Accel.autotvin_c_1.dat"
`define TV_IN_c_2 "../tv/cdatafile/c.DWT_Accel.autotvin_c_2.dat"
`define TV_IN_c_3 "../tv/cdatafile/c.DWT_Accel.autotvin_c_3.dat"
`define TV_IN_c_4 "../tv/cdatafile/c.DWT_Accel.autotvin_c_4.dat"
`define TV_IN_c_5 "../tv/cdatafile/c.DWT_Accel.autotvin_c_5.dat"
`define TV_IN_c_6 "../tv/cdatafile/c.DWT_Accel.autotvin_c_6.dat"
`define TV_IN_c_7 "../tv/cdatafile/c.DWT_Accel.autotvin_c_7.dat"
parameter ADDR_WIDTH = 8;
parameter DATA_WIDTH = 32;
parameter a_0_DEPTH = 1;
reg [31 : 0] a_0_OPERATE_DEPTH = 1;
parameter a_0_c_bitwidth = 32;
parameter a_1_DEPTH = 1;
reg [31 : 0] a_1_OPERATE_DEPTH = 1;
parameter a_1_c_bitwidth = 32;
parameter a_2_DEPTH = 1;
reg [31 : 0] a_2_OPERATE_DEPTH = 1;
parameter a_2_c_bitwidth = 32;
parameter a_3_DEPTH = 1;
reg [31 : 0] a_3_OPERATE_DEPTH = 1;
parameter a_3_c_bitwidth = 32;
parameter a_4_DEPTH = 1;
reg [31 : 0] a_4_OPERATE_DEPTH = 1;
parameter a_4_c_bitwidth = 32;
parameter a_5_DEPTH = 1;
reg [31 : 0] a_5_OPERATE_DEPTH = 1;
parameter a_5_c_bitwidth = 32;
parameter a_6_DEPTH = 1;
reg [31 : 0] a_6_OPERATE_DEPTH = 1;
parameter a_6_c_bitwidth = 32;
parameter a_7_DEPTH = 1;
reg [31 : 0] a_7_OPERATE_DEPTH = 1;
parameter a_7_c_bitwidth = 32;
parameter b_0_DEPTH = 1;
reg [31 : 0] b_0_OPERATE_DEPTH = 1;
parameter b_0_c_bitwidth = 32;
parameter b_1_DEPTH = 1;
reg [31 : 0] b_1_OPERATE_DEPTH = 1;
parameter b_1_c_bitwidth = 32;
parameter b_2_DEPTH = 1;
reg [31 : 0] b_2_OPERATE_DEPTH = 1;
parameter b_2_c_bitwidth = 32;
parameter b_3_DEPTH = 1;
reg [31 : 0] b_3_OPERATE_DEPTH = 1;
parameter b_3_c_bitwidth = 32;
parameter b_4_DEPTH = 1;
reg [31 : 0] b_4_OPERATE_DEPTH = 1;
parameter b_4_c_bitwidth = 32;
parameter b_5_DEPTH = 1;
reg [31 : 0] b_5_OPERATE_DEPTH = 1;
parameter b_5_c_bitwidth = 32;
parameter b_6_DEPTH = 1;
reg [31 : 0] b_6_OPERATE_DEPTH = 1;
parameter b_6_c_bitwidth = 32;
parameter b_7_DEPTH = 1;
reg [31 : 0] b_7_OPERATE_DEPTH = 1;
parameter b_7_c_bitwidth = 32;
parameter c_0_DEPTH = 1;
reg [31 : 0] c_0_OPERATE_DEPTH = 1;
parameter c_0_c_bitwidth = 32;
parameter c_1_DEPTH = 1;
reg [31 : 0] c_1_OPERATE_DEPTH = 1;
parameter c_1_c_bitwidth = 32;
parameter c_2_DEPTH = 1;
reg [31 : 0] c_2_OPERATE_DEPTH = 1;
parameter c_2_c_bitwidth = 32;
parameter c_3_DEPTH = 1;
reg [31 : 0] c_3_OPERATE_DEPTH = 1;
parameter c_3_c_bitwidth = 32;
parameter c_4_DEPTH = 1;
reg [31 : 0] c_4_OPERATE_DEPTH = 1;
parameter c_4_c_bitwidth = 32;
parameter c_5_DEPTH = 1;
reg [31 : 0] c_5_OPERATE_DEPTH = 1;
parameter c_5_c_bitwidth = 32;
parameter c_6_DEPTH = 1;
reg [31 : 0] c_6_OPERATE_DEPTH = 1;
parameter c_6_c_bitwidth = 32;
parameter c_7_DEPTH = 1;
reg [31 : 0] c_7_OPERATE_DEPTH = 1;
parameter c_7_c_bitwidth = 32;
parameter START_ADDR = 0;
parameter DWT_Accel_continue_addr = 0;
parameter DWT_Accel_auto_start_addr = 0;
parameter a_0_data_in_addr = 16;
parameter a_1_data_in_addr = 24;
parameter a_2_data_in_addr = 32;
parameter a_3_data_in_addr = 40;
parameter a_4_data_in_addr = 48;
parameter a_5_data_in_addr = 56;
parameter a_6_data_in_addr = 64;
parameter a_7_data_in_addr = 72;
parameter b_0_data_in_addr = 80;
parameter b_1_data_in_addr = 88;
parameter b_2_data_in_addr = 96;
parameter b_3_data_in_addr = 104;
parameter b_4_data_in_addr = 112;
parameter b_5_data_in_addr = 120;
parameter b_6_data_in_addr = 128;
parameter b_7_data_in_addr = 136;
parameter c_0_data_in_addr = 144;
parameter c_1_data_in_addr = 152;
parameter c_2_data_in_addr = 160;
parameter c_3_data_in_addr = 168;
parameter c_4_data_in_addr = 176;
parameter c_5_data_in_addr = 184;
parameter c_6_data_in_addr = 192;
parameter c_7_data_in_addr = 200;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_CTL_AWADDR;
output  TRAN_s_axi_CTL_AWVALID;
input  TRAN_s_axi_CTL_AWREADY;
output  TRAN_s_axi_CTL_WVALID;
input  TRAN_s_axi_CTL_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_CTL_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_CTL_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_CTL_ARADDR;
output  TRAN_s_axi_CTL_ARVALID;
input  TRAN_s_axi_CTL_ARREADY;
input  TRAN_s_axi_CTL_RVALID;
output  TRAN_s_axi_CTL_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_CTL_RDATA;
input [2 - 1 : 0] TRAN_s_axi_CTL_RRESP;
input  TRAN_s_axi_CTL_BVALID;
output  TRAN_s_axi_CTL_BREADY;
input [2 - 1 : 0] TRAN_s_axi_CTL_BRESP;
input    [32 - 1 : 0] TRAN_a_0;
input    [32 - 1 : 0] TRAN_a_1;
input    [32 - 1 : 0] TRAN_a_2;
input    [32 - 1 : 0] TRAN_a_3;
input    [32 - 1 : 0] TRAN_a_4;
input    [32 - 1 : 0] TRAN_a_5;
input    [32 - 1 : 0] TRAN_a_6;
input    [32 - 1 : 0] TRAN_a_7;
input    [32 - 1 : 0] TRAN_b_0;
input    [32 - 1 : 0] TRAN_b_1;
input    [32 - 1 : 0] TRAN_b_2;
input    [32 - 1 : 0] TRAN_b_3;
input    [32 - 1 : 0] TRAN_b_4;
input    [32 - 1 : 0] TRAN_b_5;
input    [32 - 1 : 0] TRAN_b_6;
input    [32 - 1 : 0] TRAN_b_7;
input    [32 - 1 : 0] TRAN_c_0;
input    [32 - 1 : 0] TRAN_c_1;
input    [32 - 1 : 0] TRAN_c_2;
input    [32 - 1 : 0] TRAN_c_3;
input    [32 - 1 : 0] TRAN_c_4;
input    [32 - 1 : 0] TRAN_c_5;
input    [32 - 1 : 0] TRAN_c_6;
input    [32 - 1 : 0] TRAN_c_7;
output TRAN_CTL_write_data_finish;
input     clk;
input     reset;
input     TRAN_CTL_start_in;
output    TRAN_CTL_done_out;
output    TRAN_CTL_ready_out;
input     TRAN_CTL_ready_in;
output    TRAN_CTL_idle_out;
input  TRAN_CTL_write_start_in   ;
output TRAN_CTL_write_start_finish;
input     TRAN_CTL_interrupt;
input     TRAN_CTL_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [a_0_c_bitwidth - 1 : 0] reg_a_0;
reg a_0_write_data_finish;
reg [a_1_c_bitwidth - 1 : 0] reg_a_1;
reg a_1_write_data_finish;
reg [a_2_c_bitwidth - 1 : 0] reg_a_2;
reg a_2_write_data_finish;
reg [a_3_c_bitwidth - 1 : 0] reg_a_3;
reg a_3_write_data_finish;
reg [a_4_c_bitwidth - 1 : 0] reg_a_4;
reg a_4_write_data_finish;
reg [a_5_c_bitwidth - 1 : 0] reg_a_5;
reg a_5_write_data_finish;
reg [a_6_c_bitwidth - 1 : 0] reg_a_6;
reg a_6_write_data_finish;
reg [a_7_c_bitwidth - 1 : 0] reg_a_7;
reg a_7_write_data_finish;
reg [b_0_c_bitwidth - 1 : 0] reg_b_0;
reg b_0_write_data_finish;
reg [b_1_c_bitwidth - 1 : 0] reg_b_1;
reg b_1_write_data_finish;
reg [b_2_c_bitwidth - 1 : 0] reg_b_2;
reg b_2_write_data_finish;
reg [b_3_c_bitwidth - 1 : 0] reg_b_3;
reg b_3_write_data_finish;
reg [b_4_c_bitwidth - 1 : 0] reg_b_4;
reg b_4_write_data_finish;
reg [b_5_c_bitwidth - 1 : 0] reg_b_5;
reg b_5_write_data_finish;
reg [b_6_c_bitwidth - 1 : 0] reg_b_6;
reg b_6_write_data_finish;
reg [b_7_c_bitwidth - 1 : 0] reg_b_7;
reg b_7_write_data_finish;
reg [c_0_c_bitwidth - 1 : 0] reg_c_0;
reg c_0_write_data_finish;
reg [c_1_c_bitwidth - 1 : 0] reg_c_1;
reg c_1_write_data_finish;
reg [c_2_c_bitwidth - 1 : 0] reg_c_2;
reg c_2_write_data_finish;
reg [c_3_c_bitwidth - 1 : 0] reg_c_3;
reg c_3_write_data_finish;
reg [c_4_c_bitwidth - 1 : 0] reg_c_4;
reg c_4_write_data_finish;
reg [c_5_c_bitwidth - 1 : 0] reg_c_5;
reg c_5_write_data_finish;
reg [c_6_c_bitwidth - 1 : 0] reg_c_6;
reg c_6_write_data_finish;
reg [c_7_c_bitwidth - 1 : 0] reg_c_7;
reg c_7_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
reg process_8_finish = 0;
reg process_9_finish = 0;
reg process_10_finish = 0;
reg process_11_finish = 0;
reg process_12_finish = 0;
reg process_13_finish = 0;
reg process_14_finish = 0;
reg process_15_finish = 0;
reg process_16_finish = 0;
reg process_17_finish = 0;
reg process_18_finish = 0;
reg process_19_finish = 0;
reg process_20_finish = 0;
reg process_21_finish = 0;
reg process_22_finish = 0;
reg process_23_finish = 0;
reg process_24_finish = 0;
reg process_25_finish = 0;
//write a_0 reg
reg [31 : 0] write_a_0_count = 0;
reg write_a_0_run_flag = 0;
reg write_one_a_0_data_done = 0;
//write a_1 reg
reg [31 : 0] write_a_1_count = 0;
reg write_a_1_run_flag = 0;
reg write_one_a_1_data_done = 0;
//write a_2 reg
reg [31 : 0] write_a_2_count = 0;
reg write_a_2_run_flag = 0;
reg write_one_a_2_data_done = 0;
//write a_3 reg
reg [31 : 0] write_a_3_count = 0;
reg write_a_3_run_flag = 0;
reg write_one_a_3_data_done = 0;
//write a_4 reg
reg [31 : 0] write_a_4_count = 0;
reg write_a_4_run_flag = 0;
reg write_one_a_4_data_done = 0;
//write a_5 reg
reg [31 : 0] write_a_5_count = 0;
reg write_a_5_run_flag = 0;
reg write_one_a_5_data_done = 0;
//write a_6 reg
reg [31 : 0] write_a_6_count = 0;
reg write_a_6_run_flag = 0;
reg write_one_a_6_data_done = 0;
//write a_7 reg
reg [31 : 0] write_a_7_count = 0;
reg write_a_7_run_flag = 0;
reg write_one_a_7_data_done = 0;
//write b_0 reg
reg [31 : 0] write_b_0_count = 0;
reg write_b_0_run_flag = 0;
reg write_one_b_0_data_done = 0;
//write b_1 reg
reg [31 : 0] write_b_1_count = 0;
reg write_b_1_run_flag = 0;
reg write_one_b_1_data_done = 0;
//write b_2 reg
reg [31 : 0] write_b_2_count = 0;
reg write_b_2_run_flag = 0;
reg write_one_b_2_data_done = 0;
//write b_3 reg
reg [31 : 0] write_b_3_count = 0;
reg write_b_3_run_flag = 0;
reg write_one_b_3_data_done = 0;
//write b_4 reg
reg [31 : 0] write_b_4_count = 0;
reg write_b_4_run_flag = 0;
reg write_one_b_4_data_done = 0;
//write b_5 reg
reg [31 : 0] write_b_5_count = 0;
reg write_b_5_run_flag = 0;
reg write_one_b_5_data_done = 0;
//write b_6 reg
reg [31 : 0] write_b_6_count = 0;
reg write_b_6_run_flag = 0;
reg write_one_b_6_data_done = 0;
//write b_7 reg
reg [31 : 0] write_b_7_count = 0;
reg write_b_7_run_flag = 0;
reg write_one_b_7_data_done = 0;
//write c_0 reg
reg [31 : 0] write_c_0_count = 0;
reg write_c_0_run_flag = 0;
reg write_one_c_0_data_done = 0;
//write c_1 reg
reg [31 : 0] write_c_1_count = 0;
reg write_c_1_run_flag = 0;
reg write_one_c_1_data_done = 0;
//write c_2 reg
reg [31 : 0] write_c_2_count = 0;
reg write_c_2_run_flag = 0;
reg write_one_c_2_data_done = 0;
//write c_3 reg
reg [31 : 0] write_c_3_count = 0;
reg write_c_3_run_flag = 0;
reg write_one_c_3_data_done = 0;
//write c_4 reg
reg [31 : 0] write_c_4_count = 0;
reg write_c_4_run_flag = 0;
reg write_one_c_4_data_done = 0;
//write c_5 reg
reg [31 : 0] write_c_5_count = 0;
reg write_c_5_run_flag = 0;
reg write_one_c_5_data_done = 0;
//write c_6 reg
reg [31 : 0] write_c_6_count = 0;
reg write_c_6_run_flag = 0;
reg write_one_c_6_data_done = 0;
//write c_7 reg
reg [31 : 0] write_c_7_count = 0;
reg write_c_7_run_flag = 0;
reg write_one_c_7_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_CTL_AWADDR = AWADDR_reg;
assign TRAN_s_axi_CTL_AWVALID = AWVALID_reg;
assign TRAN_s_axi_CTL_WVALID = WVALID_reg;
assign TRAN_s_axi_CTL_WDATA = WDATA_reg;
assign TRAN_s_axi_CTL_WSTRB = WSTRB_reg;
assign TRAN_s_axi_CTL_ARADDR = ARADDR_reg;
assign TRAN_s_axi_CTL_ARVALID = ARVALID_reg;
assign TRAN_s_axi_CTL_RREADY = RREADY_reg;
assign TRAN_s_axi_CTL_BREADY = BREADY_reg;
assign TRAN_CTL_write_start_finish = AESL_write_start_finish;
assign TRAN_CTL_done_out = AESL_done_index_reg;
assign TRAN_CTL_ready_out = AESL_ready_out_index_reg;
assign TRAN_CTL_idle_out = AESL_idle_index_reg;
assign TRAN_CTL_write_data_finish = 1 & a_0_write_data_finish & a_1_write_data_finish & a_2_write_data_finish & a_3_write_data_finish & a_4_write_data_finish & a_5_write_data_finish & a_6_write_data_finish & a_7_write_data_finish & b_0_write_data_finish & b_1_write_data_finish & b_2_write_data_finish & b_3_write_data_finish & b_4_write_data_finish & b_5_write_data_finish & b_6_write_data_finish & b_7_write_data_finish & c_0_write_data_finish & c_1_write_data_finish & c_2_write_data_finish & c_3_write_data_finish & c_4_write_data_finish & c_5_write_data_finish & c_6_write_data_finish & c_7_write_data_finish;
always @(TRAN_CTL_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_CTL_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish or process_8_finish or process_9_finish or process_10_finish or process_11_finish or process_12_finish or process_13_finish or process_14_finish or process_15_finish or process_16_finish or process_17_finish or process_18_finish or process_19_finish or process_20_finish or process_21_finish or process_22_finish or process_23_finish or process_24_finish or process_25_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 8 && process_8_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 9 && process_9_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 10 && process_10_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 11 && process_11_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 12 && process_12_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 13 && process_13_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 14 && process_14_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 15 && process_15_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 16 && process_16_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 17 && process_17_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 18 && process_18_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 19 && process_19_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 20 && process_20_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 21 && process_21_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 22 && process_22_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 23 && process_23_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 24 && process_24_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 25 && process_25_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

always @(TRAN_a_0) 
begin
    reg_a_0 = TRAN_a_0;
end
always @(TRAN_a_1) 
begin
    reg_a_1 = TRAN_a_1;
end
always @(TRAN_a_2) 
begin
    reg_a_2 = TRAN_a_2;
end
always @(TRAN_a_3) 
begin
    reg_a_3 = TRAN_a_3;
end
always @(TRAN_a_4) 
begin
    reg_a_4 = TRAN_a_4;
end
always @(TRAN_a_5) 
begin
    reg_a_5 = TRAN_a_5;
end
always @(TRAN_a_6) 
begin
    reg_a_6 = TRAN_a_6;
end
always @(TRAN_a_7) 
begin
    reg_a_7 = TRAN_a_7;
end
always @(TRAN_b_0) 
begin
    reg_b_0 = TRAN_b_0;
end
always @(TRAN_b_1) 
begin
    reg_b_1 = TRAN_b_1;
end
always @(TRAN_b_2) 
begin
    reg_b_2 = TRAN_b_2;
end
always @(TRAN_b_3) 
begin
    reg_b_3 = TRAN_b_3;
end
always @(TRAN_b_4) 
begin
    reg_b_4 = TRAN_b_4;
end
always @(TRAN_b_5) 
begin
    reg_b_5 = TRAN_b_5;
end
always @(TRAN_b_6) 
begin
    reg_b_6 = TRAN_b_6;
end
always @(TRAN_b_7) 
begin
    reg_b_7 = TRAN_b_7;
end
always @(TRAN_c_0) 
begin
    reg_c_0 = TRAN_c_0;
end
always @(TRAN_c_1) 
begin
    reg_c_1 = TRAN_c_1;
end
always @(TRAN_c_2) 
begin
    reg_c_2 = TRAN_c_2;
end
always @(TRAN_c_3) 
begin
    reg_c_3 = TRAN_c_3;
end
always @(TRAN_c_4) 
begin
    reg_c_4 = TRAN_c_4;
end
always @(TRAN_c_5) 
begin
    reg_c_5 = TRAN_c_5;
end
always @(TRAN_c_6) 
begin
    reg_c_6 = TRAN_c_6;
end
always @(TRAN_c_7) 
begin
    reg_c_7 = TRAN_c_7;
end
task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8 ) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_CTL_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_CTL_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_CTL_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_CTL_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_CTL_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_CTL_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_CTL_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_CTL_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        a_0_write_data_finish <= 0;
        write_a_0_run_flag <= 0; 
        write_a_0_count = 0;
        count_operate_depth_by_bitwidth_and_depth (a_0_c_bitwidth, a_0_DEPTH, a_0_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            a_0_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_a_0_run_flag <= 1; 
            write_a_0_count = 0;
        end
        if (write_one_a_0_data_done === 1) begin
            write_a_0_count = write_a_0_count + 1;
            if (write_a_0_count == a_0_OPERATE_DEPTH) begin
                write_a_0_run_flag <= 0; 
                a_0_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_a_0
    integer write_a_0_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] a_0_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = a_0_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_a_0_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write a_0 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (a_0_c_bitwidth < 32) begin
                        a_0_data_tmp_reg = reg_a_0;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < a_0_c_bitwidth) begin
                                a_0_data_tmp_reg[j] = reg_a_0[i*32 + j];
                            end
                            else begin
                                a_0_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (a_0_data_in_addr + write_a_0_count * four_byte_num * 4 + i * 4, a_0_data_tmp_reg, write_a_0_resp);
                end
                process_busy = 0;
                write_one_a_0_data_done <= 1;
                @(posedge clk);
                write_one_a_0_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        a_1_write_data_finish <= 0;
        write_a_1_run_flag <= 0; 
        write_a_1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (a_1_c_bitwidth, a_1_DEPTH, a_1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            a_1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_a_1_run_flag <= 1; 
            write_a_1_count = 0;
        end
        if (write_one_a_1_data_done === 1) begin
            write_a_1_count = write_a_1_count + 1;
            if (write_a_1_count == a_1_OPERATE_DEPTH) begin
                write_a_1_run_flag <= 0; 
                a_1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_a_1
    integer write_a_1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] a_1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = a_1_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_a_1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write a_1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (a_1_c_bitwidth < 32) begin
                        a_1_data_tmp_reg = reg_a_1;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < a_1_c_bitwidth) begin
                                a_1_data_tmp_reg[j] = reg_a_1[i*32 + j];
                            end
                            else begin
                                a_1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (a_1_data_in_addr + write_a_1_count * four_byte_num * 4 + i * 4, a_1_data_tmp_reg, write_a_1_resp);
                end
                process_busy = 0;
                write_one_a_1_data_done <= 1;
                @(posedge clk);
                write_one_a_1_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        a_2_write_data_finish <= 0;
        write_a_2_run_flag <= 0; 
        write_a_2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (a_2_c_bitwidth, a_2_DEPTH, a_2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            a_2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_a_2_run_flag <= 1; 
            write_a_2_count = 0;
        end
        if (write_one_a_2_data_done === 1) begin
            write_a_2_count = write_a_2_count + 1;
            if (write_a_2_count == a_2_OPERATE_DEPTH) begin
                write_a_2_run_flag <= 0; 
                a_2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_a_2
    integer write_a_2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] a_2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = a_2_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_a_2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write a_2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (a_2_c_bitwidth < 32) begin
                        a_2_data_tmp_reg = reg_a_2;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < a_2_c_bitwidth) begin
                                a_2_data_tmp_reg[j] = reg_a_2[i*32 + j];
                            end
                            else begin
                                a_2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (a_2_data_in_addr + write_a_2_count * four_byte_num * 4 + i * 4, a_2_data_tmp_reg, write_a_2_resp);
                end
                process_busy = 0;
                write_one_a_2_data_done <= 1;
                @(posedge clk);
                write_one_a_2_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        a_3_write_data_finish <= 0;
        write_a_3_run_flag <= 0; 
        write_a_3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (a_3_c_bitwidth, a_3_DEPTH, a_3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            a_3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_a_3_run_flag <= 1; 
            write_a_3_count = 0;
        end
        if (write_one_a_3_data_done === 1) begin
            write_a_3_count = write_a_3_count + 1;
            if (write_a_3_count == a_3_OPERATE_DEPTH) begin
                write_a_3_run_flag <= 0; 
                a_3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_a_3
    integer write_a_3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] a_3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = a_3_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_a_3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write a_3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (a_3_c_bitwidth < 32) begin
                        a_3_data_tmp_reg = reg_a_3;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < a_3_c_bitwidth) begin
                                a_3_data_tmp_reg[j] = reg_a_3[i*32 + j];
                            end
                            else begin
                                a_3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (a_3_data_in_addr + write_a_3_count * four_byte_num * 4 + i * 4, a_3_data_tmp_reg, write_a_3_resp);
                end
                process_busy = 0;
                write_one_a_3_data_done <= 1;
                @(posedge clk);
                write_one_a_3_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        a_4_write_data_finish <= 0;
        write_a_4_run_flag <= 0; 
        write_a_4_count = 0;
        count_operate_depth_by_bitwidth_and_depth (a_4_c_bitwidth, a_4_DEPTH, a_4_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            a_4_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_a_4_run_flag <= 1; 
            write_a_4_count = 0;
        end
        if (write_one_a_4_data_done === 1) begin
            write_a_4_count = write_a_4_count + 1;
            if (write_a_4_count == a_4_OPERATE_DEPTH) begin
                write_a_4_run_flag <= 0; 
                a_4_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_a_4
    integer write_a_4_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] a_4_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = a_4_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_a_4_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write a_4 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (a_4_c_bitwidth < 32) begin
                        a_4_data_tmp_reg = reg_a_4;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < a_4_c_bitwidth) begin
                                a_4_data_tmp_reg[j] = reg_a_4[i*32 + j];
                            end
                            else begin
                                a_4_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (a_4_data_in_addr + write_a_4_count * four_byte_num * 4 + i * 4, a_4_data_tmp_reg, write_a_4_resp);
                end
                process_busy = 0;
                write_one_a_4_data_done <= 1;
                @(posedge clk);
                write_one_a_4_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        a_5_write_data_finish <= 0;
        write_a_5_run_flag <= 0; 
        write_a_5_count = 0;
        count_operate_depth_by_bitwidth_and_depth (a_5_c_bitwidth, a_5_DEPTH, a_5_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            a_5_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_a_5_run_flag <= 1; 
            write_a_5_count = 0;
        end
        if (write_one_a_5_data_done === 1) begin
            write_a_5_count = write_a_5_count + 1;
            if (write_a_5_count == a_5_OPERATE_DEPTH) begin
                write_a_5_run_flag <= 0; 
                a_5_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_a_5
    integer write_a_5_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] a_5_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = a_5_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_a_5_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write a_5 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (a_5_c_bitwidth < 32) begin
                        a_5_data_tmp_reg = reg_a_5;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < a_5_c_bitwidth) begin
                                a_5_data_tmp_reg[j] = reg_a_5[i*32 + j];
                            end
                            else begin
                                a_5_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (a_5_data_in_addr + write_a_5_count * four_byte_num * 4 + i * 4, a_5_data_tmp_reg, write_a_5_resp);
                end
                process_busy = 0;
                write_one_a_5_data_done <= 1;
                @(posedge clk);
                write_one_a_5_data_done <= 0;
            end   
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        a_6_write_data_finish <= 0;
        write_a_6_run_flag <= 0; 
        write_a_6_count = 0;
        count_operate_depth_by_bitwidth_and_depth (a_6_c_bitwidth, a_6_DEPTH, a_6_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            a_6_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_a_6_run_flag <= 1; 
            write_a_6_count = 0;
        end
        if (write_one_a_6_data_done === 1) begin
            write_a_6_count = write_a_6_count + 1;
            if (write_a_6_count == a_6_OPERATE_DEPTH) begin
                write_a_6_run_flag <= 0; 
                a_6_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_a_6
    integer write_a_6_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] a_6_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = a_6_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_7_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_a_6_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write a_6 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (a_6_c_bitwidth < 32) begin
                        a_6_data_tmp_reg = reg_a_6;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < a_6_c_bitwidth) begin
                                a_6_data_tmp_reg[j] = reg_a_6[i*32 + j];
                            end
                            else begin
                                a_6_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (a_6_data_in_addr + write_a_6_count * four_byte_num * 4 + i * 4, a_6_data_tmp_reg, write_a_6_resp);
                end
                process_busy = 0;
                write_one_a_6_data_done <= 1;
                @(posedge clk);
                write_one_a_6_data_done <= 0;
            end   
            process_7_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        a_7_write_data_finish <= 0;
        write_a_7_run_flag <= 0; 
        write_a_7_count = 0;
        count_operate_depth_by_bitwidth_and_depth (a_7_c_bitwidth, a_7_DEPTH, a_7_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            a_7_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_a_7_run_flag <= 1; 
            write_a_7_count = 0;
        end
        if (write_one_a_7_data_done === 1) begin
            write_a_7_count = write_a_7_count + 1;
            if (write_a_7_count == a_7_OPERATE_DEPTH) begin
                write_a_7_run_flag <= 0; 
                a_7_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_a_7
    integer write_a_7_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] a_7_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = a_7_c_bitwidth;
    process_num = 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_8_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_a_7_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write a_7 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (a_7_c_bitwidth < 32) begin
                        a_7_data_tmp_reg = reg_a_7;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < a_7_c_bitwidth) begin
                                a_7_data_tmp_reg[j] = reg_a_7[i*32 + j];
                            end
                            else begin
                                a_7_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (a_7_data_in_addr + write_a_7_count * four_byte_num * 4 + i * 4, a_7_data_tmp_reg, write_a_7_resp);
                end
                process_busy = 0;
                write_one_a_7_data_done <= 1;
                @(posedge clk);
                write_one_a_7_data_done <= 0;
            end   
            process_8_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        b_0_write_data_finish <= 0;
        write_b_0_run_flag <= 0; 
        write_b_0_count = 0;
        count_operate_depth_by_bitwidth_and_depth (b_0_c_bitwidth, b_0_DEPTH, b_0_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            b_0_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_b_0_run_flag <= 1; 
            write_b_0_count = 0;
        end
        if (write_one_b_0_data_done === 1) begin
            write_b_0_count = write_b_0_count + 1;
            if (write_b_0_count == b_0_OPERATE_DEPTH) begin
                write_b_0_run_flag <= 0; 
                b_0_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_b_0
    integer write_b_0_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] b_0_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = b_0_c_bitwidth;
    process_num = 9;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_9_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_b_0_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write b_0 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (b_0_c_bitwidth < 32) begin
                        b_0_data_tmp_reg = reg_b_0;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < b_0_c_bitwidth) begin
                                b_0_data_tmp_reg[j] = reg_b_0[i*32 + j];
                            end
                            else begin
                                b_0_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (b_0_data_in_addr + write_b_0_count * four_byte_num * 4 + i * 4, b_0_data_tmp_reg, write_b_0_resp);
                end
                process_busy = 0;
                write_one_b_0_data_done <= 1;
                @(posedge clk);
                write_one_b_0_data_done <= 0;
            end   
            process_9_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        b_1_write_data_finish <= 0;
        write_b_1_run_flag <= 0; 
        write_b_1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (b_1_c_bitwidth, b_1_DEPTH, b_1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            b_1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_b_1_run_flag <= 1; 
            write_b_1_count = 0;
        end
        if (write_one_b_1_data_done === 1) begin
            write_b_1_count = write_b_1_count + 1;
            if (write_b_1_count == b_1_OPERATE_DEPTH) begin
                write_b_1_run_flag <= 0; 
                b_1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_b_1
    integer write_b_1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] b_1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = b_1_c_bitwidth;
    process_num = 10;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_10_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_b_1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write b_1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (b_1_c_bitwidth < 32) begin
                        b_1_data_tmp_reg = reg_b_1;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < b_1_c_bitwidth) begin
                                b_1_data_tmp_reg[j] = reg_b_1[i*32 + j];
                            end
                            else begin
                                b_1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (b_1_data_in_addr + write_b_1_count * four_byte_num * 4 + i * 4, b_1_data_tmp_reg, write_b_1_resp);
                end
                process_busy = 0;
                write_one_b_1_data_done <= 1;
                @(posedge clk);
                write_one_b_1_data_done <= 0;
            end   
            process_10_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        b_2_write_data_finish <= 0;
        write_b_2_run_flag <= 0; 
        write_b_2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (b_2_c_bitwidth, b_2_DEPTH, b_2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            b_2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_b_2_run_flag <= 1; 
            write_b_2_count = 0;
        end
        if (write_one_b_2_data_done === 1) begin
            write_b_2_count = write_b_2_count + 1;
            if (write_b_2_count == b_2_OPERATE_DEPTH) begin
                write_b_2_run_flag <= 0; 
                b_2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_b_2
    integer write_b_2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] b_2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = b_2_c_bitwidth;
    process_num = 11;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_11_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_b_2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write b_2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (b_2_c_bitwidth < 32) begin
                        b_2_data_tmp_reg = reg_b_2;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < b_2_c_bitwidth) begin
                                b_2_data_tmp_reg[j] = reg_b_2[i*32 + j];
                            end
                            else begin
                                b_2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (b_2_data_in_addr + write_b_2_count * four_byte_num * 4 + i * 4, b_2_data_tmp_reg, write_b_2_resp);
                end
                process_busy = 0;
                write_one_b_2_data_done <= 1;
                @(posedge clk);
                write_one_b_2_data_done <= 0;
            end   
            process_11_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        b_3_write_data_finish <= 0;
        write_b_3_run_flag <= 0; 
        write_b_3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (b_3_c_bitwidth, b_3_DEPTH, b_3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            b_3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_b_3_run_flag <= 1; 
            write_b_3_count = 0;
        end
        if (write_one_b_3_data_done === 1) begin
            write_b_3_count = write_b_3_count + 1;
            if (write_b_3_count == b_3_OPERATE_DEPTH) begin
                write_b_3_run_flag <= 0; 
                b_3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_b_3
    integer write_b_3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] b_3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = b_3_c_bitwidth;
    process_num = 12;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_12_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_b_3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write b_3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (b_3_c_bitwidth < 32) begin
                        b_3_data_tmp_reg = reg_b_3;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < b_3_c_bitwidth) begin
                                b_3_data_tmp_reg[j] = reg_b_3[i*32 + j];
                            end
                            else begin
                                b_3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (b_3_data_in_addr + write_b_3_count * four_byte_num * 4 + i * 4, b_3_data_tmp_reg, write_b_3_resp);
                end
                process_busy = 0;
                write_one_b_3_data_done <= 1;
                @(posedge clk);
                write_one_b_3_data_done <= 0;
            end   
            process_12_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        b_4_write_data_finish <= 0;
        write_b_4_run_flag <= 0; 
        write_b_4_count = 0;
        count_operate_depth_by_bitwidth_and_depth (b_4_c_bitwidth, b_4_DEPTH, b_4_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            b_4_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_b_4_run_flag <= 1; 
            write_b_4_count = 0;
        end
        if (write_one_b_4_data_done === 1) begin
            write_b_4_count = write_b_4_count + 1;
            if (write_b_4_count == b_4_OPERATE_DEPTH) begin
                write_b_4_run_flag <= 0; 
                b_4_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_b_4
    integer write_b_4_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] b_4_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = b_4_c_bitwidth;
    process_num = 13;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_13_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_b_4_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write b_4 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (b_4_c_bitwidth < 32) begin
                        b_4_data_tmp_reg = reg_b_4;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < b_4_c_bitwidth) begin
                                b_4_data_tmp_reg[j] = reg_b_4[i*32 + j];
                            end
                            else begin
                                b_4_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (b_4_data_in_addr + write_b_4_count * four_byte_num * 4 + i * 4, b_4_data_tmp_reg, write_b_4_resp);
                end
                process_busy = 0;
                write_one_b_4_data_done <= 1;
                @(posedge clk);
                write_one_b_4_data_done <= 0;
            end   
            process_13_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        b_5_write_data_finish <= 0;
        write_b_5_run_flag <= 0; 
        write_b_5_count = 0;
        count_operate_depth_by_bitwidth_and_depth (b_5_c_bitwidth, b_5_DEPTH, b_5_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            b_5_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_b_5_run_flag <= 1; 
            write_b_5_count = 0;
        end
        if (write_one_b_5_data_done === 1) begin
            write_b_5_count = write_b_5_count + 1;
            if (write_b_5_count == b_5_OPERATE_DEPTH) begin
                write_b_5_run_flag <= 0; 
                b_5_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_b_5
    integer write_b_5_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] b_5_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = b_5_c_bitwidth;
    process_num = 14;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_14_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_b_5_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write b_5 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (b_5_c_bitwidth < 32) begin
                        b_5_data_tmp_reg = reg_b_5;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < b_5_c_bitwidth) begin
                                b_5_data_tmp_reg[j] = reg_b_5[i*32 + j];
                            end
                            else begin
                                b_5_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (b_5_data_in_addr + write_b_5_count * four_byte_num * 4 + i * 4, b_5_data_tmp_reg, write_b_5_resp);
                end
                process_busy = 0;
                write_one_b_5_data_done <= 1;
                @(posedge clk);
                write_one_b_5_data_done <= 0;
            end   
            process_14_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        b_6_write_data_finish <= 0;
        write_b_6_run_flag <= 0; 
        write_b_6_count = 0;
        count_operate_depth_by_bitwidth_and_depth (b_6_c_bitwidth, b_6_DEPTH, b_6_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            b_6_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_b_6_run_flag <= 1; 
            write_b_6_count = 0;
        end
        if (write_one_b_6_data_done === 1) begin
            write_b_6_count = write_b_6_count + 1;
            if (write_b_6_count == b_6_OPERATE_DEPTH) begin
                write_b_6_run_flag <= 0; 
                b_6_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_b_6
    integer write_b_6_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] b_6_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = b_6_c_bitwidth;
    process_num = 15;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_15_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_b_6_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write b_6 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (b_6_c_bitwidth < 32) begin
                        b_6_data_tmp_reg = reg_b_6;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < b_6_c_bitwidth) begin
                                b_6_data_tmp_reg[j] = reg_b_6[i*32 + j];
                            end
                            else begin
                                b_6_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (b_6_data_in_addr + write_b_6_count * four_byte_num * 4 + i * 4, b_6_data_tmp_reg, write_b_6_resp);
                end
                process_busy = 0;
                write_one_b_6_data_done <= 1;
                @(posedge clk);
                write_one_b_6_data_done <= 0;
            end   
            process_15_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        b_7_write_data_finish <= 0;
        write_b_7_run_flag <= 0; 
        write_b_7_count = 0;
        count_operate_depth_by_bitwidth_and_depth (b_7_c_bitwidth, b_7_DEPTH, b_7_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            b_7_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_b_7_run_flag <= 1; 
            write_b_7_count = 0;
        end
        if (write_one_b_7_data_done === 1) begin
            write_b_7_count = write_b_7_count + 1;
            if (write_b_7_count == b_7_OPERATE_DEPTH) begin
                write_b_7_run_flag <= 0; 
                b_7_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_b_7
    integer write_b_7_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] b_7_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = b_7_c_bitwidth;
    process_num = 16;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_16_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_b_7_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write b_7 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (b_7_c_bitwidth < 32) begin
                        b_7_data_tmp_reg = reg_b_7;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < b_7_c_bitwidth) begin
                                b_7_data_tmp_reg[j] = reg_b_7[i*32 + j];
                            end
                            else begin
                                b_7_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (b_7_data_in_addr + write_b_7_count * four_byte_num * 4 + i * 4, b_7_data_tmp_reg, write_b_7_resp);
                end
                process_busy = 0;
                write_one_b_7_data_done <= 1;
                @(posedge clk);
                write_one_b_7_data_done <= 0;
            end   
            process_16_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        c_0_write_data_finish <= 0;
        write_c_0_run_flag <= 0; 
        write_c_0_count = 0;
        count_operate_depth_by_bitwidth_and_depth (c_0_c_bitwidth, c_0_DEPTH, c_0_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            c_0_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_c_0_run_flag <= 1; 
            write_c_0_count = 0;
        end
        if (write_one_c_0_data_done === 1) begin
            write_c_0_count = write_c_0_count + 1;
            if (write_c_0_count == c_0_OPERATE_DEPTH) begin
                write_c_0_run_flag <= 0; 
                c_0_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_c_0
    integer write_c_0_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] c_0_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = c_0_c_bitwidth;
    process_num = 17;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_17_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_c_0_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write c_0 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (c_0_c_bitwidth < 32) begin
                        c_0_data_tmp_reg = reg_c_0;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < c_0_c_bitwidth) begin
                                c_0_data_tmp_reg[j] = reg_c_0[i*32 + j];
                            end
                            else begin
                                c_0_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (c_0_data_in_addr + write_c_0_count * four_byte_num * 4 + i * 4, c_0_data_tmp_reg, write_c_0_resp);
                end
                process_busy = 0;
                write_one_c_0_data_done <= 1;
                @(posedge clk);
                write_one_c_0_data_done <= 0;
            end   
            process_17_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        c_1_write_data_finish <= 0;
        write_c_1_run_flag <= 0; 
        write_c_1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (c_1_c_bitwidth, c_1_DEPTH, c_1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            c_1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_c_1_run_flag <= 1; 
            write_c_1_count = 0;
        end
        if (write_one_c_1_data_done === 1) begin
            write_c_1_count = write_c_1_count + 1;
            if (write_c_1_count == c_1_OPERATE_DEPTH) begin
                write_c_1_run_flag <= 0; 
                c_1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_c_1
    integer write_c_1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] c_1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = c_1_c_bitwidth;
    process_num = 18;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_18_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_c_1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write c_1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (c_1_c_bitwidth < 32) begin
                        c_1_data_tmp_reg = reg_c_1;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < c_1_c_bitwidth) begin
                                c_1_data_tmp_reg[j] = reg_c_1[i*32 + j];
                            end
                            else begin
                                c_1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (c_1_data_in_addr + write_c_1_count * four_byte_num * 4 + i * 4, c_1_data_tmp_reg, write_c_1_resp);
                end
                process_busy = 0;
                write_one_c_1_data_done <= 1;
                @(posedge clk);
                write_one_c_1_data_done <= 0;
            end   
            process_18_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        c_2_write_data_finish <= 0;
        write_c_2_run_flag <= 0; 
        write_c_2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (c_2_c_bitwidth, c_2_DEPTH, c_2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            c_2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_c_2_run_flag <= 1; 
            write_c_2_count = 0;
        end
        if (write_one_c_2_data_done === 1) begin
            write_c_2_count = write_c_2_count + 1;
            if (write_c_2_count == c_2_OPERATE_DEPTH) begin
                write_c_2_run_flag <= 0; 
                c_2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_c_2
    integer write_c_2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] c_2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = c_2_c_bitwidth;
    process_num = 19;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_19_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_c_2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write c_2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (c_2_c_bitwidth < 32) begin
                        c_2_data_tmp_reg = reg_c_2;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < c_2_c_bitwidth) begin
                                c_2_data_tmp_reg[j] = reg_c_2[i*32 + j];
                            end
                            else begin
                                c_2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (c_2_data_in_addr + write_c_2_count * four_byte_num * 4 + i * 4, c_2_data_tmp_reg, write_c_2_resp);
                end
                process_busy = 0;
                write_one_c_2_data_done <= 1;
                @(posedge clk);
                write_one_c_2_data_done <= 0;
            end   
            process_19_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        c_3_write_data_finish <= 0;
        write_c_3_run_flag <= 0; 
        write_c_3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (c_3_c_bitwidth, c_3_DEPTH, c_3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            c_3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_c_3_run_flag <= 1; 
            write_c_3_count = 0;
        end
        if (write_one_c_3_data_done === 1) begin
            write_c_3_count = write_c_3_count + 1;
            if (write_c_3_count == c_3_OPERATE_DEPTH) begin
                write_c_3_run_flag <= 0; 
                c_3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_c_3
    integer write_c_3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] c_3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = c_3_c_bitwidth;
    process_num = 20;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_20_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_c_3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write c_3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (c_3_c_bitwidth < 32) begin
                        c_3_data_tmp_reg = reg_c_3;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < c_3_c_bitwidth) begin
                                c_3_data_tmp_reg[j] = reg_c_3[i*32 + j];
                            end
                            else begin
                                c_3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (c_3_data_in_addr + write_c_3_count * four_byte_num * 4 + i * 4, c_3_data_tmp_reg, write_c_3_resp);
                end
                process_busy = 0;
                write_one_c_3_data_done <= 1;
                @(posedge clk);
                write_one_c_3_data_done <= 0;
            end   
            process_20_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        c_4_write_data_finish <= 0;
        write_c_4_run_flag <= 0; 
        write_c_4_count = 0;
        count_operate_depth_by_bitwidth_and_depth (c_4_c_bitwidth, c_4_DEPTH, c_4_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            c_4_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_c_4_run_flag <= 1; 
            write_c_4_count = 0;
        end
        if (write_one_c_4_data_done === 1) begin
            write_c_4_count = write_c_4_count + 1;
            if (write_c_4_count == c_4_OPERATE_DEPTH) begin
                write_c_4_run_flag <= 0; 
                c_4_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_c_4
    integer write_c_4_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] c_4_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = c_4_c_bitwidth;
    process_num = 21;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_21_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_c_4_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write c_4 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (c_4_c_bitwidth < 32) begin
                        c_4_data_tmp_reg = reg_c_4;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < c_4_c_bitwidth) begin
                                c_4_data_tmp_reg[j] = reg_c_4[i*32 + j];
                            end
                            else begin
                                c_4_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (c_4_data_in_addr + write_c_4_count * four_byte_num * 4 + i * 4, c_4_data_tmp_reg, write_c_4_resp);
                end
                process_busy = 0;
                write_one_c_4_data_done <= 1;
                @(posedge clk);
                write_one_c_4_data_done <= 0;
            end   
            process_21_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        c_5_write_data_finish <= 0;
        write_c_5_run_flag <= 0; 
        write_c_5_count = 0;
        count_operate_depth_by_bitwidth_and_depth (c_5_c_bitwidth, c_5_DEPTH, c_5_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            c_5_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_c_5_run_flag <= 1; 
            write_c_5_count = 0;
        end
        if (write_one_c_5_data_done === 1) begin
            write_c_5_count = write_c_5_count + 1;
            if (write_c_5_count == c_5_OPERATE_DEPTH) begin
                write_c_5_run_flag <= 0; 
                c_5_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_c_5
    integer write_c_5_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] c_5_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = c_5_c_bitwidth;
    process_num = 22;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_22_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_c_5_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write c_5 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (c_5_c_bitwidth < 32) begin
                        c_5_data_tmp_reg = reg_c_5;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < c_5_c_bitwidth) begin
                                c_5_data_tmp_reg[j] = reg_c_5[i*32 + j];
                            end
                            else begin
                                c_5_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (c_5_data_in_addr + write_c_5_count * four_byte_num * 4 + i * 4, c_5_data_tmp_reg, write_c_5_resp);
                end
                process_busy = 0;
                write_one_c_5_data_done <= 1;
                @(posedge clk);
                write_one_c_5_data_done <= 0;
            end   
            process_22_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        c_6_write_data_finish <= 0;
        write_c_6_run_flag <= 0; 
        write_c_6_count = 0;
        count_operate_depth_by_bitwidth_and_depth (c_6_c_bitwidth, c_6_DEPTH, c_6_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            c_6_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_c_6_run_flag <= 1; 
            write_c_6_count = 0;
        end
        if (write_one_c_6_data_done === 1) begin
            write_c_6_count = write_c_6_count + 1;
            if (write_c_6_count == c_6_OPERATE_DEPTH) begin
                write_c_6_run_flag <= 0; 
                c_6_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_c_6
    integer write_c_6_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] c_6_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = c_6_c_bitwidth;
    process_num = 23;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_23_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_c_6_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write c_6 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (c_6_c_bitwidth < 32) begin
                        c_6_data_tmp_reg = reg_c_6;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < c_6_c_bitwidth) begin
                                c_6_data_tmp_reg[j] = reg_c_6[i*32 + j];
                            end
                            else begin
                                c_6_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (c_6_data_in_addr + write_c_6_count * four_byte_num * 4 + i * 4, c_6_data_tmp_reg, write_c_6_resp);
                end
                process_busy = 0;
                write_one_c_6_data_done <= 1;
                @(posedge clk);
                write_one_c_6_data_done <= 0;
            end   
            process_23_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        c_7_write_data_finish <= 0;
        write_c_7_run_flag <= 0; 
        write_c_7_count = 0;
        count_operate_depth_by_bitwidth_and_depth (c_7_c_bitwidth, c_7_DEPTH, c_7_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTL_start_in === 1) begin
            c_7_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_c_7_run_flag <= 1; 
            write_c_7_count = 0;
        end
        if (write_one_c_7_data_done === 1) begin
            write_c_7_count = write_c_7_count + 1;
            if (write_c_7_count == c_7_OPERATE_DEPTH) begin
                write_c_7_run_flag <= 0; 
                c_7_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_c_7
    integer write_c_7_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] c_7_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = c_7_c_bitwidth;
    process_num = 24;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_24_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_c_7_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write c_7 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (c_7_c_bitwidth < 32) begin
                        c_7_data_tmp_reg = reg_c_7;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < c_7_c_bitwidth) begin
                                c_7_data_tmp_reg[j] = reg_c_7[i*32 + j];
                            end
                            else begin
                                c_7_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (c_7_data_in_addr + write_c_7_count * four_byte_num * 4 + i * 4, c_7_data_tmp_reg, write_c_7_resp);
                end
                process_busy = 0;
                write_one_c_7_data_done <= 1;
                @(posedge clk);
                write_one_c_7_data_done <= 0;
            end   
            process_24_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_CTL_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 25;
    while (1) begin
        process_25_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_25_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
endmodule
