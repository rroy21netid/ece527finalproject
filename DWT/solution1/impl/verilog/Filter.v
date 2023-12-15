// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Filter (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_0_address0,
        A_0_ce0,
        A_0_q0,
        A_1_address0,
        A_1_ce0,
        A_1_q0,
        A_2_address0,
        A_2_ce0,
        A_2_q0,
        A_3_address0,
        A_3_ce0,
        A_3_q0,
        A_4_address0,
        A_4_ce0,
        A_4_q0,
        A_5_address0,
        A_5_ce0,
        A_5_q0,
        A_6_address0,
        A_6_ce0,
        A_6_q0,
        A_7_address0,
        A_7_ce0,
        A_7_q0,
        B_0_address0,
        B_0_ce0,
        B_0_q0,
        B_1_address0,
        B_1_ce0,
        B_1_q0,
        B_2_address0,
        B_2_ce0,
        B_2_q0,
        B_3_address0,
        B_3_ce0,
        B_3_q0,
        B_4_address0,
        B_4_ce0,
        B_4_q0,
        B_5_address0,
        B_5_ce0,
        B_5_q0,
        B_6_address0,
        B_6_ce0,
        B_6_q0,
        B_7_address0,
        B_7_ce0,
        B_7_q0,
        C_0_address0,
        C_0_ce0,
        C_0_we0,
        C_0_d0,
        C_1_address0,
        C_1_ce0,
        C_1_we0,
        C_1_d0,
        C_2_address0,
        C_2_ce0,
        C_2_we0,
        C_2_d0,
        C_3_address0,
        C_3_ce0,
        C_3_we0,
        C_3_d0,
        C_4_address0,
        C_4_ce0,
        C_4_we0,
        C_4_d0,
        C_5_address0,
        C_5_ce0,
        C_5_we0,
        C_5_d0,
        C_6_address0,
        C_6_ce0,
        C_6_we0,
        C_6_d0,
        C_7_address0,
        C_7_ce0,
        C_7_we0,
        C_7_d0
);

parameter    ap_ST_fsm_state1 = 23'd1;
parameter    ap_ST_fsm_state2 = 23'd2;
parameter    ap_ST_fsm_state3 = 23'd4;
parameter    ap_ST_fsm_state4 = 23'd8;
parameter    ap_ST_fsm_state5 = 23'd16;
parameter    ap_ST_fsm_state6 = 23'd32;
parameter    ap_ST_fsm_state7 = 23'd64;
parameter    ap_ST_fsm_state8 = 23'd128;
parameter    ap_ST_fsm_state9 = 23'd256;
parameter    ap_ST_fsm_state10 = 23'd512;
parameter    ap_ST_fsm_state11 = 23'd1024;
parameter    ap_ST_fsm_state12 = 23'd2048;
parameter    ap_ST_fsm_state13 = 23'd4096;
parameter    ap_ST_fsm_state14 = 23'd8192;
parameter    ap_ST_fsm_state15 = 23'd16384;
parameter    ap_ST_fsm_state16 = 23'd32768;
parameter    ap_ST_fsm_state17 = 23'd65536;
parameter    ap_ST_fsm_state18 = 23'd131072;
parameter    ap_ST_fsm_state19 = 23'd262144;
parameter    ap_ST_fsm_state20 = 23'd524288;
parameter    ap_ST_fsm_state21 = 23'd1048576;
parameter    ap_ST_fsm_state22 = 23'd2097152;
parameter    ap_ST_fsm_state23 = 23'd4194304;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] A_0_address0;
output   A_0_ce0;
input  [15:0] A_0_q0;
output  [11:0] A_1_address0;
output   A_1_ce0;
input  [15:0] A_1_q0;
output  [11:0] A_2_address0;
output   A_2_ce0;
input  [15:0] A_2_q0;
output  [11:0] A_3_address0;
output   A_3_ce0;
input  [15:0] A_3_q0;
output  [11:0] A_4_address0;
output   A_4_ce0;
input  [15:0] A_4_q0;
output  [11:0] A_5_address0;
output   A_5_ce0;
input  [15:0] A_5_q0;
output  [11:0] A_6_address0;
output   A_6_ce0;
input  [15:0] A_6_q0;
output  [11:0] A_7_address0;
output   A_7_ce0;
input  [15:0] A_7_q0;
output  [11:0] B_0_address0;
output   B_0_ce0;
input  [15:0] B_0_q0;
output  [11:0] B_1_address0;
output   B_1_ce0;
input  [15:0] B_1_q0;
output  [11:0] B_2_address0;
output   B_2_ce0;
input  [15:0] B_2_q0;
output  [11:0] B_3_address0;
output   B_3_ce0;
input  [15:0] B_3_q0;
output  [11:0] B_4_address0;
output   B_4_ce0;
input  [15:0] B_4_q0;
output  [11:0] B_5_address0;
output   B_5_ce0;
input  [15:0] B_5_q0;
output  [11:0] B_6_address0;
output   B_6_ce0;
input  [15:0] B_6_q0;
output  [11:0] B_7_address0;
output   B_7_ce0;
input  [15:0] B_7_q0;
output  [11:0] C_0_address0;
output   C_0_ce0;
output   C_0_we0;
output  [15:0] C_0_d0;
output  [11:0] C_1_address0;
output   C_1_ce0;
output   C_1_we0;
output  [15:0] C_1_d0;
output  [11:0] C_2_address0;
output   C_2_ce0;
output   C_2_we0;
output  [15:0] C_2_d0;
output  [11:0] C_3_address0;
output   C_3_ce0;
output   C_3_we0;
output  [15:0] C_3_d0;
output  [11:0] C_4_address0;
output   C_4_ce0;
output   C_4_we0;
output  [15:0] C_4_d0;
output  [11:0] C_5_address0;
output   C_5_ce0;
output   C_5_we0;
output  [15:0] C_5_d0;
output  [11:0] C_6_address0;
output   C_6_ce0;
output   C_6_we0;
output  [15:0] C_6_d0;
output  [11:0] C_7_address0;
output   C_7_ce0;
output   C_7_we0;
output  [15:0] C_7_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg A_0_ce0;
reg A_1_ce0;
reg A_2_ce0;
reg A_3_ce0;
reg A_4_ce0;
reg A_5_ce0;
reg A_6_ce0;
reg A_7_ce0;
reg B_0_ce0;
reg B_1_ce0;
reg B_2_ce0;
reg B_3_ce0;
reg B_4_ce0;
reg B_5_ce0;
reg B_6_ce0;
reg B_7_ce0;
reg C_0_ce0;
reg C_0_we0;
reg C_1_ce0;
reg C_1_we0;
reg C_2_ce0;
reg C_2_we0;
reg C_3_ce0;
reg C_3_we0;
reg C_4_ce0;
reg C_4_we0;
reg C_5_ce0;
reg C_5_we0;
reg C_6_ce0;
reg C_6_we0;
reg C_7_ce0;
reg C_7_we0;

(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] i_fu_478_p2;
reg   [7:0] i_reg_746;
wire    ap_CS_fsm_state2;
wire   [11:0] zext_ln182_fu_484_p1;
reg   [11:0] zext_ln182_reg_751;
wire   [0:0] icmp_ln180_fu_472_p2;
wire   [6:0] j_fu_494_p2;
reg   [6:0] j_reg_759;
wire    ap_CS_fsm_state3;
wire   [2:0] trunc_ln186_fu_500_p1;
reg   [2:0] trunc_ln186_reg_764;
wire   [0:0] icmp_ln182_fu_488_p2;
wire   [63:0] zext_ln186_3_fu_549_p1;
reg   [63:0] zext_ln186_3_reg_769;
wire   [15:0] tmp_fu_572_p10;
reg   [15:0] tmp_reg_861;
wire    ap_CS_fsm_state4;
wire   [15:0] tmp_3_fu_594_p10;
reg   [15:0] tmp_3_reg_866;
wire    ap_CS_fsm_state5;
wire   [63:0] grp_fu_466_p1;
reg   [63:0] tmp_s_reg_881;
wire    ap_CS_fsm_state10;
wire   [63:0] grp_fu_469_p1;
reg   [63:0] tmp_24_reg_886;
wire   [63:0] grp_fu_456_p2;
reg   [63:0] tmp_23_reg_891;
wire    ap_CS_fsm_state16;
wire   [63:0] grp_fu_461_p2;
reg   [63:0] tmp_25_reg_896;
reg   [10:0] tmp_V_reg_901;
wire    ap_CS_fsm_state21;
wire   [51:0] tmp_V_4_fu_638_p1;
reg   [51:0] tmp_V_4_reg_907;
reg   [11:0] C_0_addr_reg_912;
wire    ap_CS_fsm_state22;
reg   [11:0] C_1_addr_reg_917;
reg   [11:0] C_2_addr_reg_922;
reg   [11:0] C_3_addr_reg_927;
reg   [11:0] C_4_addr_reg_932;
reg   [11:0] C_5_addr_reg_937;
reg   [11:0] C_6_addr_reg_942;
reg   [11:0] C_7_addr_reg_947;
wire   [15:0] val_V_fu_735_p3;
reg   [15:0] val_V_reg_952;
reg   [7:0] i_0_reg_430;
reg   [6:0] j_0_reg_441;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state11;
wire   [31:0] grp_fu_466_p0;
wire   [31:0] grp_fu_469_p0;
wire   [3:0] lshr_ln_fu_504_p4;
wire   [10:0] tmp_34_fu_514_p3;
wire   [8:0] tmp_35_fu_526_p3;
wire   [11:0] zext_ln186_1_fu_522_p1;
wire   [11:0] zext_ln186_2_fu_534_p1;
wire   [11:0] add_ln186_fu_538_p2;
wire   [11:0] add_ln186_1_fu_544_p2;
wire   [31:0] zext_ln186_fu_569_p1;
wire   [63:0] grp_fu_452_p2;
wire   [63:0] p_Val2_s_fu_624_p1;
wire   [53:0] mantissa_V_fu_642_p4;
wire   [11:0] zext_ln502_fu_655_p1;
wire   [11:0] add_ln502_fu_658_p2;
wire   [10:0] sub_ln1311_fu_672_p2;
wire   [0:0] isNeg_fu_664_p3;
wire  signed [11:0] sext_ln1311_fu_677_p1;
wire   [11:0] ush_fu_681_p3;
wire  signed [31:0] sext_ln1311_4_fu_689_p1;
wire   [53:0] zext_ln1285_fu_697_p1;
wire   [120:0] zext_ln682_fu_651_p1;
wire   [120:0] zext_ln1287_fu_693_p1;
wire   [53:0] r_V_fu_701_p2;
wire   [0:0] tmp_39_fu_713_p3;
wire   [120:0] r_V_4_fu_707_p2;
wire   [15:0] zext_ln662_fu_721_p1;
wire   [15:0] tmp_36_fu_725_p4;
reg   [22:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 23'd1;
end

DWT_Accel_dadd_64jbC #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
DWT_Accel_dadd_64jbC_U65(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_23_reg_891),
    .din1(tmp_25_reg_896),
    .ce(1'b1),
    .dout(grp_fu_452_p2)
);

DWT_Accel_dmul_64fYi #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
DWT_Accel_dmul_64fYi_U66(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_s_reg_881),
    .din1(64'd4602678819172646912),
    .ce(1'b1),
    .dout(grp_fu_456_p2)
);

DWT_Accel_dmul_64fYi #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
DWT_Accel_dmul_64fYi_U67(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_24_reg_886),
    .din1(64'd4602678819172646912),
    .ce(1'b1),
    .dout(grp_fu_461_p2)
);

DWT_Accel_sitodp_hbi #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
DWT_Accel_sitodp_hbi_U68(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_466_p0),
    .ce(1'b1),
    .dout(grp_fu_466_p1)
);

DWT_Accel_sitodp_hbi #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
DWT_Accel_sitodp_hbi_U69(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_469_p0),
    .ce(1'b1),
    .dout(grp_fu_469_p1)
);

DWT_Accel_mux_832ibs #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 16 ),
    .din5_WIDTH( 16 ),
    .din6_WIDTH( 16 ),
    .din7_WIDTH( 16 ),
    .din8_WIDTH( 32 ),
    .dout_WIDTH( 16 ))
DWT_Accel_mux_832ibs_U70(
    .din0(A_0_q0),
    .din1(A_1_q0),
    .din2(A_2_q0),
    .din3(A_3_q0),
    .din4(A_4_q0),
    .din5(A_5_q0),
    .din6(A_6_q0),
    .din7(A_7_q0),
    .din8(zext_ln186_fu_569_p1),
    .dout(tmp_fu_572_p10)
);

DWT_Accel_mux_832ibs #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 16 ),
    .din5_WIDTH( 16 ),
    .din6_WIDTH( 16 ),
    .din7_WIDTH( 16 ),
    .din8_WIDTH( 32 ),
    .dout_WIDTH( 16 ))
DWT_Accel_mux_832ibs_U71(
    .din0(B_0_q0),
    .din1(B_1_q0),
    .din2(B_2_q0),
    .din3(B_3_q0),
    .din4(B_4_q0),
    .din5(B_5_q0),
    .din6(B_6_q0),
    .din7(B_7_q0),
    .din8(zext_ln186_fu_569_p1),
    .dout(tmp_3_fu_594_p10)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln182_fu_488_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_430 <= i_reg_746;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_430 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln180_fu_472_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_441 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        j_0_reg_441 <= j_reg_759;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        C_0_addr_reg_912 <= zext_ln186_3_reg_769;
        C_1_addr_reg_917 <= zext_ln186_3_reg_769;
        C_2_addr_reg_922 <= zext_ln186_3_reg_769;
        C_3_addr_reg_927 <= zext_ln186_3_reg_769;
        C_4_addr_reg_932 <= zext_ln186_3_reg_769;
        C_5_addr_reg_937 <= zext_ln186_3_reg_769;
        C_6_addr_reg_942 <= zext_ln186_3_reg_769;
        C_7_addr_reg_947 <= zext_ln186_3_reg_769;
        val_V_reg_952 <= val_V_fu_735_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_746 <= i_fu_478_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_759 <= j_fu_494_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        tmp_23_reg_891 <= grp_fu_456_p2;
        tmp_25_reg_896 <= grp_fu_461_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp_24_reg_886 <= grp_fu_469_p1;
        tmp_s_reg_881 <= grp_fu_466_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_3_reg_866 <= tmp_3_fu_594_p10;
        tmp_reg_861 <= tmp_fu_572_p10;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp_V_4_reg_907 <= tmp_V_4_fu_638_p1;
        tmp_V_reg_901 <= {{p_Val2_s_fu_624_p1[62:52]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln182_fu_488_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        trunc_ln186_reg_764 <= trunc_ln186_fu_500_p1;
        zext_ln186_3_reg_769[11 : 0] <= zext_ln186_3_fu_549_p1[11 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln180_fu_472_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        zext_ln182_reg_751[7 : 0] <= zext_ln182_fu_484_p1[7 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        A_0_ce0 = 1'b1;
    end else begin
        A_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        A_1_ce0 = 1'b1;
    end else begin
        A_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        A_2_ce0 = 1'b1;
    end else begin
        A_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        A_3_ce0 = 1'b1;
    end else begin
        A_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        A_4_ce0 = 1'b1;
    end else begin
        A_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        A_5_ce0 = 1'b1;
    end else begin
        A_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        A_6_ce0 = 1'b1;
    end else begin
        A_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        A_7_ce0 = 1'b1;
    end else begin
        A_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_0_ce0 = 1'b1;
    end else begin
        B_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_1_ce0 = 1'b1;
    end else begin
        B_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_2_ce0 = 1'b1;
    end else begin
        B_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_3_ce0 = 1'b1;
    end else begin
        B_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_4_ce0 = 1'b1;
    end else begin
        B_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_5_ce0 = 1'b1;
    end else begin
        B_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_6_ce0 = 1'b1;
    end else begin
        B_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_7_ce0 = 1'b1;
    end else begin
        B_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        C_0_ce0 = 1'b1;
    end else begin
        C_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln186_reg_764 == 3'd0) & (1'b1 == ap_CS_fsm_state23))) begin
        C_0_we0 = 1'b1;
    end else begin
        C_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        C_1_ce0 = 1'b1;
    end else begin
        C_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln186_reg_764 == 3'd1) & (1'b1 == ap_CS_fsm_state23))) begin
        C_1_we0 = 1'b1;
    end else begin
        C_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        C_2_ce0 = 1'b1;
    end else begin
        C_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln186_reg_764 == 3'd2) & (1'b1 == ap_CS_fsm_state23))) begin
        C_2_we0 = 1'b1;
    end else begin
        C_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        C_3_ce0 = 1'b1;
    end else begin
        C_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln186_reg_764 == 3'd3) & (1'b1 == ap_CS_fsm_state23))) begin
        C_3_we0 = 1'b1;
    end else begin
        C_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        C_4_ce0 = 1'b1;
    end else begin
        C_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln186_reg_764 == 3'd4) & (1'b1 == ap_CS_fsm_state23))) begin
        C_4_we0 = 1'b1;
    end else begin
        C_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        C_5_ce0 = 1'b1;
    end else begin
        C_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln186_reg_764 == 3'd5) & (1'b1 == ap_CS_fsm_state23))) begin
        C_5_we0 = 1'b1;
    end else begin
        C_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        C_6_ce0 = 1'b1;
    end else begin
        C_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln186_reg_764 == 3'd6) & (1'b1 == ap_CS_fsm_state23))) begin
        C_6_we0 = 1'b1;
    end else begin
        C_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        C_7_ce0 = 1'b1;
    end else begin
        C_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln186_reg_764 == 3'd7) & (1'b1 == ap_CS_fsm_state23))) begin
        C_7_we0 = 1'b1;
    end else begin
        C_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln180_fu_472_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln180_fu_472_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln180_fu_472_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln182_fu_488_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_0_address0 = zext_ln186_3_fu_549_p1;

assign A_1_address0 = zext_ln186_3_fu_549_p1;

assign A_2_address0 = zext_ln186_3_fu_549_p1;

assign A_3_address0 = zext_ln186_3_fu_549_p1;

assign A_4_address0 = zext_ln186_3_fu_549_p1;

assign A_5_address0 = zext_ln186_3_fu_549_p1;

assign A_6_address0 = zext_ln186_3_fu_549_p1;

assign A_7_address0 = zext_ln186_3_fu_549_p1;

assign B_0_address0 = zext_ln186_3_fu_549_p1;

assign B_1_address0 = zext_ln186_3_fu_549_p1;

assign B_2_address0 = zext_ln186_3_fu_549_p1;

assign B_3_address0 = zext_ln186_3_fu_549_p1;

assign B_4_address0 = zext_ln186_3_fu_549_p1;

assign B_5_address0 = zext_ln186_3_fu_549_p1;

assign B_6_address0 = zext_ln186_3_fu_549_p1;

assign B_7_address0 = zext_ln186_3_fu_549_p1;

assign C_0_address0 = C_0_addr_reg_912;

assign C_0_d0 = val_V_reg_952;

assign C_1_address0 = C_1_addr_reg_917;

assign C_1_d0 = val_V_reg_952;

assign C_2_address0 = C_2_addr_reg_922;

