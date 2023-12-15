// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _read_color_HH_
#define _read_color_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct read_color : public sc_module {
    // Port declarations 84
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > m_axi_a_AWVALID;
    sc_in< sc_logic > m_axi_a_AWREADY;
    sc_out< sc_lv<32> > m_axi_a_AWADDR;
    sc_out< sc_lv<1> > m_axi_a_AWID;
    sc_out< sc_lv<32> > m_axi_a_AWLEN;
    sc_out< sc_lv<3> > m_axi_a_AWSIZE;
    sc_out< sc_lv<2> > m_axi_a_AWBURST;
    sc_out< sc_lv<2> > m_axi_a_AWLOCK;
    sc_out< sc_lv<4> > m_axi_a_AWCACHE;
    sc_out< sc_lv<3> > m_axi_a_AWPROT;
    sc_out< sc_lv<4> > m_axi_a_AWQOS;
    sc_out< sc_lv<4> > m_axi_a_AWREGION;
    sc_out< sc_lv<1> > m_axi_a_AWUSER;
    sc_out< sc_logic > m_axi_a_WVALID;
    sc_in< sc_logic > m_axi_a_WREADY;
    sc_out< sc_lv<16> > m_axi_a_WDATA;
    sc_out< sc_lv<2> > m_axi_a_WSTRB;
    sc_out< sc_logic > m_axi_a_WLAST;
    sc_out< sc_lv<1> > m_axi_a_WID;
    sc_out< sc_lv<1> > m_axi_a_WUSER;
    sc_out< sc_logic > m_axi_a_ARVALID;
    sc_in< sc_logic > m_axi_a_ARREADY;
    sc_out< sc_lv<32> > m_axi_a_ARADDR;
    sc_out< sc_lv<1> > m_axi_a_ARID;
    sc_out< sc_lv<32> > m_axi_a_ARLEN;
    sc_out< sc_lv<3> > m_axi_a_ARSIZE;
    sc_out< sc_lv<2> > m_axi_a_ARBURST;
    sc_out< sc_lv<2> > m_axi_a_ARLOCK;
    sc_out< sc_lv<4> > m_axi_a_ARCACHE;
    sc_out< sc_lv<3> > m_axi_a_ARPROT;
    sc_out< sc_lv<4> > m_axi_a_ARQOS;
    sc_out< sc_lv<4> > m_axi_a_ARREGION;
    sc_out< sc_lv<1> > m_axi_a_ARUSER;
    sc_in< sc_logic > m_axi_a_RVALID;
    sc_out< sc_logic > m_axi_a_RREADY;
    sc_in< sc_lv<16> > m_axi_a_RDATA;
    sc_in< sc_logic > m_axi_a_RLAST;
    sc_in< sc_lv<1> > m_axi_a_RID;
    sc_in< sc_lv<1> > m_axi_a_RUSER;
    sc_in< sc_lv<2> > m_axi_a_RRESP;
    sc_in< sc_logic > m_axi_a_BVALID;
    sc_out< sc_logic > m_axi_a_BREADY;
    sc_in< sc_lv<2> > m_axi_a_BRESP;
    sc_in< sc_lv<1> > m_axi_a_BID;
    sc_in< sc_lv<1> > m_axi_a_BUSER;
    sc_in< sc_lv<31> > a_offset;
    sc_out< sc_lv<12> > A_buffer_0_address0;
    sc_out< sc_logic > A_buffer_0_ce0;
    sc_out< sc_logic > A_buffer_0_we0;
    sc_out< sc_lv<16> > A_buffer_0_d0;
    sc_out< sc_lv<12> > A_buffer_1_address0;
    sc_out< sc_logic > A_buffer_1_ce0;
    sc_out< sc_logic > A_buffer_1_we0;
    sc_out< sc_lv<16> > A_buffer_1_d0;
    sc_out< sc_lv<12> > A_buffer_2_address0;
    sc_out< sc_logic > A_buffer_2_ce0;
    sc_out< sc_logic > A_buffer_2_we0;
    sc_out< sc_lv<16> > A_buffer_2_d0;
    sc_out< sc_lv<12> > A_buffer_3_address0;
    sc_out< sc_logic > A_buffer_3_ce0;
    sc_out< sc_logic > A_buffer_3_we0;
    sc_out< sc_lv<16> > A_buffer_3_d0;
    sc_out< sc_lv<12> > A_buffer_4_address0;
    sc_out< sc_logic > A_buffer_4_ce0;
    sc_out< sc_logic > A_buffer_4_we0;
    sc_out< sc_lv<16> > A_buffer_4_d0;
    sc_out< sc_lv<12> > A_buffer_5_address0;
    sc_out< sc_logic > A_buffer_5_ce0;
    sc_out< sc_logic > A_buffer_5_we0;
    sc_out< sc_lv<16> > A_buffer_5_d0;
    sc_out< sc_lv<12> > A_buffer_6_address0;
    sc_out< sc_logic > A_buffer_6_ce0;
    sc_out< sc_logic > A_buffer_6_we0;
    sc_out< sc_lv<16> > A_buffer_6_d0;
    sc_out< sc_lv<12> > A_buffer_7_address0;
    sc_out< sc_logic > A_buffer_7_ce0;
    sc_out< sc_logic > A_buffer_7_we0;
    sc_out< sc_lv<16> > A_buffer_7_d0;


    // Module declarations
    read_color(sc_module_name name);
    SC_HAS_PROCESS(read_color);

    ~read_color();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<12> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > a_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > a_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<32> > a_offset_cast_fu_236_p1;
    sc_signal< sc_lv<32> > a_offset_cast_reg_387;
    sc_signal< sc_lv<7> > add_ln25_fu_240_p2;
    sc_signal< sc_lv<7> > add_ln25_reg_392;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<15> > add_ln25_2_fu_270_p2;
    sc_signal< sc_lv<15> > add_ln25_2_reg_397;
    sc_signal< sc_lv<3> > trunc_ln25_fu_276_p1;
    sc_signal< sc_lv<3> > trunc_ln25_reg_402;
    sc_signal< sc_lv<12> > add_ln25_3_fu_314_p2;
    sc_signal< sc_lv<12> > add_ln25_3_reg_406;
    sc_signal< sc_lv<32> > a_addr_reg_411;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > add_ln25_1_fu_348_p2;
    sc_signal< sc_lv<8> > add_ln25_1_reg_417;
    sc_signal< sc_lv<12> > A_buffer_0_addr_reg_422;
    sc_signal< sc_lv<12> > A_buffer_1_addr_reg_427;
    sc_signal< sc_lv<12> > A_buffer_2_addr_reg_432;
    sc_signal< sc_lv<12> > A_buffer_3_addr_reg_437;
    sc_signal< sc_lv<12> > A_buffer_4_addr_reg_442;
    sc_signal< sc_lv<12> > A_buffer_5_addr_reg_447;
    sc_signal< sc_lv<12> > A_buffer_6_addr_reg_452;
    sc_signal< sc_lv<12> > A_buffer_7_addr_reg_457;
    sc_signal< sc_lv<16> > a_addr_read_reg_462;
    sc_signal< sc_lv<7> > phi_ln25_reg_212;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > icmp_ln25_fu_375_p2;
    sc_signal< sc_lv<1> > icmp_ln25_1_fu_381_p2;
    sc_signal< sc_lv<8> > phi_ln25_1_reg_224;
    sc_signal< sc_lv<64> > zext_ln25_8_fu_363_p1;
    sc_signal< sc_lv<64> > zext_ln25_7_fu_338_p1;
    sc_signal< sc_lv<14> > tmp_fu_246_p3;
    sc_signal< sc_lv<12> > tmp_5_fu_258_p3;
    sc_signal< sc_lv<15> > zext_ln25_fu_254_p1;
    sc_signal< sc_lv<15> > zext_ln25_1_fu_266_p1;
    sc_signal< sc_lv<4> > lshr_ln_fu_280_p4;
    sc_signal< sc_lv<11> > tmp_6_fu_290_p3;
    sc_signal< sc_lv<9> > tmp_7_fu_302_p3;
    sc_signal< sc_lv<12> > zext_ln25_2_fu_298_p1;
    sc_signal< sc_lv<12> > zext_ln25_3_fu_310_p1;
    sc_signal< sc_lv<15> > zext_ln25_5_fu_320_p1;
    sc_signal< sc_lv<15> > add_ln25_4_fu_324_p2;
    sc_signal< sc_lv<32> > zext_ln25_6_fu_329_p1;
    sc_signal< sc_lv<32> > add_ln25_5_fu_333_p2;
    sc_signal< sc_lv<12> > zext_ln25_4_fu_354_p1;
    sc_signal< sc_lv<12> > add_ln25_6_fu_358_p2;
    sc_signal< sc_lv<12> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<12> ap_ST_fsm_state1;
    static const sc_lv<12> ap_ST_fsm_state2;
    static const sc_lv<12> ap_ST_fsm_state3;
    static const sc_lv<12> ap_ST_fsm_state4;
    static const sc_lv<12> ap_ST_fsm_state5;
    static const sc_lv<12> ap_ST_fsm_state6;
    static const sc_lv<12> ap_ST_fsm_state7;
    static const sc_lv<12> ap_ST_fsm_state8;
    static const sc_lv<12> ap_ST_fsm_state9;
    static const sc_lv<12> ap_ST_fsm_state10;
    static const sc_lv<12> ap_ST_fsm_state11;
    static const sc_lv<12> ap_ST_fsm_state12;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_9F;
    static const sc_lv<7> ap_const_lv7_77;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_A_buffer_0_address0();
    void thread_A_buffer_0_ce0();
    void thread_A_buffer_0_d0();
    void thread_A_buffer_0_we0();
    void thread_A_buffer_1_address0();
    void thread_A_buffer_1_ce0();
    void thread_A_buffer_1_d0();
    void thread_A_buffer_1_we0();
    void thread_A_buffer_2_address0();
    void thread_A_buffer_2_ce0();
    void thread_A_buffer_2_d0();
    void thread_A_buffer_2_we0();
    void thread_A_buffer_3_address0();
    void thread_A_buffer_3_ce0();
    void thread_A_buffer_3_d0();
    void thread_A_buffer_3_we0();
    void thread_A_buffer_4_address0();
    void thread_A_buffer_4_ce0();
    void thread_A_buffer_4_d0();
    void thread_A_buffer_4_we0();
    void thread_A_buffer_5_address0();
    void thread_A_buffer_5_ce0();
    void thread_A_buffer_5_d0();
    void thread_A_buffer_5_we0();
    void thread_A_buffer_6_address0();
    void thread_A_buffer_6_ce0();
    void thread_A_buffer_6_d0();
    void thread_A_buffer_6_we0();
    void thread_A_buffer_7_address0();
    void thread_A_buffer_7_ce0();
    void thread_A_buffer_7_d0();
    void thread_A_buffer_7_we0();
    void thread_a_blk_n_AR();
    void thread_a_blk_n_R();
    void thread_a_offset_cast_fu_236_p1();
    void thread_add_ln25_1_fu_348_p2();
    void thread_add_ln25_2_fu_270_p2();
    void thread_add_ln25_3_fu_314_p2();
    void thread_add_ln25_4_fu_324_p2();
    void thread_add_ln25_5_fu_333_p2();
    void thread_add_ln25_6_fu_358_p2();
    void thread_add_ln25_fu_240_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_icmp_ln25_1_fu_381_p2();
    void thread_icmp_ln25_fu_375_p2();
    void thread_lshr_ln_fu_280_p4();
    void thread_m_axi_a_ARADDR();
    void thread_m_axi_a_ARBURST();
    void thread_m_axi_a_ARCACHE();
    void thread_m_axi_a_ARID();
    void thread_m_axi_a_ARLEN();
    void thread_m_axi_a_ARLOCK();
    void thread_m_axi_a_ARPROT();
    void thread_m_axi_a_ARQOS();
    void thread_m_axi_a_ARREGION();
    void thread_m_axi_a_ARSIZE();
    void thread_m_axi_a_ARUSER();
    void thread_m_axi_a_ARVALID();
    void thread_m_axi_a_AWADDR();
    void thread_m_axi_a_AWBURST();
    void thread_m_axi_a_AWCACHE();
    void thread_m_axi_a_AWID();
    void thread_m_axi_a_AWLEN();
    void thread_m_axi_a_AWLOCK();
    void thread_m_axi_a_AWPROT();
    void thread_m_axi_a_AWQOS();
    void thread_m_axi_a_AWREGION();
    void thread_m_axi_a_AWSIZE();
    void thread_m_axi_a_AWUSER();
    void thread_m_axi_a_AWVALID();
    void thread_m_axi_a_BREADY();
    void thread_m_axi_a_RREADY();
    void thread_m_axi_a_WDATA();
    void thread_m_axi_a_WID();
    void thread_m_axi_a_WLAST();
    void thread_m_axi_a_WSTRB();
    void thread_m_axi_a_WUSER();
    void thread_m_axi_a_WVALID();
    void thread_tmp_5_fu_258_p3();
    void thread_tmp_6_fu_290_p3();
    void thread_tmp_7_fu_302_p3();
    void thread_tmp_fu_246_p3();
    void thread_trunc_ln25_fu_276_p1();
    void thread_zext_ln25_1_fu_266_p1();
    void thread_zext_ln25_2_fu_298_p1();
    void thread_zext_ln25_3_fu_310_p1();
    void thread_zext_ln25_4_fu_354_p1();
    void thread_zext_ln25_5_fu_320_p1();
    void thread_zext_ln25_6_fu_329_p1();
    void thread_zext_ln25_7_fu_338_p1();
    void thread_zext_ln25_8_fu_363_p1();
    void thread_zext_ln25_fu_254_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif