// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      DWT_Accel
`define AUTOTB_DUT_INST AESL_inst_DWT_Accel
`define AUTOTB_TOP      apatb_DWT_Accel_top
`define AUTOTB_LAT_RESULT_FILE "DWT_Accel.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "DWT_Accel.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_DWT_Accel_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_DATA_A 1
`define AESL_DEPTH_DATA_B 1
`define AESL_DEPTH_DATA_C 1
`define AESL_DEPTH_a_0 1
`define AESL_DEPTH_a_1 1
`define AESL_DEPTH_a_2 1
`define AESL_DEPTH_a_3 1
`define AESL_DEPTH_a_4 1
`define AESL_DEPTH_a_5 1
`define AESL_DEPTH_a_6 1
`define AESL_DEPTH_a_7 1
`define AESL_DEPTH_b_0 1
`define AESL_DEPTH_b_1 1
`define AESL_DEPTH_b_2 1
`define AESL_DEPTH_b_3 1
`define AESL_DEPTH_b_4 1
`define AESL_DEPTH_b_5 1
`define AESL_DEPTH_b_6 1
`define AESL_DEPTH_b_7 1
`define AESL_DEPTH_c_0 1
`define AESL_DEPTH_c_1 1
`define AESL_DEPTH_c_2 1
`define AESL_DEPTH_c_3 1
`define AESL_DEPTH_c_4 1
`define AESL_DEPTH_c_5 1
`define AESL_DEPTH_c_6 1
`define AESL_DEPTH_c_7 1
`define AUTOTB_TVIN_DATA_A  "../tv/cdatafile/c.DWT_Accel.autotvin_DATA_A.dat"
`define AUTOTB_TVIN_DATA_B  "../tv/cdatafile/c.DWT_Accel.autotvin_DATA_B.dat"
`define AUTOTB_TVIN_a_0  "../tv/cdatafile/c.DWT_Accel.autotvin_a_0.dat"
`define AUTOTB_TVIN_a_1  "../tv/cdatafile/c.DWT_Accel.autotvin_a_1.dat"
`define AUTOTB_TVIN_a_2  "../tv/cdatafile/c.DWT_Accel.autotvin_a_2.dat"
`define AUTOTB_TVIN_a_3  "../tv/cdatafile/c.DWT_Accel.autotvin_a_3.dat"
`define AUTOTB_TVIN_a_4  "../tv/cdatafile/c.DWT_Accel.autotvin_a_4.dat"
`define AUTOTB_TVIN_a_5  "../tv/cdatafile/c.DWT_Accel.autotvin_a_5.dat"
`define AUTOTB_TVIN_a_6  "../tv/cdatafile/c.DWT_Accel.autotvin_a_6.dat"
`define AUTOTB_TVIN_a_7  "../tv/cdatafile/c.DWT_Accel.autotvin_a_7.dat"
`define AUTOTB_TVIN_b_0  "../tv/cdatafile/c.DWT_Accel.autotvin_b_0.dat"
`define AUTOTB_TVIN_b_1  "../tv/cdatafile/c.DWT_Accel.autotvin_b_1.dat"
`define AUTOTB_TVIN_b_2  "../tv/cdatafile/c.DWT_Accel.autotvin_b_2.dat"
`define AUTOTB_TVIN_b_3  "../tv/cdatafile/c.DWT_Accel.autotvin_b_3.dat"
`define AUTOTB_TVIN_b_4  "../tv/cdatafile/c.DWT_Accel.autotvin_b_4.dat"
`define AUTOTB_TVIN_b_5  "../tv/cdatafile/c.DWT_Accel.autotvin_b_5.dat"
`define AUTOTB_TVIN_b_6  "../tv/cdatafile/c.DWT_Accel.autotvin_b_6.dat"
`define AUTOTB_TVIN_b_7  "../tv/cdatafile/c.DWT_Accel.autotvin_b_7.dat"
`define AUTOTB_TVIN_c_0  "../tv/cdatafile/c.DWT_Accel.autotvin_c_0.dat"
`define AUTOTB_TVIN_c_1  "../tv/cdatafile/c.DWT_Accel.autotvin_c_1.dat"
`define AUTOTB_TVIN_c_2  "../tv/cdatafile/c.DWT_Accel.autotvin_c_2.dat"
`define AUTOTB_TVIN_c_3  "../tv/cdatafile/c.DWT_Accel.autotvin_c_3.dat"
`define AUTOTB_TVIN_c_4  "../tv/cdatafile/c.DWT_Accel.autotvin_c_4.dat"
`define AUTOTB_TVIN_c_5  "../tv/cdatafile/c.DWT_Accel.autotvin_c_5.dat"
`define AUTOTB_TVIN_c_6  "../tv/cdatafile/c.DWT_Accel.autotvin_c_6.dat"
`define AUTOTB_TVIN_c_7  "../tv/cdatafile/c.DWT_Accel.autotvin_c_7.dat"
`define AUTOTB_TVIN_DATA_A_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_DATA_A.dat"
`define AUTOTB_TVIN_DATA_B_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_DATA_B.dat"
`define AUTOTB_TVIN_a_0_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_a_0.dat"
`define AUTOTB_TVIN_a_1_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_a_1.dat"
`define AUTOTB_TVIN_a_2_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_a_2.dat"
`define AUTOTB_TVIN_a_3_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_a_3.dat"
`define AUTOTB_TVIN_a_4_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_a_4.dat"
`define AUTOTB_TVIN_a_5_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_a_5.dat"
`define AUTOTB_TVIN_a_6_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_a_6.dat"
`define AUTOTB_TVIN_a_7_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_a_7.dat"
`define AUTOTB_TVIN_b_0_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_b_0.dat"
`define AUTOTB_TVIN_b_1_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_b_1.dat"
`define AUTOTB_TVIN_b_2_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_b_2.dat"
`define AUTOTB_TVIN_b_3_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_b_3.dat"
`define AUTOTB_TVIN_b_4_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_b_4.dat"
`define AUTOTB_TVIN_b_5_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_b_5.dat"
`define AUTOTB_TVIN_b_6_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_b_6.dat"
`define AUTOTB_TVIN_b_7_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_b_7.dat"
`define AUTOTB_TVIN_c_0_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_c_0.dat"
`define AUTOTB_TVIN_c_1_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_c_1.dat"
`define AUTOTB_TVIN_c_2_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_c_2.dat"
`define AUTOTB_TVIN_c_3_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_c_3.dat"
`define AUTOTB_TVIN_c_4_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_c_4.dat"
`define AUTOTB_TVIN_c_5_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_c_5.dat"
`define AUTOTB_TVIN_c_6_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_c_6.dat"
`define AUTOTB_TVIN_c_7_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvin_c_7.dat"
`define AUTOTB_TVOUT_DATA_A  "../tv/cdatafile/c.DWT_Accel.autotvout_DATA_A.dat"
`define AUTOTB_TVOUT_DATA_B  "../tv/cdatafile/c.DWT_Accel.autotvout_DATA_B.dat"
`define AUTOTB_TVOUT_DATA_C  "../tv/cdatafile/c.DWT_Accel.autotvout_DATA_C.dat"
`define AUTOTB_TVOUT_DATA_A_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvout_DATA_A.dat"
`define AUTOTB_TVOUT_DATA_B_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvout_DATA_B.dat"
`define AUTOTB_TVOUT_DATA_C_out_wrapc  "../tv/rtldatafile/rtl.DWT_Accel.autotvout_DATA_C.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 50390100;
parameter LENGTH_DATA_A = 307200;
parameter LENGTH_DATA_B = 307200;
parameter LENGTH_DATA_C = 307200;
parameter LENGTH_a_0 = 1;
parameter LENGTH_a_1 = 1;
parameter LENGTH_a_2 = 1;
parameter LENGTH_a_3 = 1;
parameter LENGTH_a_4 = 1;
parameter LENGTH_a_5 = 1;
parameter LENGTH_a_6 = 1;
parameter LENGTH_a_7 = 1;
parameter LENGTH_b_0 = 1;
parameter LENGTH_b_1 = 1;
parameter LENGTH_b_2 = 1;
parameter LENGTH_b_3 = 1;
parameter LENGTH_b_4 = 1;
parameter LENGTH_b_5 = 1;
parameter LENGTH_b_6 = 1;
parameter LENGTH_b_7 = 1;
parameter LENGTH_c_0 = 1;
parameter LENGTH_c_1 = 1;
parameter LENGTH_c_2 = 1;
parameter LENGTH_c_3 = 1;
parameter LENGTH_c_4 = 1;
parameter LENGTH_c_5 = 1;
parameter LENGTH_c_6 = 1;
parameter LENGTH_c_7 = 1;

task read_token;
    input integer fp;
    output reg [191 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [7 : 0] CTL_AWADDR;
wire  CTL_AWVALID;
wire  CTL_AWREADY;
wire  CTL_WVALID;
wire  CTL_WREADY;
wire [31 : 0] CTL_WDATA;
wire [3 : 0] CTL_WSTRB;
wire [7 : 0] CTL_ARADDR;
wire  CTL_ARVALID;
wire  CTL_ARREADY;
wire  CTL_RVALID;
wire  CTL_RREADY;
wire [31 : 0] CTL_RDATA;
wire [1 : 0] CTL_RRESP;
wire  CTL_BVALID;
wire  CTL_BREADY;
wire [1 : 0] CTL_BRESP;
wire  CTL_INTERRUPT;
wire  DATA_A_AWVALID;
wire  DATA_A_AWREADY;
wire [31 : 0] DATA_A_AWADDR;
wire [0 : 0] DATA_A_AWID;
wire [7 : 0] DATA_A_AWLEN;
wire [2 : 0] DATA_A_AWSIZE;
wire [1 : 0] DATA_A_AWBURST;
wire [1 : 0] DATA_A_AWLOCK;
wire [3 : 0] DATA_A_AWCACHE;
wire [2 : 0] DATA_A_AWPROT;
wire [3 : 0] DATA_A_AWQOS;
wire [3 : 0] DATA_A_AWREGION;
wire [0 : 0] DATA_A_AWUSER;
wire  DATA_A_WVALID;
wire  DATA_A_WREADY;
wire [31 : 0] DATA_A_WDATA;
wire [3 : 0] DATA_A_WSTRB;
wire  DATA_A_WLAST;
wire [0 : 0] DATA_A_WID;
wire [0 : 0] DATA_A_WUSER;
wire  DATA_A_ARVALID;
wire  DATA_A_ARREADY;
wire [31 : 0] DATA_A_ARADDR;
wire [0 : 0] DATA_A_ARID;
wire [7 : 0] DATA_A_ARLEN;
wire [2 : 0] DATA_A_ARSIZE;
wire [1 : 0] DATA_A_ARBURST;
wire [1 : 0] DATA_A_ARLOCK;
wire [3 : 0] DATA_A_ARCACHE;
wire [2 : 0] DATA_A_ARPROT;
wire [3 : 0] DATA_A_ARQOS;
wire [3 : 0] DATA_A_ARREGION;
wire [0 : 0] DATA_A_ARUSER;
wire  DATA_A_RVALID;
wire  DATA_A_RREADY;
wire [31 : 0] DATA_A_RDATA;
wire  DATA_A_RLAST;
wire [0 : 0] DATA_A_RID;
wire [0 : 0] DATA_A_RUSER;
wire [1 : 0] DATA_A_RRESP;
wire  DATA_A_BVALID;
wire  DATA_A_BREADY;
wire [1 : 0] DATA_A_BRESP;
wire [0 : 0] DATA_A_BID;
wire [0 : 0] DATA_A_BUSER;
wire  DATA_B_AWVALID;
wire  DATA_B_AWREADY;
wire [31 : 0] DATA_B_AWADDR;
wire [0 : 0] DATA_B_AWID;
wire [7 : 0] DATA_B_AWLEN;
wire [2 : 0] DATA_B_AWSIZE;
wire [1 : 0] DATA_B_AWBURST;
wire [1 : 0] DATA_B_AWLOCK;
wire [3 : 0] DATA_B_AWCACHE;
wire [2 : 0] DATA_B_AWPROT;
wire [3 : 0] DATA_B_AWQOS;
wire [3 : 0] DATA_B_AWREGION;
wire [0 : 0] DATA_B_AWUSER;
wire  DATA_B_WVALID;
wire  DATA_B_WREADY;
wire [31 : 0] DATA_B_WDATA;
wire [3 : 0] DATA_B_WSTRB;
wire  DATA_B_WLAST;
wire [0 : 0] DATA_B_WID;
wire [0 : 0] DATA_B_WUSER;
wire  DATA_B_ARVALID;
wire  DATA_B_ARREADY;
wire [31 : 0] DATA_B_ARADDR;
wire [0 : 0] DATA_B_ARID;
wire [7 : 0] DATA_B_ARLEN;
wire [2 : 0] DATA_B_ARSIZE;
wire [1 : 0] DATA_B_ARBURST;
wire [1 : 0] DATA_B_ARLOCK;
wire [3 : 0] DATA_B_ARCACHE;
wire [2 : 0] DATA_B_ARPROT;
wire [3 : 0] DATA_B_ARQOS;
wire [3 : 0] DATA_B_ARREGION;
wire [0 : 0] DATA_B_ARUSER;
wire  DATA_B_RVALID;
wire  DATA_B_RREADY;
wire [31 : 0] DATA_B_RDATA;
wire  DATA_B_RLAST;
wire [0 : 0] DATA_B_RID;
wire [0 : 0] DATA_B_RUSER;
wire [1 : 0] DATA_B_RRESP;
wire  DATA_B_BVALID;
wire  DATA_B_BREADY;
wire [1 : 0] DATA_B_BRESP;
wire [0 : 0] DATA_B_BID;
wire [0 : 0] DATA_B_BUSER;
wire  DATA_C_AWVALID;
wire  DATA_C_AWREADY;
wire [31 : 0] DATA_C_AWADDR;
wire [0 : 0] DATA_C_AWID;
wire [7 : 0] DATA_C_AWLEN;
wire [2 : 0] DATA_C_AWSIZE;
wire [1 : 0] DATA_C_AWBURST;
wire [1 : 0] DATA_C_AWLOCK;
wire [3 : 0] DATA_C_AWCACHE;
wire [2 : 0] DATA_C_AWPROT;
wire [3 : 0] DATA_C_AWQOS;
wire [3 : 0] DATA_C_AWREGION;
wire [0 : 0] DATA_C_AWUSER;
wire  DATA_C_WVALID;
wire  DATA_C_WREADY;
wire [31 : 0] DATA_C_WDATA;
wire [3 : 0] DATA_C_WSTRB;
wire  DATA_C_WLAST;
wire [0 : 0] DATA_C_WID;
wire [0 : 0] DATA_C_WUSER;
wire  DATA_C_ARVALID;
wire  DATA_C_ARREADY;
wire [31 : 0] DATA_C_ARADDR;
wire [0 : 0] DATA_C_ARID;
wire [7 : 0] DATA_C_ARLEN;
wire [2 : 0] DATA_C_ARSIZE;
wire [1 : 0] DATA_C_ARBURST;
wire [1 : 0] DATA_C_ARLOCK;
wire [3 : 0] DATA_C_ARCACHE;
wire [2 : 0] DATA_C_ARPROT;
wire [3 : 0] DATA_C_ARQOS;
wire [3 : 0] DATA_C_ARREGION;
wire [0 : 0] DATA_C_ARUSER;
wire  DATA_C_RVALID;
wire  DATA_C_RREADY;
wire [31 : 0] DATA_C_RDATA;
wire  DATA_C_RLAST;
wire [0 : 0] DATA_C_RID;
wire [0 : 0] DATA_C_RUSER;
wire [1 : 0] DATA_C_RRESP;
wire  DATA_C_BVALID;
wire  DATA_C_BREADY;
wire [1 : 0] DATA_C_BRESP;
wire [0 : 0] DATA_C_BID;
wire [0 : 0] DATA_C_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire CTL_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_CTL_AWADDR(CTL_AWADDR),
    .s_axi_CTL_AWVALID(CTL_AWVALID),
    .s_axi_CTL_AWREADY(CTL_AWREADY),
    .s_axi_CTL_WVALID(CTL_WVALID),
    .s_axi_CTL_WREADY(CTL_WREADY),
    .s_axi_CTL_WDATA(CTL_WDATA),
    .s_axi_CTL_WSTRB(CTL_WSTRB),
    .s_axi_CTL_ARADDR(CTL_ARADDR),
    .s_axi_CTL_ARVALID(CTL_ARVALID),
    .s_axi_CTL_ARREADY(CTL_ARREADY),
    .s_axi_CTL_RVALID(CTL_RVALID),
    .s_axi_CTL_RREADY(CTL_RREADY),
    .s_axi_CTL_RDATA(CTL_RDATA),
    .s_axi_CTL_RRESP(CTL_RRESP),
    .s_axi_CTL_BVALID(CTL_BVALID),
    .s_axi_CTL_BREADY(CTL_BREADY),
    .s_axi_CTL_BRESP(CTL_BRESP),
    .interrupt(CTL_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_DATA_A_AWVALID(DATA_A_AWVALID),
    .m_axi_DATA_A_AWREADY(DATA_A_AWREADY),
    .m_axi_DATA_A_AWADDR(DATA_A_AWADDR),
    .m_axi_DATA_A_AWID(DATA_A_AWID),
    .m_axi_DATA_A_AWLEN(DATA_A_AWLEN),
    .m_axi_DATA_A_AWSIZE(DATA_A_AWSIZE),
    .m_axi_DATA_A_AWBURST(DATA_A_AWBURST),
    .m_axi_DATA_A_AWLOCK(DATA_A_AWLOCK),
    .m_axi_DATA_A_AWCACHE(DATA_A_AWCACHE),
    .m_axi_DATA_A_AWPROT(DATA_A_AWPROT),
    .m_axi_DATA_A_AWQOS(DATA_A_AWQOS),
    .m_axi_DATA_A_AWREGION(DATA_A_AWREGION),
    .m_axi_DATA_A_AWUSER(DATA_A_AWUSER),
    .m_axi_DATA_A_WVALID(DATA_A_WVALID),
    .m_axi_DATA_A_WREADY(DATA_A_WREADY),
    .m_axi_DATA_A_WDATA(DATA_A_WDATA),
    .m_axi_DATA_A_WSTRB(DATA_A_WSTRB),
    .m_axi_DATA_A_WLAST(DATA_A_WLAST),
    .m_axi_DATA_A_WID(DATA_A_WID),
    .m_axi_DATA_A_WUSER(DATA_A_WUSER),
    .m_axi_DATA_A_ARVALID(DATA_A_ARVALID),
    .m_axi_DATA_A_ARREADY(DATA_A_ARREADY),
    .m_axi_DATA_A_ARADDR(DATA_A_ARADDR),
    .m_axi_DATA_A_ARID(DATA_A_ARID),
    .m_axi_DATA_A_ARLEN(DATA_A_ARLEN),
    .m_axi_DATA_A_ARSIZE(DATA_A_ARSIZE),
    .m_axi_DATA_A_ARBURST(DATA_A_ARBURST),
    .m_axi_DATA_A_ARLOCK(DATA_A_ARLOCK),
    .m_axi_DATA_A_ARCACHE(DATA_A_ARCACHE),
    .m_axi_DATA_A_ARPROT(DATA_A_ARPROT),
    .m_axi_DATA_A_ARQOS(DATA_A_ARQOS),
    .m_axi_DATA_A_ARREGION(DATA_A_ARREGION),
    .m_axi_DATA_A_ARUSER(DATA_A_ARUSER),
    .m_axi_DATA_A_RVALID(DATA_A_RVALID),
    .m_axi_DATA_A_RREADY(DATA_A_RREADY),
    .m_axi_DATA_A_RDATA(DATA_A_RDATA),
    .m_axi_DATA_A_RLAST(DATA_A_RLAST),
    .m_axi_DATA_A_RID(DATA_A_RID),
    .m_axi_DATA_A_RUSER(DATA_A_RUSER),
    .m_axi_DATA_A_RRESP(DATA_A_RRESP),
    .m_axi_DATA_A_BVALID(DATA_A_BVALID),
    .m_axi_DATA_A_BREADY(DATA_A_BREADY),
    .m_axi_DATA_A_BRESP(DATA_A_BRESP),
    .m_axi_DATA_A_BID(DATA_A_BID),
    .m_axi_DATA_A_BUSER(DATA_A_BUSER),
    .m_axi_DATA_B_AWVALID(DATA_B_AWVALID),
    .m_axi_DATA_B_AWREADY(DATA_B_AWREADY),
    .m_axi_DATA_B_AWADDR(DATA_B_AWADDR),
    .m_axi_DATA_B_AWID(DATA_B_AWID),
    .m_axi_DATA_B_AWLEN(DATA_B_AWLEN),
    .m_axi_DATA_B_AWSIZE(DATA_B_AWSIZE),
    .m_axi_DATA_B_AWBURST(DATA_B_AWBURST),
    .m_axi_DATA_B_AWLOCK(DATA_B_AWLOCK),
    .m_axi_DATA_B_AWCACHE(DATA_B_AWCACHE),
    .m_axi_DATA_B_AWPROT(DATA_B_AWPROT),
    .m_axi_DATA_B_AWQOS(DATA_B_AWQOS),
    .m_axi_DATA_B_AWREGION(DATA_B_AWREGION),
    .m_axi_DATA_B_AWUSER(DATA_B_AWUSER),
    .m_axi_DATA_B_WVALID(DATA_B_WVALID),
    .m_axi_DATA_B_WREADY(DATA_B_WREADY),
    .m_axi_DATA_B_WDATA(DATA_B_WDATA),
    .m_axi_DATA_B_WSTRB(DATA_B_WSTRB),
    .m_axi_DATA_B_WLAST(DATA_B_WLAST),
    .m_axi_DATA_B_WID(DATA_B_WID),
    .m_axi_DATA_B_WUSER(DATA_B_WUSER),
    .m_axi_DATA_B_ARVALID(DATA_B_ARVALID),
    .m_axi_DATA_B_ARREADY(DATA_B_ARREADY),
    .m_axi_DATA_B_ARADDR(DATA_B_ARADDR),
    .m_axi_DATA_B_ARID(DATA_B_ARID),
    .m_axi_DATA_B_ARLEN(DATA_B_ARLEN),
    .m_axi_DATA_B_ARSIZE(DATA_B_ARSIZE),
    .m_axi_DATA_B_ARBURST(DATA_B_ARBURST),
    .m_axi_DATA_B_ARLOCK(DATA_B_ARLOCK),
    .m_axi_DATA_B_ARCACHE(DATA_B_ARCACHE),
    .m_axi_DATA_B_ARPROT(DATA_B_ARPROT),
    .m_axi_DATA_B_ARQOS(DATA_B_ARQOS),
    .m_axi_DATA_B_ARREGION(DATA_B_ARREGION),
    .m_axi_DATA_B_ARUSER(DATA_B_ARUSER),
    .m_axi_DATA_B_RVALID(DATA_B_RVALID),
    .m_axi_DATA_B_RREADY(DATA_B_RREADY),
    .m_axi_DATA_B_RDATA(DATA_B_RDATA),
    .m_axi_DATA_B_RLAST(DATA_B_RLAST),
    .m_axi_DATA_B_RID(DATA_B_RID),
    .m_axi_DATA_B_RUSER(DATA_B_RUSER),
    .m_axi_DATA_B_RRESP(DATA_B_RRESP),
    .m_axi_DATA_B_BVALID(DATA_B_BVALID),
    .m_axi_DATA_B_BREADY(DATA_B_BREADY),
    .m_axi_DATA_B_BRESP(DATA_B_BRESP),
    .m_axi_DATA_B_BID(DATA_B_BID),
    .m_axi_DATA_B_BUSER(DATA_B_BUSER),
    .m_axi_DATA_C_AWVALID(DATA_C_AWVALID),
    .m_axi_DATA_C_AWREADY(DATA_C_AWREADY),
    .m_axi_DATA_C_AWADDR(DATA_C_AWADDR),
    .m_axi_DATA_C_AWID(DATA_C_AWID),
    .m_axi_DATA_C_AWLEN(DATA_C_AWLEN),
    .m_axi_DATA_C_AWSIZE(DATA_C_AWSIZE),
    .m_axi_DATA_C_AWBURST(DATA_C_AWBURST),
    .m_axi_DATA_C_AWLOCK(DATA_C_AWLOCK),
    .m_axi_DATA_C_AWCACHE(DATA_C_AWCACHE),
    .m_axi_DATA_C_AWPROT(DATA_C_AWPROT),
    .m_axi_DATA_C_AWQOS(DATA_C_AWQOS),
    .m_axi_DATA_C_AWREGION(DATA_C_AWREGION),
    .m_axi_DATA_C_AWUSER(DATA_C_AWUSER),
    .m_axi_DATA_C_WVALID(DATA_C_WVALID),
    .m_axi_DATA_C_WREADY(DATA_C_WREADY),
    .m_axi_DATA_C_WDATA(DATA_C_WDATA),
    .m_axi_DATA_C_WSTRB(DATA_C_WSTRB),
    .m_axi_DATA_C_WLAST(DATA_C_WLAST),
    .m_axi_DATA_C_WID(DATA_C_WID),
    .m_axi_DATA_C_WUSER(DATA_C_WUSER),
    .m_axi_DATA_C_ARVALID(DATA_C_ARVALID),
    .m_axi_DATA_C_ARREADY(DATA_C_ARREADY),
    .m_axi_DATA_C_ARADDR(DATA_C_ARADDR),
    .m_axi_DATA_C_ARID(DATA_C_ARID),
    .m_axi_DATA_C_ARLEN(DATA_C_ARLEN),
    .m_axi_DATA_C_ARSIZE(DATA_C_ARSIZE),
    .m_axi_DATA_C_ARBURST(DATA_C_ARBURST),
    .m_axi_DATA_C_ARLOCK(DATA_C_ARLOCK),
    .m_axi_DATA_C_ARCACHE(DATA_C_ARCACHE),
    .m_axi_DATA_C_ARPROT(DATA_C_ARPROT),
    .m_axi_DATA_C_ARQOS(DATA_C_ARQOS),
    .m_axi_DATA_C_ARREGION(DATA_C_ARREGION),
    .m_axi_DATA_C_ARUSER(DATA_C_ARUSER),
    .m_axi_DATA_C_RVALID(DATA_C_RVALID),
    .m_axi_DATA_C_RREADY(DATA_C_RREADY),
    .m_axi_DATA_C_RDATA(DATA_C_RDATA),
    .m_axi_DATA_C_RLAST(DATA_C_RLAST),
    .m_axi_DATA_C_RID(DATA_C_RID),
    .m_axi_DATA_C_RUSER(DATA_C_RUSER),
    .m_axi_DATA_C_RRESP(DATA_C_RRESP),
    .m_axi_DATA_C_BVALID(DATA_C_BVALID),
    .m_axi_DATA_C_BREADY(DATA_C_BREADY),
    .m_axi_DATA_C_BRESP(DATA_C_BRESP),
    .m_axi_DATA_C_BID(DATA_C_BID),
    .m_axi_DATA_C_BUSER(DATA_C_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & CTL_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end



























wire    AESL_axi_master_DATA_A_ready;
wire    AESL_axi_master_DATA_A_done;
wire [32 - 1:0] a_0;
wire [32 - 1:0] a_1;
wire [32 - 1:0] a_2;
wire [32 - 1:0] a_3;
wire [32 - 1:0] a_4;
wire [32 - 1:0] a_5;
wire [32 - 1:0] a_6;
wire [32 - 1:0] a_7;
AESL_axi_master_DATA_A AESL_AXI_MASTER_DATA_A(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_DATA_A_AWVALID (DATA_A_AWVALID),
    .TRAN_DATA_A_AWREADY (DATA_A_AWREADY),
    .TRAN_DATA_A_AWADDR (DATA_A_AWADDR),
    .TRAN_DATA_A_AWID (DATA_A_AWID),
    .TRAN_DATA_A_AWLEN (DATA_A_AWLEN),
    .TRAN_DATA_A_AWSIZE (DATA_A_AWSIZE),
    .TRAN_DATA_A_AWBURST (DATA_A_AWBURST),
    .TRAN_DATA_A_AWLOCK (DATA_A_AWLOCK),
    .TRAN_DATA_A_AWCACHE (DATA_A_AWCACHE),
    .TRAN_DATA_A_AWPROT (DATA_A_AWPROT),
    .TRAN_DATA_A_AWQOS (DATA_A_AWQOS),
    .TRAN_DATA_A_AWREGION (DATA_A_AWREGION),
    .TRAN_DATA_A_AWUSER (DATA_A_AWUSER),
    .TRAN_DATA_A_WVALID (DATA_A_WVALID),
    .TRAN_DATA_A_WREADY (DATA_A_WREADY),
    .TRAN_DATA_A_WDATA (DATA_A_WDATA),
    .TRAN_DATA_A_WSTRB (DATA_A_WSTRB),
    .TRAN_DATA_A_WLAST (DATA_A_WLAST),
    .TRAN_DATA_A_WID (DATA_A_WID),
    .TRAN_DATA_A_WUSER (DATA_A_WUSER),
    .TRAN_DATA_A_ARVALID (DATA_A_ARVALID),
    .TRAN_DATA_A_ARREADY (DATA_A_ARREADY),
    .TRAN_DATA_A_ARADDR (DATA_A_ARADDR),
    .TRAN_DATA_A_ARID (DATA_A_ARID),
    .TRAN_DATA_A_ARLEN (DATA_A_ARLEN),
    .TRAN_DATA_A_ARSIZE (DATA_A_ARSIZE),
    .TRAN_DATA_A_ARBURST (DATA_A_ARBURST),
    .TRAN_DATA_A_ARLOCK (DATA_A_ARLOCK),
    .TRAN_DATA_A_ARCACHE (DATA_A_ARCACHE),
    .TRAN_DATA_A_ARPROT (DATA_A_ARPROT),
    .TRAN_DATA_A_ARQOS (DATA_A_ARQOS),
    .TRAN_DATA_A_ARREGION (DATA_A_ARREGION),
    .TRAN_DATA_A_ARUSER (DATA_A_ARUSER),
    .TRAN_DATA_A_RVALID (DATA_A_RVALID),
    .TRAN_DATA_A_RREADY (DATA_A_RREADY),
    .TRAN_DATA_A_RDATA (DATA_A_RDATA),
    .TRAN_DATA_A_RLAST (DATA_A_RLAST),
    .TRAN_DATA_A_RID (DATA_A_RID),
    .TRAN_DATA_A_RUSER (DATA_A_RUSER),
    .TRAN_DATA_A_RRESP (DATA_A_RRESP),
    .TRAN_DATA_A_BVALID (DATA_A_BVALID),
    .TRAN_DATA_A_BREADY (DATA_A_BREADY),
    .TRAN_DATA_A_BRESP (DATA_A_BRESP),
    .TRAN_DATA_A_BID (DATA_A_BID),
    .TRAN_DATA_A_BUSER (DATA_A_BUSER),
    .TRAN_DATA_A_a_0 (a_0),
    .TRAN_DATA_A_a_1 (a_1),
    .TRAN_DATA_A_a_2 (a_2),
    .TRAN_DATA_A_a_3 (a_3),
    .TRAN_DATA_A_a_4 (a_4),
    .TRAN_DATA_A_a_5 (a_5),
    .TRAN_DATA_A_a_6 (a_6),
    .TRAN_DATA_A_a_7 (a_7),
    .ready (AESL_axi_master_DATA_A_ready),
    .done  (AESL_axi_master_DATA_A_done)
);
assign    AESL_axi_master_DATA_A_ready    =   ready;
assign    AESL_axi_master_DATA_A_done    =   AESL_done_delay;
wire    AESL_axi_master_DATA_B_ready;
wire    AESL_axi_master_DATA_B_done;
wire [32 - 1:0] b_0;
wire [32 - 1:0] b_1;
wire [32 - 1:0] b_2;
wire [32 - 1:0] b_3;
wire [32 - 1:0] b_4;
wire [32 - 1:0] b_5;
wire [32 - 1:0] b_6;
wire [32 - 1:0] b_7;
AESL_axi_master_DATA_B AESL_AXI_MASTER_DATA_B(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_DATA_B_AWVALID (DATA_B_AWVALID),
    .TRAN_DATA_B_AWREADY (DATA_B_AWREADY),
    .TRAN_DATA_B_AWADDR (DATA_B_AWADDR),
    .TRAN_DATA_B_AWID (DATA_B_AWID),
    .TRAN_DATA_B_AWLEN (DATA_B_AWLEN),
    .TRAN_DATA_B_AWSIZE (DATA_B_AWSIZE),
    .TRAN_DATA_B_AWBURST (DATA_B_AWBURST),
    .TRAN_DATA_B_AWLOCK (DATA_B_AWLOCK),
    .TRAN_DATA_B_AWCACHE (DATA_B_AWCACHE),
    .TRAN_DATA_B_AWPROT (DATA_B_AWPROT),
    .TRAN_DATA_B_AWQOS (DATA_B_AWQOS),
    .TRAN_DATA_B_AWREGION (DATA_B_AWREGION),
    .TRAN_DATA_B_AWUSER (DATA_B_AWUSER),
    .TRAN_DATA_B_WVALID (DATA_B_WVALID),
    .TRAN_DATA_B_WREADY (DATA_B_WREADY),
    .TRAN_DATA_B_WDATA (DATA_B_WDATA),
    .TRAN_DATA_B_WSTRB (DATA_B_WSTRB),
    .TRAN_DATA_B_WLAST (DATA_B_WLAST),
    .TRAN_DATA_B_WID (DATA_B_WID),
    .TRAN_DATA_B_WUSER (DATA_B_WUSER),
    .TRAN_DATA_B_ARVALID (DATA_B_ARVALID),
    .TRAN_DATA_B_ARREADY (DATA_B_ARREADY),
    .TRAN_DATA_B_ARADDR (DATA_B_ARADDR),
    .TRAN_DATA_B_ARID (DATA_B_ARID),
    .TRAN_DATA_B_ARLEN (DATA_B_ARLEN),
    .TRAN_DATA_B_ARSIZE (DATA_B_ARSIZE),
    .TRAN_DATA_B_ARBURST (DATA_B_ARBURST),
    .TRAN_DATA_B_ARLOCK (DATA_B_ARLOCK),
    .TRAN_DATA_B_ARCACHE (DATA_B_ARCACHE),
    .TRAN_DATA_B_ARPROT (DATA_B_ARPROT),
    .TRAN_DATA_B_ARQOS (DATA_B_ARQOS),
    .TRAN_DATA_B_ARREGION (DATA_B_ARREGION),
    .TRAN_DATA_B_ARUSER (DATA_B_ARUSER),
    .TRAN_DATA_B_RVALID (DATA_B_RVALID),
    .TRAN_DATA_B_RREADY (DATA_B_RREADY),
    .TRAN_DATA_B_RDATA (DATA_B_RDATA),
    .TRAN_DATA_B_RLAST (DATA_B_RLAST),
    .TRAN_DATA_B_RID (DATA_B_RID),
    .TRAN_DATA_B_RUSER (DATA_B_RUSER),
    .TRAN_DATA_B_RRESP (DATA_B_RRESP),
    .TRAN_DATA_B_BVALID (DATA_B_BVALID),
    .TRAN_DATA_B_BREADY (DATA_B_BREADY),
    .TRAN_DATA_B_BRESP (DATA_B_BRESP),
    .TRAN_DATA_B_BID (DATA_B_BID),
    .TRAN_DATA_B_BUSER (DATA_B_BUSER),
    .TRAN_DATA_B_b_0 (b_0),
    .TRAN_DATA_B_b_1 (b_1),
    .TRAN_DATA_B_b_2 (b_2),
    .TRAN_DATA_B_b_3 (b_3),
    .TRAN_DATA_B_b_4 (b_4),
    .TRAN_DATA_B_b_5 (b_5),
    .TRAN_DATA_B_b_6 (b_6),
    .TRAN_DATA_B_b_7 (b_7),
    .ready (AESL_axi_master_DATA_B_ready),
    .done  (AESL_axi_master_DATA_B_done)
);
assign    AESL_axi_master_DATA_B_ready    =   ready;
assign    AESL_axi_master_DATA_B_done    =   AESL_done_delay;
wire    AESL_axi_master_DATA_C_ready;
wire    AESL_axi_master_DATA_C_done;
wire [32 - 1:0] c_0;
wire [32 - 1:0] c_1;
wire [32 - 1:0] c_2;
wire [32 - 1:0] c_3;
wire [32 - 1:0] c_4;
wire [32 - 1:0] c_5;
wire [32 - 1:0] c_6;
wire [32 - 1:0] c_7;
AESL_axi_master_DATA_C AESL_AXI_MASTER_DATA_C(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_DATA_C_AWVALID (DATA_C_AWVALID),
    .TRAN_DATA_C_AWREADY (DATA_C_AWREADY),
    .TRAN_DATA_C_AWADDR (DATA_C_AWADDR),
    .TRAN_DATA_C_AWID (DATA_C_AWID),
    .TRAN_DATA_C_AWLEN (DATA_C_AWLEN),
    .TRAN_DATA_C_AWSIZE (DATA_C_AWSIZE),
    .TRAN_DATA_C_AWBURST (DATA_C_AWBURST),
    .TRAN_DATA_C_AWLOCK (DATA_C_AWLOCK),
    .TRAN_DATA_C_AWCACHE (DATA_C_AWCACHE),
    .TRAN_DATA_C_AWPROT (DATA_C_AWPROT),
    .TRAN_DATA_C_AWQOS (DATA_C_AWQOS),
    .TRAN_DATA_C_AWREGION (DATA_C_AWREGION),
    .TRAN_DATA_C_AWUSER (DATA_C_AWUSER),
    .TRAN_DATA_C_WVALID (DATA_C_WVALID),
    .TRAN_DATA_C_WREADY (DATA_C_WREADY),
    .TRAN_DATA_C_WDATA (DATA_C_WDATA),
    .TRAN_DATA_C_WSTRB (DATA_C_WSTRB),
    .TRAN_DATA_C_WLAST (DATA_C_WLAST),
    .TRAN_DATA_C_WID (DATA_C_WID),
    .TRAN_DATA_C_WUSER (DATA_C_WUSER),
    .TRAN_DATA_C_ARVALID (DATA_C_ARVALID),
    .TRAN_DATA_C_ARREADY (DATA_C_ARREADY),
    .TRAN_DATA_C_ARADDR (DATA_C_ARADDR),
    .TRAN_DATA_C_ARID (DATA_C_ARID),
    .TRAN_DATA_C_ARLEN (DATA_C_ARLEN),
    .TRAN_DATA_C_ARSIZE (DATA_C_ARSIZE),
    .TRAN_DATA_C_ARBURST (DATA_C_ARBURST),
    .TRAN_DATA_C_ARLOCK (DATA_C_ARLOCK),
    .TRAN_DATA_C_ARCACHE (DATA_C_ARCACHE),
    .TRAN_DATA_C_ARPROT (DATA_C_ARPROT),
    .TRAN_DATA_C_ARQOS (DATA_C_ARQOS),
    .TRAN_DATA_C_ARREGION (DATA_C_ARREGION),
    .TRAN_DATA_C_ARUSER (DATA_C_ARUSER),
    .TRAN_DATA_C_RVALID (DATA_C_RVALID),
    .TRAN_DATA_C_RREADY (DATA_C_RREADY),
    .TRAN_DATA_C_RDATA (DATA_C_RDATA),
    .TRAN_DATA_C_RLAST (DATA_C_RLAST),
    .TRAN_DATA_C_RID (DATA_C_RID),
    .TRAN_DATA_C_RUSER (DATA_C_RUSER),
    .TRAN_DATA_C_RRESP (DATA_C_RRESP),
    .TRAN_DATA_C_BVALID (DATA_C_BVALID),
    .TRAN_DATA_C_BREADY (DATA_C_BREADY),
    .TRAN_DATA_C_BRESP (DATA_C_BRESP),
    .TRAN_DATA_C_BID (DATA_C_BID),
    .TRAN_DATA_C_BUSER (DATA_C_BUSER),
    .TRAN_DATA_C_c_0 (c_0),
    .TRAN_DATA_C_c_1 (c_1),
    .TRAN_DATA_C_c_2 (c_2),
    .TRAN_DATA_C_c_3 (c_3),
    .TRAN_DATA_C_c_4 (c_4),
    .TRAN_DATA_C_c_5 (c_5),
    .TRAN_DATA_C_c_6 (c_6),
    .TRAN_DATA_C_c_7 (c_7),
    .ready (AESL_axi_master_DATA_C_ready),
    .done  (AESL_axi_master_DATA_C_done)
);
assign    AESL_axi_master_DATA_C_ready    =   ready;
assign    AESL_axi_master_DATA_C_done    =   AESL_done_delay;

AESL_axi_slave_CTL AESL_AXI_SLAVE_CTL(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_CTL_AWADDR (CTL_AWADDR),
    .TRAN_s_axi_CTL_AWVALID (CTL_AWVALID),
    .TRAN_s_axi_CTL_AWREADY (CTL_AWREADY),
    .TRAN_s_axi_CTL_WVALID (CTL_WVALID),
    .TRAN_s_axi_CTL_WREADY (CTL_WREADY),
    .TRAN_s_axi_CTL_WDATA (CTL_WDATA),
    .TRAN_s_axi_CTL_WSTRB (CTL_WSTRB),
    .TRAN_s_axi_CTL_ARADDR (CTL_ARADDR),
    .TRAN_s_axi_CTL_ARVALID (CTL_ARVALID),
    .TRAN_s_axi_CTL_ARREADY (CTL_ARREADY),
    .TRAN_s_axi_CTL_RVALID (CTL_RVALID),
    .TRAN_s_axi_CTL_RREADY (CTL_RREADY),
    .TRAN_s_axi_CTL_RDATA (CTL_RDATA),
    .TRAN_s_axi_CTL_RRESP (CTL_RRESP),
    .TRAN_s_axi_CTL_BVALID (CTL_BVALID),
    .TRAN_s_axi_CTL_BREADY (CTL_BREADY),
    .TRAN_s_axi_CTL_BRESP (CTL_BRESP),
    .TRAN_CTL_interrupt (CTL_INTERRUPT),
    .TRAN_a_0 (a_0),
    .TRAN_a_1 (a_1),
    .TRAN_a_2 (a_2),
    .TRAN_a_3 (a_3),
    .TRAN_a_4 (a_4),
    .TRAN_a_5 (a_5),
    .TRAN_a_6 (a_6),
    .TRAN_a_7 (a_7),
    .TRAN_b_0 (b_0),
    .TRAN_b_1 (b_1),
    .TRAN_b_2 (b_2),
    .TRAN_b_3 (b_3),
    .TRAN_b_4 (b_4),
    .TRAN_b_5 (b_5),
    .TRAN_b_6 (b_6),
    .TRAN_b_7 (b_7),
    .TRAN_c_0 (c_0),
    .TRAN_c_1 (c_1),
    .TRAN_c_2 (c_2),
    .TRAN_c_3 (c_3),
    .TRAN_c_4 (c_4),
    .TRAN_c_5 (c_5),
    .TRAN_c_6 (c_6),
    .TRAN_c_7 (c_7),
    .TRAN_CTL_write_data_finish(CTL_write_data_finish),
    .TRAN_CTL_ready_out (AESL_ready),
    .TRAN_CTL_ready_in (AESL_slave_ready),
    .TRAN_CTL_done_out (AESL_slave_output_done),
    .TRAN_CTL_idle_out (AESL_idle),
    .TRAN_CTL_write_start_in     (AESL_slave_write_start_in),
    .TRAN_CTL_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_CTL_transaction_done_in (AESL_done_delay),
    .TRAN_CTL_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_DATA_A;
reg [31:0] size_DATA_A;
reg [31:0] size_DATA_A_backup;
reg end_DATA_B;
reg [31:0] size_DATA_B;
reg [31:0] size_DATA_B_backup;
reg end_a_0;
reg [31:0] size_a_0;
reg [31:0] size_a_0_backup;
reg end_a_1;
reg [31:0] size_a_1;
reg [31:0] size_a_1_backup;
reg end_a_2;
reg [31:0] size_a_2;
reg [31:0] size_a_2_backup;
reg end_a_3;
reg [31:0] size_a_3;
reg [31:0] size_a_3_backup;
reg end_a_4;
reg [31:0] size_a_4;
reg [31:0] size_a_4_backup;
reg end_a_5;
reg [31:0] size_a_5;
reg [31:0] size_a_5_backup;
reg end_a_6;
reg [31:0] size_a_6;
reg [31:0] size_a_6_backup;
reg end_a_7;
reg [31:0] size_a_7;
reg [31:0] size_a_7_backup;
reg end_b_0;
reg [31:0] size_b_0;
reg [31:0] size_b_0_backup;
reg end_b_1;
reg [31:0] size_b_1;
reg [31:0] size_b_1_backup;
reg end_b_2;
reg [31:0] size_b_2;
reg [31:0] size_b_2_backup;
reg end_b_3;
reg [31:0] size_b_3;
reg [31:0] size_b_3_backup;
reg end_b_4;
reg [31:0] size_b_4;
reg [31:0] size_b_4_backup;
reg end_b_5;
reg [31:0] size_b_5;
reg [31:0] size_b_5_backup;
reg end_b_6;
reg [31:0] size_b_6;
reg [31:0] size_b_6_backup;
reg end_b_7;
reg [31:0] size_b_7;
reg [31:0] size_b_7_backup;
reg end_c_0;
reg [31:0] size_c_0;
reg [31:0] size_c_0_backup;
reg end_c_1;
reg [31:0] size_c_1;
reg [31:0] size_c_1_backup;
reg end_c_2;
reg [31:0] size_c_2;
reg [31:0] size_c_2_backup;
reg end_c_3;
reg [31:0] size_c_3;
reg [31:0] size_c_3_backup;
reg end_c_4;
reg [31:0] size_c_4;
reg [31:0] size_c_4_backup;
reg end_c_5;
reg [31:0] size_c_5;
reg [31:0] size_c_5_backup;
reg end_c_6;
reg [31:0] size_c_6;
reg [31:0] size_c_6_backup;
reg end_c_7;
reg [31:0] size_c_7;
reg [31:0] size_c_7_backup;
reg end_DATA_C;
reg [31:0] size_DATA_C;
reg [31:0] size_DATA_C_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_DATA_A;

initial begin : dump_tvout_runtime_sign_DATA_A
    integer fp;
    dump_tvout_finish_DATA_A = 0;
    fp = $fopen(`AUTOTB_TVOUT_DATA_A_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_DATA_A_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_DATA_A_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_DATA_A_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_DATA_A = 1;
end


reg dump_tvout_finish_DATA_B;

initial begin : dump_tvout_runtime_sign_DATA_B
    integer fp;
    dump_tvout_finish_DATA_B = 0;
    fp = $fopen(`AUTOTB_TVOUT_DATA_B_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_DATA_B_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_DATA_B_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_DATA_B_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_DATA_B = 1;
end


reg dump_tvout_finish_DATA_C;

initial begin : dump_tvout_runtime_sign_DATA_C
    integer fp;
    dump_tvout_finish_DATA_C = 0;
    fp = $fopen(`AUTOTB_TVOUT_DATA_C_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_DATA_C_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_DATA_C_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_DATA_C_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_DATA_C = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