assign C_2_d0 = val_V_reg_952;

assign C_3_address0 = C_3_addr_reg_927;

assign C_3_d0 = val_V_reg_952;

assign C_4_address0 = C_4_addr_reg_932;

assign C_4_d0 = val_V_reg_952;

assign C_5_address0 = C_5_addr_reg_937;

assign C_5_d0 = val_V_reg_952;

assign C_6_address0 = C_6_addr_reg_942;

assign C_6_d0 = val_V_reg_952;

assign C_7_address0 = C_7_addr_reg_947;

assign C_7_d0 = val_V_reg_952;

assign add_ln186_1_fu_544_p2 = (zext_ln182_reg_751 + add_ln186_fu_538_p2);

assign add_ln186_fu_538_p2 = (zext_ln186_1_fu_522_p1 + zext_ln186_2_fu_534_p1);

assign add_ln502_fu_658_p2 = ($signed(12'd3073) + $signed(zext_ln502_fu_655_p1));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign grp_fu_466_p0 = tmp_reg_861;

assign grp_fu_469_p0 = tmp_3_reg_866;

assign i_fu_478_p2 = (i_0_reg_430 + 8'd1);

assign icmp_ln180_fu_472_p2 = ((i_0_reg_430 == 8'd160) ? 1'b1 : 1'b0);

assign icmp_ln182_fu_488_p2 = ((j_0_reg_441 == 7'd120) ? 1'b1 : 1'b0);

assign isNeg_fu_664_p3 = add_ln502_fu_658_p2[32'd11];

assign j_fu_494_p2 = (j_0_reg_441 + 7'd1);

assign lshr_ln_fu_504_p4 = {{j_0_reg_441[6:3]}};

assign mantissa_V_fu_642_p4 = {{{{1'd1}, {tmp_V_4_reg_907}}}, {1'd0}};

assign p_Val2_s_fu_624_p1 = grp_fu_452_p2;

assign r_V_4_fu_707_p2 = zext_ln682_fu_651_p1 << zext_ln1287_fu_693_p1;

assign r_V_fu_701_p2 = mantissa_V_fu_642_p4 >> zext_ln1285_fu_697_p1;

assign sext_ln1311_4_fu_689_p1 = $signed(ush_fu_681_p3);

assign sext_ln1311_fu_677_p1 = $signed(sub_ln1311_fu_672_p2);

assign sub_ln1311_fu_672_p2 = (11'd1023 - tmp_V_reg_901);

assign tmp_34_fu_514_p3 = {{lshr_ln_fu_504_p4}, {7'd0}};

assign tmp_35_fu_526_p3 = {{lshr_ln_fu_504_p4}, {5'd0}};

assign tmp_36_fu_725_p4 = {{r_V_4_fu_707_p2[68:53]}};

assign tmp_39_fu_713_p3 = r_V_fu_701_p2[32'd53];

assign tmp_V_4_fu_638_p1 = p_Val2_s_fu_624_p1[51:0];

assign trunc_ln186_fu_500_p1 = j_0_reg_441[2:0];

assign ush_fu_681_p3 = ((isNeg_fu_664_p3[0:0] === 1'b1) ? sext_ln1311_fu_677_p1 : add_ln502_fu_658_p2);

assign val_V_fu_735_p3 = ((isNeg_fu_664_p3[0:0] === 1'b1) ? zext_ln662_fu_721_p1 : tmp_36_fu_725_p4);

assign zext_ln1285_fu_697_p1 = $unsigned(sext_ln1311_4_fu_689_p1);

assign zext_ln1287_fu_693_p1 = $unsigned(sext_ln1311_4_fu_689_p1);

assign zext_ln182_fu_484_p1 = i_0_reg_430;

assign zext_ln186_1_fu_522_p1 = tmp_34_fu_514_p3;

assign zext_ln186_2_fu_534_p1 = tmp_35_fu_526_p3;

assign zext_ln186_3_fu_549_p1 = add_ln186_1_fu_544_p2;

assign zext_ln186_fu_569_p1 = trunc_ln186_reg_764;

assign zext_ln502_fu_655_p1 = tmp_V_reg_901;

assign zext_ln662_fu_721_p1 = tmp_39_fu_713_p3;

assign zext_ln682_fu_651_p1 = mantissa_V_fu_642_p4;

always @ (posedge ap_clk) begin
    zext_ln182_reg_751[11:8] <= 4'b0000;
    zext_ln186_3_reg_769[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end

endmodule //Filter
