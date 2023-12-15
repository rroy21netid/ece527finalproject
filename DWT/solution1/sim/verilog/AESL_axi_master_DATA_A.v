// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_master_DATA_A (
    clk,
    reset,
    TRAN_DATA_A_AWVALID,
    TRAN_DATA_A_AWREADY,
    TRAN_DATA_A_AWADDR,
    TRAN_DATA_A_AWID,
    TRAN_DATA_A_AWLEN,
    TRAN_DATA_A_AWSIZE,
    TRAN_DATA_A_AWBURST,
    TRAN_DATA_A_AWLOCK,
    TRAN_DATA_A_AWCACHE,
    TRAN_DATA_A_AWPROT,
    TRAN_DATA_A_AWQOS,
    TRAN_DATA_A_AWREGION,
    TRAN_DATA_A_AWUSER,
    TRAN_DATA_A_WVALID,
    TRAN_DATA_A_WREADY,
    TRAN_DATA_A_WDATA,
    TRAN_DATA_A_WSTRB,
    TRAN_DATA_A_WLAST,
    TRAN_DATA_A_WID,
    TRAN_DATA_A_WUSER,
    TRAN_DATA_A_ARVALID,
    TRAN_DATA_A_ARREADY,
    TRAN_DATA_A_ARADDR,
    TRAN_DATA_A_ARID,
    TRAN_DATA_A_ARLEN,
    TRAN_DATA_A_ARSIZE,
    TRAN_DATA_A_ARBURST,
    TRAN_DATA_A_ARLOCK,
    TRAN_DATA_A_ARCACHE,
    TRAN_DATA_A_ARPROT,
    TRAN_DATA_A_ARQOS,
    TRAN_DATA_A_ARREGION,
    TRAN_DATA_A_ARUSER,
    TRAN_DATA_A_RVALID,
    TRAN_DATA_A_RREADY,
    TRAN_DATA_A_RDATA,
    TRAN_DATA_A_RLAST,
    TRAN_DATA_A_RID,
    TRAN_DATA_A_RUSER,
    TRAN_DATA_A_RRESP,
    TRAN_DATA_A_BVALID,
    TRAN_DATA_A_BREADY,
    TRAN_DATA_A_BRESP,
    TRAN_DATA_A_BID,
    TRAN_DATA_A_BUSER,
    TRAN_DATA_A_a_0,
    TRAN_DATA_A_a_1,
    TRAN_DATA_A_a_2,
    TRAN_DATA_A_a_3,
    TRAN_DATA_A_a_4,
    TRAN_DATA_A_a_5,
    TRAN_DATA_A_a_6,
    TRAN_DATA_A_a_7,
    ready,
    done
    );

//------------------------Parameter----------------------
`define TV_IN_DATA_A "../tv/cdatafile/c.DWT_Accel.autotvin_DATA_A.dat"
`define TV_OUT_DATA_A "../tv/rtldatafile/rtl.DWT_Accel.autotvout_DATA_A.dat"
 parameter DATA_A_ADDR_BITWIDTH = 32'd 32;
 parameter DATA_A_AWUSER_BITWIDTH = 32'd 1;
 parameter DATA_A_DATA_BITWIDTH = 32'd 32;
 parameter DATA_A_WUSER_BITWIDTH = 32'd 1;
 parameter DATA_A_ID_BITWIDTH = 32'd 1;
 parameter DATA_A_RUSER_BITWIDTH = 32'd 1;
 parameter DATA_A_BUSER_BITWIDTH = 32'd 1;
 parameter   FIFO_DEPTH            =   1 + 1;
 parameter   mem_page_num            =   32'd 3;
 parameter   FIFO_DEPTH_ADDR_WIDTH   =    32'd 32;
parameter DATA_A_C_DATA_BITWIDTH = 32'd 8;
parameter DATA_A_mem_depth = 32'd 307200;
parameter ReadReqLatency = 32'd 1;
parameter WriteReqLatency = 32'd 1;
// Input and Output
input clk;
input reset;
input  TRAN_DATA_A_AWVALID;
output  TRAN_DATA_A_AWREADY;
input [DATA_A_ADDR_BITWIDTH - 1 : 0] TRAN_DATA_A_AWADDR;
input [DATA_A_ID_BITWIDTH - 1 : 0] TRAN_DATA_A_AWID;
input [8 - 1 : 0] TRAN_DATA_A_AWLEN;
input [3 - 1 : 0] TRAN_DATA_A_AWSIZE;
input [2 - 1 : 0] TRAN_DATA_A_AWBURST;
input [2 - 1 : 0] TRAN_DATA_A_AWLOCK;
input [4 - 1 : 0] TRAN_DATA_A_AWCACHE;
input [3 - 1 : 0] TRAN_DATA_A_AWPROT;
input [4 - 1 : 0] TRAN_DATA_A_AWQOS;
input [4 - 1 : 0] TRAN_DATA_A_AWREGION;
input [DATA_A_AWUSER_BITWIDTH - 1 : 0] TRAN_DATA_A_AWUSER;
input  TRAN_DATA_A_WVALID;
output  TRAN_DATA_A_WREADY;
input [DATA_A_DATA_BITWIDTH - 1 : 0] TRAN_DATA_A_WDATA;
input [DATA_A_DATA_BITWIDTH/8 - 1 : 0] TRAN_DATA_A_WSTRB;
input  TRAN_DATA_A_WLAST;
input  TRAN_DATA_A_WID;
input [DATA_A_WUSER_BITWIDTH - 1 : 0] TRAN_DATA_A_WUSER;
input  TRAN_DATA_A_ARVALID;
output  TRAN_DATA_A_ARREADY;
input [DATA_A_ADDR_BITWIDTH - 1 : 0] TRAN_DATA_A_ARADDR;
input [DATA_A_ID_BITWIDTH - 1 : 0] TRAN_DATA_A_ARID;
input [8 - 1 : 0] TRAN_DATA_A_ARLEN;
input [3 - 1 : 0] TRAN_DATA_A_ARSIZE;
input [2 - 1 : 0] TRAN_DATA_A_ARBURST;
input [2 - 1 : 0] TRAN_DATA_A_ARLOCK;
input [4 - 1 : 0] TRAN_DATA_A_ARCACHE;
input [3 - 1 : 0] TRAN_DATA_A_ARPROT;
input [4 - 1 : 0] TRAN_DATA_A_ARQOS;
input [4 - 1 : 0] TRAN_DATA_A_ARREGION;
input  TRAN_DATA_A_ARUSER;
output  TRAN_DATA_A_RVALID;
input  TRAN_DATA_A_RREADY;
output [DATA_A_DATA_BITWIDTH - 1 : 0] TRAN_DATA_A_RDATA;
output  TRAN_DATA_A_RLAST;
output [DATA_A_ID_BITWIDTH - 1 : 0] TRAN_DATA_A_RID;
output [DATA_A_RUSER_BITWIDTH - 1 : 0] TRAN_DATA_A_RUSER;
output [2 - 1 : 0] TRAN_DATA_A_RRESP;
output  TRAN_DATA_A_BVALID;
input  TRAN_DATA_A_BREADY;
output [2 - 1 : 0] TRAN_DATA_A_BRESP;
output [DATA_A_ID_BITWIDTH - 1 : 0] TRAN_DATA_A_BID;
output [DATA_A_BUSER_BITWIDTH - 1 : 0] TRAN_DATA_A_BUSER;
output [32 - 1 : 0] TRAN_DATA_A_a_0;
output [32 - 1 : 0] TRAN_DATA_A_a_1;
output [32 - 1 : 0] TRAN_DATA_A_a_2;
output [32 - 1 : 0] TRAN_DATA_A_a_3;
output [32 - 1 : 0] TRAN_DATA_A_a_4;
output [32 - 1 : 0] TRAN_DATA_A_a_5;
output [32 - 1 : 0] TRAN_DATA_A_a_6;
output [32 - 1 : 0] TRAN_DATA_A_a_7;
input ready;
input done;

// Inner signals
// AW request fifo
reg    [DATA_A_ADDR_BITWIDTH - 1 : 0]         FIFO_AW_req_ADDR           [0 : FIFO_DEPTH - 1]; 
reg    [DATA_A_ADDR_BITWIDTH - 1 : 0]         FIFO_AW_req_ADDR_tmp; 
reg    [8 - 1 : 0]                     FIFO_AW_req_LEN           [0 : FIFO_DEPTH - 1]; 
reg    [8 - 1 : 0]                     FIFO_AW_req_LEN_tmp; 
reg    [3 - 1 : 0]                     FIFO_AW_req_SIZE           [0 : FIFO_DEPTH - 1]; 
reg    [3 - 1 : 0]                     FIFO_AW_req_SIZE_tmp; 
reg    [2 - 1 : 0]                     FIFO_AW_req_BURST           [0 : FIFO_DEPTH - 1]; 
reg    [2 - 1 : 0]                     FIFO_AW_req_BURST_tmp; 
reg    [31  : 0]                     FIFO_AW_req_transaction_number [0 : FIFO_DEPTH - 1]; 
reg    [31  : 0]                     FIFO_AW_req_cycle_number [0 : FIFO_DEPTH - 1]; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_AW_req_ptr_r = 0; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_AW_req_ptr_r_tmp = 0; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_AW_req_ptr_w = 0; 
reg    FIFO_AW_req_flag    =   0;        // '0' for empty, '1' for full 
reg    FIFO_AW_req_empty = 1; 
reg    FIFO_AW_req_read = 0; 
reg    FIFO_AW_req_full = 0; 

// AR request fifo
reg    [DATA_A_ADDR_BITWIDTH - 1 : 0]         FIFO_AR_req_ADDR           [0 : FIFO_DEPTH - 1]; 
reg    [DATA_A_ADDR_BITWIDTH - 1 : 0]         FIFO_AR_req_ADDR_tmp; 
reg    [8 - 1 : 0]                     FIFO_AR_req_LEN           [0 : FIFO_DEPTH - 1]; 
reg    [8 - 1 : 0]                     FIFO_AR_req_LEN_tmp; 
reg    [3 - 1 : 0]                     FIFO_AR_req_SIZE           [0 : FIFO_DEPTH - 1]; 
reg    [3 - 1 : 0]                     FIFO_AR_req_SIZE_tmp; 
reg    [2 - 1 : 0]                     FIFO_AR_req_BURST           [0 : FIFO_DEPTH - 1]; 
reg    [2 - 1 : 0]                     FIFO_AR_req_BURST_tmp; 
reg    [31  : 0]                     FIFO_AR_req_transaction_number [0 : FIFO_DEPTH - 1]; 
reg    [31  : 0]                     FIFO_AR_req_cycle_number [0 : FIFO_DEPTH - 1]; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_AR_req_ptr_r = 0; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_AR_req_ptr_r_tmp = 0; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_AR_req_ptr_w = 0; 
reg    FIFO_AR_req_flag    =   0;        // '0' for empty, '1' for full 
reg    FIFO_AR_req_empty = 1; 
reg    FIFO_AR_req_read = 0; 
reg    FIFO_AR_req_full = 0; 

// WDATA fifo
reg    [DATA_A_DATA_BITWIDTH - 1 : 0]         FIFO_WDATA           [0 : FIFO_DEPTH - 1]; 
reg    [DATA_A_DATA_BITWIDTH/8 - 1 : 0]       FIFO_WSTRB           [0 : FIFO_DEPTH - 1]; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_WDATA_req_ptr_r = 0; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_WDATA_req_ptr_w = 0; 
reg    FIFO_WDATA_req_flag    =   0;        // '0' for empty, '1' for full 
reg    FIFO_WDATA_req_empty = 1; 
reg    FIFO_WDATA_read = 0; 
reg    FIFO_WDATA_req_full = 0; 

// WDATA size fifo
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]         FIFO_WDATA_size           [0 : FIFO_DEPTH - 1]; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_WDATA_size_ptr_r = 0; 
reg    [FIFO_DEPTH_ADDR_WIDTH - 1 : 0]    FIFO_WDATA_size_ptr_w = 0; 
reg    FIFO_WDATA_size_flag    =   0;        // '0' for empty, '1' for full 
reg    FIFO_WDATA_size_empty = 1; 
reg    FIFO_WDATA_size_read = 0; 
reg    FIFO_WDATA_size_full = 0; 
reg    [FIFO_DEPTH_ADDR_WIDTH : 0] WDATA_size = 0; 
reg    BRESP_tmp = 0;
reg    send_one_BRESP = 0;
reg    [31 : 0] BRESP_counter = 0;

reg [DATA_A_DATA_BITWIDTH - 1:0] RDATA_tmp = 0;
reg [2 - 1:0] RRESP_tmp = 0;
reg RLAST_tmp = 0;
reg RVALID_tmp = 0;
reg [32 - 1 : 0] a_0 = 0;
reg [32 - 1 : 0] a_1 = 0;
reg [32 - 1 : 0] a_2 = 0;
reg [32 - 1 : 0] a_3 = 0;
reg [32 - 1 : 0] a_4 = 0;
reg [32 - 1 : 0] a_5 = 0;
reg [32 - 1 : 0] a_6 = 0;
reg [32 - 1 : 0] a_7 = 0;
reg [DATA_A_DATA_BITWIDTH - 1 : 0] DATA_A_mem_0 [0: DATA_A_mem_depth - 1]; 
reg [DATA_A_DATA_BITWIDTH - 1 : 0] DATA_A_mem_1 [0: DATA_A_mem_depth - 1]; 
reg [DATA_A_DATA_BITWIDTH - 1 : 0] DATA_A_mem_2 [0: DATA_A_mem_depth - 1]; 
reg [31 : 0] clk_counter ;
reg [31 : 0] current_AW_req_transaction = 0 ;
reg [31 : 0] current_AR_req_transaction = -1 ;
reg write_processing = 0;
reg [DATA_A_ADDR_BITWIDTH - 1 : 0] wr_processing_addr = 0;
reg [DATA_A_ADDR_BITWIDTH - 1 : 0] rd_processing_addr = 0;
reg [31 : 0] wr_processing_trans_num = 0;
reg [DATA_A_DATA_BITWIDTH - 1 : 0] wr_processing_data = 0;
assign TRAN_DATA_A_AWREADY    =    !FIFO_AW_req_full; 
assign TRAN_DATA_A_ARREADY    =    !FIFO_AR_req_full; 
assign TRAN_DATA_A_WREADY    =     !(FIFO_WDATA_req_full || FIFO_WDATA_size_full); 
assign TRAN_DATA_A_BVALID = (BRESP_counter == 0) ? 0 : 1;
assign TRAN_DATA_A_BRESP = BRESP_tmp;
assign TRAN_DATA_A_RDATA = RDATA_tmp;
assign TRAN_DATA_A_RRESP = RRESP_tmp;
assign TRAN_DATA_A_RLAST = RLAST_tmp;
assign TRAN_DATA_A_RVALID = RVALID_tmp;
assign    TRAN_DATA_A_a_0 = a_0;
assign    TRAN_DATA_A_a_1 = a_1;
assign    TRAN_DATA_A_a_2 = a_2;
assign    TRAN_DATA_A_a_3 = a_3;
assign    TRAN_DATA_A_a_4 = a_4;
assign    TRAN_DATA_A_a_5 = a_5;
assign    TRAN_DATA_A_a_6 = a_6;
assign    TRAN_DATA_A_a_7 = a_7;

initial begin : initialize_offset
  integer DATA_byte_num; 
  integer c_bitwidth;
  DATA_byte_num = 0; 
  c_bitwidth = DATA_A_C_DATA_BITWIDTH;
  count_c_data_byte_num_by_bitwidth (c_bitwidth , DATA_byte_num);
  a_0 <= 0 * DATA_byte_num;
  a_1 <= 38400 * DATA_byte_num;
  a_2 <= 76800 * DATA_byte_num;
  a_3 <= 115200 * DATA_byte_num;
  a_4 <= 153600 * DATA_byte_num;
  a_5 <= 192000 * DATA_byte_num;
  a_6 <= 230400 * DATA_byte_num;
  a_7 <= 268800 * DATA_byte_num;
end

initial begin : initialize_DATA_A_mem
  integer i;
  for (i = 0; i < DATA_A_mem_depth; i = i + 1) begin
      DATA_A_mem_0[i] = 0;
      DATA_A_mem_1[i] = 0;
      DATA_A_mem_2[i] = 0;
  end
end

always @ (posedge clk or reset) begin 
    if(reset === 0) begin 
        clk_counter <= 0;
    end else begin
        clk_counter <= clk_counter + 1;
    end
end

// Generate "FIFO_req_empty" and "FIFO_req_full" 
always @ (FIFO_AW_req_ptr_r or FIFO_AW_req_ptr_w or FIFO_AW_req_flag) begin 
    if(FIFO_AW_req_ptr_r == FIFO_AW_req_ptr_w) begin 
        if(FIFO_AW_req_flag) begin 
            FIFO_AW_req_full   <= 1; 
            FIFO_AW_req_empty  <= 0; 
        end else begin 
            FIFO_AW_req_full   <= 0; 
            FIFO_AW_req_empty  <= 1; 
        end 
    end else begin 
        FIFO_AW_req_full     <= 0; 
        FIFO_AW_req_empty    <= 0; 
    end 
end 

always @ (done) begin 
    if (done == 1) begin
        current_AW_req_transaction <= current_AW_req_transaction + 1;
    end 
end 

always @ (FIFO_AR_req_ptr_r or FIFO_AR_req_ptr_w or FIFO_AR_req_flag) begin 
    if(FIFO_AR_req_ptr_r == FIFO_AR_req_ptr_w) begin 
        if(FIFO_AR_req_flag) begin 
            FIFO_AR_req_full   <= 1; 
            FIFO_AR_req_empty  <= 0; 
        end else begin 
            FIFO_AR_req_full   <= 0; 
            FIFO_AR_req_empty  <= 1; 
        end 
    end else begin 
        FIFO_AR_req_full     <= 0; 
        FIFO_AR_req_empty    <= 0; 
    end 
end 

always @ (ready) begin 
    if (ready == 1) begin
        current_AR_req_transaction <= current_AR_req_transaction + 1;
    end 
end 
 
always @ (FIFO_WDATA_req_ptr_r or FIFO_WDATA_req_ptr_w or FIFO_WDATA_req_flag) begin 
    if(FIFO_WDATA_req_ptr_r == FIFO_WDATA_req_ptr_w) begin 
        if(FIFO_WDATA_req_flag) begin 
            FIFO_WDATA_req_full   <= 1; 
            FIFO_WDATA_req_empty  <= 0; 
        end else begin 
            FIFO_WDATA_req_full   <= 0; 
            FIFO_WDATA_req_empty  <= 1; 
        end 
    end else begin 
        FIFO_WDATA_req_full     <= 0; 
        FIFO_WDATA_req_empty    <= 0; 
    end 
end 
 
always @ (FIFO_WDATA_size_ptr_r or FIFO_WDATA_size_ptr_w or FIFO_WDATA_size_flag) begin 
    if(FIFO_WDATA_size_ptr_r == FIFO_WDATA_size_ptr_w) begin 
        if(FIFO_WDATA_size_flag) begin 
            FIFO_WDATA_size_full   <= 1; 
            FIFO_WDATA_size_empty  <= 0; 
        end else begin 
            FIFO_WDATA_size_full   <= 0; 
            FIFO_WDATA_size_empty  <= 1; 
        end 
    end else begin 
        FIFO_WDATA_size_full     <= 0; 
        FIFO_WDATA_size_empty    <= 0; 
    end 
end 
 
// Push RTL's req into FIFO_req 
always @ (posedge clk or reset) begin 
    if(reset === 0) begin 
        FIFO_AW_req_ptr_w <= 0; 
    end else begin 
        if(TRAN_DATA_A_AWREADY & TRAN_DATA_A_AWVALID ) begin    // RTL is sending a AW_request to the bus         
            FIFO_AW_req_SIZE [FIFO_AW_req_ptr_w]    =   TRAN_DATA_A_AWSIZE; 
            FIFO_AW_req_ADDR [FIFO_AW_req_ptr_w]    =   TRAN_DATA_A_AWADDR; 
            FIFO_AW_req_LEN  [FIFO_AW_req_ptr_w]    =   TRAN_DATA_A_AWLEN; 
            FIFO_AW_req_BURST[FIFO_AW_req_ptr_w]    =   TRAN_DATA_A_AWBURST; 
            FIFO_AW_req_transaction_number[FIFO_AW_req_ptr_w]    =   current_AW_req_transaction; 
            FIFO_AW_req_cycle_number[FIFO_AW_req_ptr_w]    =   clk_counter; 
            if(FIFO_AW_req_ptr_w != FIFO_DEPTH - 1) 
                FIFO_AW_req_ptr_w <= FIFO_AW_req_ptr_w + 1; 
            else 
                FIFO_AW_req_ptr_w <= 0; 
       end 
    end 
end 
 
always @ (posedge clk or reset) begin 
    if(reset === 0) begin 
        FIFO_AR_req_ptr_w <= 0; 
    end else begin 
        if(TRAN_DATA_A_ARREADY & TRAN_DATA_A_ARVALID ) begin    // RTL is sending a AR_request to the bus         
            FIFO_AR_req_SIZE [FIFO_AR_req_ptr_w]    =   TRAN_DATA_A_ARSIZE; 
            FIFO_AR_req_ADDR [FIFO_AR_req_ptr_w]    =   TRAN_DATA_A_ARADDR; 
            FIFO_AR_req_LEN  [FIFO_AR_req_ptr_w]    =   TRAN_DATA_A_ARLEN; 
            FIFO_AR_req_BURST[FIFO_AR_req_ptr_w]    =   TRAN_DATA_A_ARBURST; 
            FIFO_AR_req_transaction_number[FIFO_AR_req_ptr_w]    =   current_AR_req_transaction; 
            FIFO_AR_req_cycle_number[FIFO_AR_req_ptr_w]    =   clk_counter; 
            if(FIFO_AR_req_ptr_w != FIFO_DEPTH - 1) 
                FIFO_AR_req_ptr_w <= FIFO_AR_req_ptr_w + 1; 
            else 
                FIFO_AR_req_ptr_w <= 0; 
       end 
    end 
end

always @ (posedge clk or reset) begin 
    if(reset === 0) begin 
        FIFO_WDATA_req_ptr_w <= 0; 
    end else begin 
        if(TRAN_DATA_A_WREADY & TRAN_DATA_A_WVALID) begin    // RTL is sending a WDATA data 
            FIFO_WDATA [FIFO_WDATA_req_ptr_w]    <=   TRAN_DATA_A_WDATA; 
            FIFO_WSTRB [FIFO_WDATA_req_ptr_w]    <=   TRAN_DATA_A_WSTRB; 
            if(FIFO_WDATA_req_ptr_w != FIFO_DEPTH - 1) 
                FIFO_WDATA_req_ptr_w <= FIFO_WDATA_req_ptr_w + 1; 
            else 
                FIFO_WDATA_req_ptr_w <= 0; 
            if (TRAN_DATA_A_WLAST == 1 ) begin
                FIFO_WDATA_size [FIFO_WDATA_size_ptr_w] <= WDATA_size + 1;
                if(FIFO_WDATA_size_ptr_w != FIFO_DEPTH - 1) 
                    FIFO_WDATA_size_ptr_w <= FIFO_WDATA_size_ptr_w + 1; 
                else 
                    FIFO_WDATA_size_ptr_w <= 0; 
                WDATA_size <= 0;
            end else begin
                WDATA_size <= WDATA_size + 1;
            end
       end 
    end 
end

// Generate "FIFO_AW_req_flag" 
always @(posedge clk or reset) begin 
    if(reset === 0) begin 
      FIFO_AW_req_flag <= 0; 
    end else begin 
      if(TRAN_DATA_A_AWVALID && TRAN_DATA_A_AWREADY && ((FIFO_AW_req_ptr_w - FIFO_AW_req_ptr_r) % FIFO_DEPTH == FIFO_DEPTH - 1)) 
          FIFO_AW_req_flag <= 1; 
      # 0.4;
      if(FIFO_AW_req_read && !FIFO_AW_req_empty && (FIFO_AW_req_ptr_w - FIFO_AW_req_ptr_r == 0)) 
          FIFO_AW_req_flag <= 0; 
    end 
end 

// Generate "FIFO_AR_req_flag" 
always @(posedge clk or reset) begin 
    if(reset === 0) begin 
      FIFO_AR_req_flag <= 0; 
    end else begin 
      if(TRAN_DATA_A_ARVALID && TRAN_DATA_A_ARREADY && ((FIFO_AR_req_ptr_w - FIFO_AR_req_ptr_r) % FIFO_DEPTH == FIFO_DEPTH - 1)) 
          FIFO_AR_req_flag <= 1; 
      # 0.4;
      if(FIFO_AR_req_read && !FIFO_AR_req_empty && (FIFO_AR_req_ptr_w - FIFO_AR_req_ptr_r == 0)) 
          FIFO_AR_req_flag <= 0; 
    end 
end 

// Generate "FIFO_WDATA_req_flag" 
always @(posedge clk or reset) begin 
    if(reset === 0) begin 
      FIFO_WDATA_req_flag <= 0; 
    end else begin 
      if(TRAN_DATA_A_WVALID && TRAN_DATA_A_WREADY && ((FIFO_WDATA_req_ptr_w - FIFO_WDATA_req_ptr_r) % FIFO_DEPTH == FIFO_DEPTH - 1)) 
          FIFO_WDATA_req_flag <= 1; 
      # 0.4;
      if(FIFO_WDATA_read && !FIFO_WDATA_req_empty && (FIFO_WDATA_req_ptr_w - FIFO_WDATA_req_ptr_r == 0)) 
          FIFO_WDATA_req_flag <= 0; 
    end 
end 

// Generate "FIFO_WDATA_size_flag" 
always @(posedge clk or reset) begin 
    if(reset === 0) begin 
      FIFO_WDATA_size_flag <= 0; 
    end else begin 
      if(TRAN_DATA_A_WVALID && TRAN_DATA_A_WREADY && TRAN_DATA_A_WLAST && ((FIFO_WDATA_size_ptr_w - FIFO_WDATA_size_ptr_r) % FIFO_DEPTH == FIFO_DEPTH - 1)) 
          FIFO_WDATA_size_flag <= 1; 
      # 0.4;
      if(FIFO_WDATA_size_read && !FIFO_WDATA_size_empty && (FIFO_WDATA_size_ptr_w - FIFO_WDATA_size_ptr_r == 0)) 
          FIFO_WDATA_size_flag <= 0; 
    end
end 

always @(posedge clk or reset) begin 
    if(reset === 0) begin 
        FIFO_AW_req_read <= 0;
        FIFO_AW_req_ptr_r <= 0;
    end else begin 
        #0.2;
        if (FIFO_AW_req_ptr_r_tmp > FIFO_AW_req_ptr_r) begin
            FIFO_AW_req_read <= 1;
            FIFO_AW_req_ptr_r <= FIFO_AW_req_ptr_r + 1;
        end else if (FIFO_AW_req_ptr_r_tmp == 0 && FIFO_AW_req_ptr_r == FIFO_DEPTH - 1) begin
            FIFO_AW_req_read <= 1;
            FIFO_AW_req_ptr_r <= 0;
        end else begin 
            FIFO_AW_req_read <= 0;
        end
    end 
end

always @(posedge clk or reset) begin 
    if(reset === 0) begin 
        BRESP_counter <= 0;
        BRESP_tmp <= 0;
    end else begin
        if ( send_one_BRESP == 'b1 && !(BRESP_counter != 32'h0 && TRAN_DATA_A_BREADY) ) begin
            BRESP_counter <= BRESP_counter + 1;
        end else if (send_one_BRESP != 'b1 && (BRESP_counter != 32'h0 && TRAN_DATA_A_BREADY)) begin
            BRESP_counter <= BRESP_counter - 1;
        end
    end
end

initial begin : AW_request_proc
    integer counter;
    integer i;
    integer j;
    integer data_byte_size;
    integer output_length;
    integer FIFO_AW_req_transaction_tmp;
    integer FIFO_AW_req_clk_tmp;
    integer WDATA_size_tmp;
    reg [DATA_A_DATA_BITWIDTH - 1 : 0] FIFO_WDATA_tmp;
    reg [DATA_A_DATA_BITWIDTH - 1 : 0] WDATA_tmp;
    reg [DATA_A_DATA_BITWIDTH/8 - 1 : 0] FIFO_WSTRB_tmp;
    @(posedge clk);

    while (1) begin
        if (FIFO_AW_req_empty === 1 || BRESP_counter == 32) begin
            @(posedge clk);
        end else begin
            if(FIFO_AW_req_ptr_r_tmp != FIFO_DEPTH - 1)
                FIFO_AW_req_ptr_r_tmp = FIFO_AW_req_ptr_r_tmp + 1;
            else
                FIFO_AW_req_ptr_r_tmp = 0;

            FIFO_AW_req_ADDR_tmp    =  FIFO_AW_req_ADDR   [FIFO_AW_req_ptr_r]  ;
            FIFO_AW_req_SIZE_tmp    =  FIFO_AW_req_SIZE   [FIFO_AW_req_ptr_r]  ;
            FIFO_AW_req_LEN_tmp     =  FIFO_AW_req_LEN    [FIFO_AW_req_ptr_r]  ; 
            FIFO_AW_req_BURST_tmp   =  FIFO_AW_req_BURST  [FIFO_AW_req_ptr_r]  ;
            FIFO_AW_req_transaction_tmp   =  FIFO_AW_req_transaction_number[FIFO_AW_req_ptr_r]  ;
            FIFO_AW_req_clk_tmp   =  FIFO_AW_req_cycle_number[FIFO_AW_req_ptr_r]  ;
            
            while (clk_counter < FIFO_AW_req_clk_tmp + WriteReqLatency ) begin
                @(posedge clk);
            end
            
            data_byte_size = 1;
            for (i=0;i<FIFO_AW_req_SIZE_tmp; i=i+1) begin
                data_byte_size = data_byte_size * 2;
            end
            
            if (FIFO_AW_req_ADDR_tmp/data_byte_size > DATA_A_mem_depth) begin
                $display ("C:/Users/ronal/Documents/ECE527MPs/final_project/DWT/solution1/sim/verilog/AESL_axi_master_DATA_A.v: Write request address %d exceed AXI master DATA_A array depth: %d",FIFO_AW_req_ADDR_tmp/data_byte_size, DATA_A_mem_depth); 
                $finish;
            end
            
            if (FIFO_AW_req_BURST_tmp === 1) begin
                counter = 0;
                output_length = FIFO_AW_req_LEN_tmp;
                while (counter != output_length + 1) begin
                    if (FIFO_WDATA_req_empty != 1) begin 
                        FIFO_WDATA_read <= 1;
                        if(FIFO_WDATA_req_ptr_r != FIFO_DEPTH - 1)
                            FIFO_WDATA_req_ptr_r <= FIFO_WDATA_req_ptr_r + 1;
                        else
                            FIFO_WDATA_req_ptr_r <= 0;
                        FIFO_WDATA_tmp = FIFO_WDATA [FIFO_WDATA_req_ptr_r];
                        FIFO_WSTRB_tmp = FIFO_WSTRB [FIFO_WDATA_req_ptr_r];
                        for (i = 0 ; i < data_byte_size; i = i + 1) begin
                            if (FIFO_WSTRB_tmp[i] == 1) begin 
                                for (j=(i*8); j< (i+1)*8 ; j= j+1) begin
                                    WDATA_tmp[j] = FIFO_WDATA_tmp[j];
                                end
                            end else begin
                                for (j=(i*8); j< (i+1)*8 ; j= j+1) begin
                                    case(FIFO_AW_req_transaction_tmp % mem_page_num)
                                        0 : WDATA_tmp[j] = DATA_A_mem_0[FIFO_AW_req_ADDR_tmp / data_byte_size + counter][j];
                                        1 : WDATA_tmp[j] = DATA_A_mem_1[FIFO_AW_req_ADDR_tmp / data_byte_size + counter][j];
                                        2 : WDATA_tmp[j] = DATA_A_mem_2[FIFO_AW_req_ADDR_tmp / data_byte_size + counter][j];
                                        default: $display("The page_num of AXI write is not valid!");
                                    endcase
                                end
                            end
                        end
                        wr_processing_trans_num = FIFO_AW_req_transaction_tmp;
                        wr_processing_addr = FIFO_AW_req_ADDR_tmp/data_byte_size + counter;
                        write_processing = 1;
                        wr_processing_data = WDATA_tmp;
                        case(FIFO_AW_req_transaction_tmp % mem_page_num)
                            0 : DATA_A_mem_0[FIFO_AW_req_ADDR_tmp / data_byte_size + counter] <= WDATA_tmp;
                            1 : DATA_A_mem_1[FIFO_AW_req_ADDR_tmp / data_byte_size + counter] <= WDATA_tmp;
                            2 : DATA_A_mem_2[FIFO_AW_req_ADDR_tmp / data_byte_size + counter] <= WDATA_tmp;
                            default: $display("The page_num of AXI write is not valid!");
                        endcase
                        if (counter === output_length && FIFO_WDATA_size_empty != 1 ) begin
                            FIFO_WDATA_size_read <= 1;
                            if(FIFO_WDATA_size_ptr_r != FIFO_DEPTH - 1)
                                FIFO_WDATA_size_ptr_r <= FIFO_WDATA_size_ptr_r + 1;
                            else
                                FIFO_WDATA_size_ptr_r <= 0;
                            WDATA_size_tmp = FIFO_WDATA_size [FIFO_WDATA_size_ptr_r];
                            if (WDATA_size_tmp !== output_length + 1) begin
                                $display ("Burst output data size incorrect.");
                                $finish;
                            end    
                            send_one_BRESP <= 1;
                        end   
                        counter = counter + 1;
                    end 
                    @(posedge clk);
                    send_one_BRESP <= 0;
                    FIFO_WDATA_read <= 0;
                    FIFO_WDATA_size_read <= 0;
                    write_processing = 0;
                end
            end else begin
                counter = 0;
                output_length = FIFO_AW_req_LEN_tmp;
                while (counter != output_length + 1) begin
                    if (FIFO_WDATA_req_empty != 1) begin 
                        FIFO_WDATA_read <= 1;
                        if(FIFO_WDATA_req_ptr_r != FIFO_DEPTH - 1)
                            FIFO_WDATA_req_ptr_r <= FIFO_WDATA_req_ptr_r + 1;
                        else
                            FIFO_WDATA_req_ptr_r <= 0;
                        FIFO_WDATA_tmp = FIFO_WDATA [FIFO_WDATA_req_ptr_r];
                        FIFO_WSTRB_tmp = FIFO_WSTRB [FIFO_WDATA_req_ptr_r];
                        for (i = 0 ; i < data_byte_size; i = i + 1) begin
                            if (FIFO_WSTRB_tmp[i] == 1) begin 
                                for (j=(i*8); j< (i+1)*8 ; j= j+1) begin
                                    WDATA_tmp[j] = FIFO_WDATA_tmp[j];
                                end
                            end else begin
                                for (j=(i*8); j< (i+1)*8 ; j= j+1) begin
                                    case(FIFO_AW_req_transaction_tmp % mem_page_num)
                                        0 : WDATA_tmp[j] = DATA_A_mem_0[FIFO_AW_req_ADDR_tmp / data_byte_size][j];
                                        1 : WDATA_tmp[j] = DATA_A_mem_1[FIFO_AW_req_ADDR_tmp / data_byte_size][j];
                                        2 : WDATA_tmp[j] = DATA_A_mem_2[FIFO_AW_req_ADDR_tmp / data_byte_size][j];
                                        default: $display("The page_num of AXI write is not valid!");
                                    endcase
                                end
                            end
                        end
                        wr_processing_trans_num = FIFO_AW_req_transaction_tmp;
                        wr_processing_addr = FIFO_AW_req_ADDR_tmp/data_byte_size;
                        write_processing = 1;
                        wr_processing_data = WDATA_tmp;
                        case(FIFO_AW_req_transaction_tmp % mem_page_num)
                            0 : DATA_A_mem_0[FIFO_AW_req_ADDR_tmp / data_byte_size] <= WDATA_tmp;
                            1 : DATA_A_mem_1[FIFO_AW_req_ADDR_tmp / data_byte_size] <= WDATA_tmp;
                            2 : DATA_A_mem_2[FIFO_AW_req_ADDR_tmp / data_byte_size] <= WDATA_tmp;
                            default: $display("The page_num of AXI write is not valid!");
                        endcase
                        if (FIFO_WDATA_size_empty != 1 ) begin
                            FIFO_WDATA_size_read <= 1;
                            if(FIFO_WDATA_size_ptr_r != FIFO_DEPTH - 1)
                                FIFO_WDATA_size_ptr_r <= FIFO_WDATA_size_ptr_r + 1;
                            else
                                FIFO_WDATA_size_ptr_r <= 0;
                            WDATA_size_tmp = FIFO_WDATA_size [FIFO_WDATA_size_ptr_r];
                            if (WDATA_size_tmp !== output_length + 1) begin
                                $display ("Burst output data size incorrect.");
                                $finish;
                            end    
                        end    
                        send_one_BRESP <= 1;
                        counter = counter + 1;
                    end 
                    @(posedge clk);
                    send_one_BRESP <= 0;
                    FIFO_WDATA_read <= 0;
                    FIFO_WDATA_size_read <= 0;
                    write_processing = 0;
                end
            end   
        end
    end
end

always @(posedge clk or reset) begin 
    if(reset === 0) begin 
        FIFO_AR_req_read <= 0;
        FIFO_AR_req_ptr_r <= 0;
    end else begin 
        #0.2;
        if (FIFO_AR_req_ptr_r_tmp > FIFO_AR_req_ptr_r) begin
            FIFO_AR_req_read <= 1;
            FIFO_AR_req_ptr_r <= FIFO_AR_req_ptr_r + 1;
        end else if (FIFO_AR_req_ptr_r_tmp == 0 && FIFO_AR_req_ptr_r == FIFO_DEPTH - 1) begin
            FIFO_AR_req_read <= 1;
            FIFO_AR_req_ptr_r <= 0;
        end else begin 
            FIFO_AR_req_read <= 0;
        end
    end 
end

initial begin : AR_request_proc
    integer counter;
    integer i;
    integer data_byte_size;
    integer input_length;
    integer FIFO_AR_req_transaction_tmp;
    integer FIFO_AR_req_clk_tmp;
    @(posedge clk);

    while (1) begin
        RVALID_tmp <= 0;
        if (FIFO_AR_req_empty) begin
            @(posedge clk);
        end else begin
            if(FIFO_AR_req_ptr_r_tmp != FIFO_DEPTH - 1)
                FIFO_AR_req_ptr_r_tmp = FIFO_AR_req_ptr_r_tmp + 1;
            else
                FIFO_AR_req_ptr_r_tmp = 0;

            FIFO_AR_req_ADDR_tmp    =  FIFO_AR_req_ADDR [FIFO_AR_req_ptr_r]  ;
            FIFO_AR_req_SIZE_tmp    =  FIFO_AR_req_SIZE [FIFO_AR_req_ptr_r]  ;
            FIFO_AR_req_LEN_tmp     =  FIFO_AR_req_LEN  [FIFO_AR_req_ptr_r]  ; 
            FIFO_AR_req_BURST_tmp   =  FIFO_AR_req_BURST[FIFO_AR_req_ptr_r]  ;
            FIFO_AR_req_transaction_tmp   =  FIFO_AR_req_transaction_number[FIFO_AR_req_ptr_r]  ;
            FIFO_AR_req_clk_tmp   =  FIFO_AR_req_cycle_number[FIFO_AR_req_ptr_r]  ;
            while (clk_counter < FIFO_AR_req_clk_tmp + ReadReqLatency ) begin
                @(posedge clk);
            end

            data_byte_size = 1;
            for (i=0;i<FIFO_AR_req_SIZE_tmp; i=i+1) begin
                data_byte_size = data_byte_size * 2;
            end

            if (FIFO_AR_req_ADDR_tmp/data_byte_size > DATA_A_mem_depth) begin
                $display ("C:/Users/ronal/Documents/ECE527MPs/final_project/DWT/solution1/sim/verilog/AESL_axi_master_DATA_A.v: Read request address %d exceed AXI master DATA_A array depth: %d",FIFO_AR_req_ADDR_tmp/data_byte_size, DATA_A_mem_depth); 
                $finish;
            end

            if (FIFO_AR_req_BURST_tmp === 1) begin
                counter = 0;
                RLAST_tmp <= 0;
                input_length = FIFO_AR_req_LEN_tmp;
                while (counter != input_length + 1) begin
                    @(negedge clk);
                    rd_processing_addr = FIFO_AR_req_ADDR_tmp/data_byte_size + counter;
                    if ((write_processing == 1) && (wr_processing_addr == rd_processing_addr) && (wr_processing_trans_num == FIFO_AR_req_transaction_tmp))
                        RDATA_tmp <= wr_processing_data;
                    else
                        case(FIFO_AR_req_transaction_tmp % mem_page_num)
                            0 : RDATA_tmp <= DATA_A_mem_0[FIFO_AR_req_ADDR_tmp / data_byte_size +   counter] ;
                            1 : RDATA_tmp <= DATA_A_mem_1[FIFO_AR_req_ADDR_tmp / data_byte_size +   counter] ;
                            2 : RDATA_tmp <= DATA_A_mem_2[FIFO_AR_req_ADDR_tmp / data_byte_size +   counter] ;
                            default: $display("The page_num of AXI read is not valid!");
                        endcase
                    RVALID_tmp <= 1;
                    RRESP_tmp <= 0;
                    if (counter === input_length ) begin
                        RLAST_tmp <= 1;
                    end else begin
                        RLAST_tmp <= 0;
                    end
                        
                    @(posedge clk);
                    if (RVALID_tmp && TRAN_DATA_A_RREADY) begin
                        counter = counter + 1;
                    end 
                end
                RVALID_tmp <= 0;
                RLAST_tmp <= 0;
            end else begin
                counter = 0;
                RLAST_tmp <= 0;
                input_length = FIFO_AR_req_LEN_tmp;
                while (counter != input_length + 1) begin
                    @(negedge clk);
                    rd_processing_addr = FIFO_AR_req_ADDR_tmp/data_byte_size;
                    if ((write_processing == 1) && (wr_processing_addr == rd_processing_addr) && (wr_processing_trans_num == FIFO_AR_req_transaction_tmp))
                        RDATA_tmp <= wr_processing_data;
                    else
                        case(FIFO_AR_req_transaction_tmp % mem_page_num)
                            0 : RDATA_tmp <= DATA_A_mem_0[FIFO_AR_req_ADDR_tmp / data_byte_size ] ;
                            1 : RDATA_tmp <= DATA_A_mem_1[FIFO_AR_req_ADDR_tmp / data_byte_size ] ;
                            2 : RDATA_tmp <= DATA_A_mem_2[FIFO_AR_req_ADDR_tmp / data_byte_size ] ;
                            default: $display("The page_num of AXI read is not valid!");
                        endcase
                    RVALID_tmp <= 1;
                    RRESP_tmp <= 0;
                    RLAST_tmp <= 1;
                    @(posedge clk);
                    if (RVALID_tmp && TRAN_DATA_A_RREADY) begin
                        counter = counter + 1;
                    end 
                end
                RVALID_tmp <= 0;
                RLAST_tmp <= 0;
            end    
        end
    end
end

//------------------------Task and function--------------


	function is_blank_char(input [7:0] in_char);
	    if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
	        is_blank_char = 1;
	    end else begin
	        is_blank_char = 0;
	    end
	endfunction

	function [127:0] read_token(input integer fp);
	    integer ret;
	    begin
	        read_token = "";
	                ret = 0;
	                ret = $fscanf(fp,"%s",read_token);
	    end
	endfunction

	function [127:0] rm_0x(input [127:0] token);
	    reg [127:0] token_tmp;
	    integer i;
	    begin
	        token_tmp = "";
	        for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
	            token_tmp = (token[7:0] << (8 * i)) | token_tmp;
	            i = i + 1;
	        end
	        rm_0x = token_tmp;
	    end
	endfunction

task count_c_data_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer remain;
begin
    factor = 8;
    if (bitwidth <= 8) begin
        num = 1;
    end
    else begin
        num = bitwidth / factor;
        remain = bitwidth % factor;
        if (remain > 0) begin
            num = num + 1;
        end
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

//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_file_process 
  integer fp; 
  reg [ 100*8 : 1] str;
  integer err; 
  integer ret; 
  integer factor; 
  integer transaction_num; 
  integer mem_page; 
  integer DATA_A_bitwidth; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [DATA_A_C_DATA_BITWIDTH - 1 : 0] token_tmp; 
  reg [DATA_A_DATA_BITWIDTH - 1 : 0] mem_tmp; 
  integer i; 
  transaction_num = 0;
  DATA_A_bitwidth = DATA_A_C_DATA_BITWIDTH; 
  count_seperate_factor_by_bitwidth (DATA_A_bitwidth , factor);
  fp = $fopen(`TV_IN_DATA_A,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_DATA_A); 
      $finish; 
  end 
  token = read_token(fp); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  token = read_token(fp); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      token = read_token(fp);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(ready !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      mem_page = transaction_num % mem_page_num ;
      mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
      for(i = 0; i < 38400 ; i = i + 1) begin 
          token = read_token(fp);
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_tmp = token_tmp;
              case(mem_page)
                  0 : DATA_A_mem_0[i] = mem_tmp;
                  1 : DATA_A_mem_1[i] = mem_tmp;
                  2 : DATA_A_mem_2[i] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
              mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end 
      for(i = 38400; i < 76800 ; i = i + 1) begin 
          token = read_token(fp);
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_tmp = token_tmp;
              case(mem_page)
                  0 : DATA_A_mem_0[i] = mem_tmp;
                  1 : DATA_A_mem_1[i] = mem_tmp;
                  2 : DATA_A_mem_2[i] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
              mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end 
      for(i = 76800; i < 115200 ; i = i + 1) begin 
          token = read_token(fp);
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_tmp = token_tmp;
              case(mem_page)
                  0 : DATA_A_mem_0[i] = mem_tmp;
                  1 : DATA_A_mem_1[i] = mem_tmp;
                  2 : DATA_A_mem_2[i] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
              mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end 
      for(i = 115200; i < 153600 ; i = i + 1) begin 
          token = read_token(fp);
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_tmp = token_tmp;
              case(mem_page)
                  0 : DATA_A_mem_0[i] = mem_tmp;
                  1 : DATA_A_mem_1[i] = mem_tmp;
                  2 : DATA_A_mem_2[i] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
              mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end 
      for(i = 153600; i < 192000 ; i = i + 1) begin 
          token = read_token(fp);
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_tmp = token_tmp;
              case(mem_page)
                  0 : DATA_A_mem_0[i] = mem_tmp;
                  1 : DATA_A_mem_1[i] = mem_tmp;
                  2 : DATA_A_mem_2[i] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
              mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end 
      for(i = 192000; i < 230400 ; i = i + 1) begin 
          token = read_token(fp);
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_tmp = token_tmp;
              case(mem_page)
                  0 : DATA_A_mem_0[i] = mem_tmp;
                  1 : DATA_A_mem_1[i] = mem_tmp;
                  2 : DATA_A_mem_2[i] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
              mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end 
      for(i = 230400; i < 268800 ; i = i + 1) begin 
          token = read_token(fp);
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_tmp = token_tmp;
              case(mem_page)
                  0 : DATA_A_mem_0[i] = mem_tmp;
                  1 : DATA_A_mem_1[i] = mem_tmp;
                  2 : DATA_A_mem_2[i] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
              mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end 
      for(i = 268800; i < 307200 ; i = i + 1) begin 
          token = read_token(fp);
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  case(mem_page)
                      0 : DATA_A_mem_0[i/factor] = mem_tmp;
                      1 : DATA_A_mem_1[i/factor] = mem_tmp;
                      2 : DATA_A_mem_2[i/factor] = mem_tmp;
                      default: $display("The page_num of read file is not valid!");
                  endcase
                  mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_tmp = token_tmp;
              case(mem_page)
                  0 : DATA_A_mem_0[i] = mem_tmp;
                  1 : DATA_A_mem_1[i] = mem_tmp;
                  2 : DATA_A_mem_2[i] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
              mem_tmp [DATA_A_DATA_BITWIDTH - 1: 0] = 0;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              case(mem_page)
                  0 : DATA_A_mem_0[i/factor] = mem_tmp;
                  1 : DATA_A_mem_1[i/factor] = mem_tmp;
                  2 : DATA_A_mem_2[i/factor] = mem_tmp;
                  default: $display("The page_num of read file is not valid!");
              endcase
          end
      end 
      token = read_token(fp);
      transaction_num = transaction_num + 1;
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      token = read_token(fp); //[[transaction]]
  end 
  $fclose(fp); 
end 
 
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_file_proc 
  integer fp; 
  reg [ 100*8 : 1] str;
  integer transaction_num; 
  integer i; 
  integer factor; 
  integer mem_page; 
  integer DATA_A_bitwidth; 
  reg [DATA_A_C_DATA_BITWIDTH - 1 : 0] mem_tmp; 
  reg [DATA_A_DATA_BITWIDTH - 1 : 0] tmp_data;
  transaction_num = 0; 
  DATA_A_bitwidth = DATA_A_C_DATA_BITWIDTH; 
  count_seperate_factor_by_bitwidth (DATA_A_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while(done !== 1) begin
          @(posedge clk);
      end
      mem_page = transaction_num % mem_page_num ;
      # 0.1;
      fp = $fopen(`TV_OUT_DATA_A, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_DATA_A); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_num);
      for(i = 0; i < (DATA_A_mem_depth - DATA_A_mem_depth % factor); i = i + 1) begin 
          if (factor == 4) begin
              case(mem_page)
                  0 : tmp_data = DATA_A_mem_0[i/factor];
                  1 : tmp_data = DATA_A_mem_1[i/factor];
                  2 : tmp_data = DATA_A_mem_2[i/factor];
                  default: $display("The page_num of write file is not valid!");
              endcase
              if (i%factor == 0) begin
                  mem_tmp = tmp_data[7:0];
              end
              if (i%factor == 1) begin
                  mem_tmp = tmp_data[15:8];
              end
              if (i%factor == 2) begin
                  mem_tmp = tmp_data[23:16];
              end
              if (i%factor == 3) begin
                  mem_tmp = tmp_data[31:24];
              end
              $fdisplay(fp,"0x%x",mem_tmp);
          end
          if (factor == 2) begin
              case(mem_page)
                  0 : tmp_data = DATA_A_mem_0[i/factor];
                  1 : tmp_data = DATA_A_mem_1[i/factor];
                  2 : tmp_data = DATA_A_mem_2[i/factor];
                  default: $display("The page_num of write file is not valid!");
              endcase
              if (i%factor == 0) begin
                  mem_tmp = tmp_data[15:0];
              end
              if (i%factor == 1) begin
                  mem_tmp = tmp_data[31:16];
              end
              $fdisplay(fp,"0x%x",mem_tmp);
          end
          if (factor == 1) begin
              case(mem_page)
                  0 : mem_tmp = DATA_A_mem_0[i];
                  1 : mem_tmp = DATA_A_mem_1[i];
                  2 : mem_tmp = DATA_A_mem_2[i];
                  default: $display("The page_num of write file is not valid!");
              endcase
              $fdisplay(fp,"0x%x",mem_tmp);
          end
      end 
      if (factor == 4) begin
          case(mem_page)
              0 : tmp_data = DATA_A_mem_0[DATA_A_mem_depth/factor];
              1 : tmp_data = DATA_A_mem_1[DATA_A_mem_depth/factor];
              2 : tmp_data = DATA_A_mem_2[DATA_A_mem_depth/factor];
              default: $display("The page_num of write file is not valid!");
          endcase
          if ((DATA_A_mem_depth - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",tmp_data[7:0]);
              $fdisplay(fp,"0x%x",tmp_data[15:8]);
              $fdisplay(fp,"0x%x",tmp_data[23:16]);
          end
          if ((DATA_A_mem_depth - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",tmp_data[7:0]);
              $fdisplay(fp,"0x%x",tmp_data[15:8]);
          end
          if ((DATA_A_mem_depth - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",tmp_data[7:0]);
          end
      end
      if (factor == 2) begin
          if ((DATA_A_mem_depth - 1) % factor == 0) begin
              case(mem_page)
                  0 : $fdisplay(fp,"0x%x",DATA_A_mem_0[DATA_A_mem_depth/factor][15:0]);
                  1 : $fdisplay(fp,"0x%x",DATA_A_mem_1[DATA_A_mem_depth/factor][15:0]);
                  2 : $fdisplay(fp,"0x%x",DATA_A_mem_2[DATA_A_mem_depth/factor][15:0]);
                  default: $display("The page_num of write file is not valid!");
              endcase
          end
      end
      
      $fdisplay(fp, "[[/transaction]]");
      transaction_num = transaction_num + 1;
      $fclose(fp); 
  end 
end 
endmodule
