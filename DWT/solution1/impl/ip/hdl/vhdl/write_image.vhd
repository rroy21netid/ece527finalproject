-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity write_image is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    C_buffer_0_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    C_buffer_0_ce0 : OUT STD_LOGIC;
    C_buffer_0_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    C_buffer_1_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    C_buffer_1_ce0 : OUT STD_LOGIC;
    C_buffer_1_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    C_buffer_2_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    C_buffer_2_ce0 : OUT STD_LOGIC;
    C_buffer_2_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    C_buffer_3_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    C_buffer_3_ce0 : OUT STD_LOGIC;
    C_buffer_3_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    C_buffer_4_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    C_buffer_4_ce0 : OUT STD_LOGIC;
    C_buffer_4_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    C_buffer_5_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    C_buffer_5_ce0 : OUT STD_LOGIC;
    C_buffer_5_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    C_buffer_6_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    C_buffer_6_ce0 : OUT STD_LOGIC;
    C_buffer_6_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    C_buffer_7_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    C_buffer_7_ce0 : OUT STD_LOGIC;
    C_buffer_7_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    m_axi_c_AWVALID : OUT STD_LOGIC;
    m_axi_c_AWREADY : IN STD_LOGIC;
    m_axi_c_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_c_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_c_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_c_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_c_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_c_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_c_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_c_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_c_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_c_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_c_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_c_WVALID : OUT STD_LOGIC;
    m_axi_c_WREADY : IN STD_LOGIC;
    m_axi_c_WDATA : OUT STD_LOGIC_VECTOR (15 downto 0);
    m_axi_c_WSTRB : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_c_WLAST : OUT STD_LOGIC;
    m_axi_c_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_c_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_c_ARVALID : OUT STD_LOGIC;
    m_axi_c_ARREADY : IN STD_LOGIC;
    m_axi_c_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_c_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_c_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_c_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_c_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_c_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_c_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_c_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_c_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_c_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_c_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_c_RVALID : IN STD_LOGIC;
    m_axi_c_RREADY : OUT STD_LOGIC;
    m_axi_c_RDATA : IN STD_LOGIC_VECTOR (15 downto 0);
    m_axi_c_RLAST : IN STD_LOGIC;
    m_axi_c_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_c_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_c_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_c_BVALID : IN STD_LOGIC;
    m_axi_c_BREADY : OUT STD_LOGIC;
    m_axi_c_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_c_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_c_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    c_offset : IN STD_LOGIC_VECTOR (30 downto 0) );
end;


architecture behav of write_image is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (10 downto 0) := "00000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (10 downto 0) := "00000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (10 downto 0) := "00000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (10 downto 0) := "00000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (10 downto 0) := "00000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (10 downto 0) := "00001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (10 downto 0) := "00010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (10 downto 0) := "00100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (10 downto 0) := "01000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_A0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010100000";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv8_9F : STD_LOGIC_VECTOR (7 downto 0) := "10011111";
    constant ap_const_lv7_77 : STD_LOGIC_VECTOR (6 downto 0) := "1110111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal c_blk_n_AW : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal c_blk_n_W : STD_LOGIC;
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal c_blk_n_B : STD_LOGIC;
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal c_offset_cast_fu_239_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal c_offset_cast_reg_403 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln35_fu_273_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln35_reg_408 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal lshr_ln_reg_413 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_addr_reg_419 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln35_fu_306_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln35_reg_425 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln35_2_fu_312_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln35_2_reg_430 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln35_3_fu_337_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln35_3_reg_435 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln35_1_fu_343_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln35_1_reg_440 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal icmp_ln35_fu_370_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln35_reg_485 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_376_p10 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_reg_489 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln35_1_fu_397_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln35_1_reg_494 : STD_LOGIC_VECTOR (0 downto 0);
    signal phi_ln35_reg_216 : STD_LOGIC_VECTOR (6 downto 0);
    signal phi_ln35_1_reg_228 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln35_8_fu_358_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln35_6_fu_296_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_fu_243_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_2_fu_255_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln35_fu_251_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal zext_ln35_1_fu_263_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal add_ln35_2_fu_267_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal zext_ln35_5_fu_287_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln35_5_fu_291_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_fu_315_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_4_fu_326_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln35_3_fu_322_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln35_4_fu_333_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln35_7_fu_349_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln35_4_fu_353_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (10 downto 0);

    component DWT_Accel_mux_832ibs IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        din3 : IN STD_LOGIC_VECTOR (15 downto 0);
        din4 : IN STD_LOGIC_VECTOR (15 downto 0);
        din5 : IN STD_LOGIC_VECTOR (15 downto 0);
        din6 : IN STD_LOGIC_VECTOR (15 downto 0);
        din7 : IN STD_LOGIC_VECTOR (15 downto 0);
        din8 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    DWT_Accel_mux_832ibs_U121 : component DWT_Accel_mux_832ibs
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 16,
        din3_WIDTH => 16,
        din4_WIDTH => 16,
        din5_WIDTH => 16,
        din6_WIDTH => 16,
        din7_WIDTH => 16,
        din8_WIDTH => 32,
        dout_WIDTH => 16)
    port map (
        din0 => C_buffer_0_q0,
        din1 => C_buffer_1_q0,
        din2 => C_buffer_2_q0,
        din3 => C_buffer_3_q0,
        din4 => C_buffer_4_q0,
        din5 => C_buffer_5_q0,
        din6 => C_buffer_6_q0,
        din7 => C_buffer_7_q0,
        din8 => zext_ln35_2_reg_430,
        dout => tmp_fu_376_p10);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    phi_ln35_1_reg_228_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((m_axi_c_WREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln35_reg_485 = ap_const_lv1_0))) then 
                phi_ln35_1_reg_228 <= add_ln35_1_reg_440;
            elsif (((m_axi_c_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                phi_ln35_1_reg_228 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    phi_ln35_reg_216_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state11) and (icmp_ln35_1_reg_494 = ap_const_lv1_0) and (m_axi_c_BVALID = ap_const_logic_1))) then 
                phi_ln35_reg_216 <= add_ln35_reg_425;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                phi_ln35_reg_216 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                add_ln35_1_reg_440 <= add_ln35_1_fu_343_p2;
                icmp_ln35_reg_485 <= icmp_ln35_fu_370_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((m_axi_c_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    add_ln35_3_reg_435(11 downto 5) <= add_ln35_3_fu_337_p2(11 downto 5);
                add_ln35_reg_425 <= add_ln35_fu_306_p2;
                    zext_ln35_2_reg_430(2 downto 0) <= zext_ln35_2_fu_312_p1(2 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                c_addr_reg_419 <= zext_ln35_6_fu_296_p1(32 - 1 downto 0);
                lshr_ln_reg_413 <= phi_ln35_reg_216(6 downto 3);
                trunc_ln35_reg_408 <= trunc_ln35_fu_273_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    c_offset_cast_reg_403(30 downto 0) <= c_offset_cast_fu_239_p1(30 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((m_axi_c_WREADY = ap_const_logic_1) and (icmp_ln35_reg_485 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                icmp_ln35_1_reg_494 <= icmp_ln35_1_fu_397_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                tmp_reg_489 <= tmp_fu_376_p10;
            end if;
        end if;
    end process;
    c_offset_cast_reg_403(31) <= '0';
    zext_ln35_2_reg_430(31 downto 3) <= "00000000000000000000000000000";
    add_ln35_3_reg_435(4 downto 0) <= "00000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, m_axi_c_AWREADY, m_axi_c_WREADY, m_axi_c_BVALID, ap_CS_fsm_state3, ap_CS_fsm_state6, ap_CS_fsm_state11, icmp_ln35_reg_485, icmp_ln35_1_reg_494)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((m_axi_c_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((m_axi_c_WREADY = ap_const_logic_1) and (icmp_ln35_reg_485 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                elsif (((m_axi_c_WREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln35_reg_485 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                if (((icmp_ln35_1_reg_494 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state11) and (m_axi_c_BVALID = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state11) and (icmp_ln35_1_reg_494 = ap_const_lv1_0) and (m_axi_c_BVALID = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXX";
        end case;
    end process;
    C_buffer_0_address0 <= zext_ln35_8_fu_358_p1(12 - 1 downto 0);

    C_buffer_0_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            C_buffer_0_ce0 <= ap_const_logic_1;
        else 
            C_buffer_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_buffer_1_address0 <= zext_ln35_8_fu_358_p1(12 - 1 downto 0);

    C_buffer_1_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            C_buffer_1_ce0 <= ap_const_logic_1;
        else 
            C_buffer_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_buffer_2_address0 <= zext_ln35_8_fu_358_p1(12 - 1 downto 0);

    C_buffer_2_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            C_buffer_2_ce0 <= ap_const_logic_1;
        else 
            C_buffer_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_buffer_3_address0 <= zext_ln35_8_fu_358_p1(12 - 1 downto 0);

    C_buffer_3_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            C_buffer_3_ce0 <= ap_const_logic_1;
        else 
            C_buffer_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_buffer_4_address0 <= zext_ln35_8_fu_358_p1(12 - 1 downto 0);

    C_buffer_4_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            C_buffer_4_ce0 <= ap_const_logic_1;
        else 
            C_buffer_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_buffer_5_address0 <= zext_ln35_8_fu_358_p1(12 - 1 downto 0);

    C_buffer_5_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            C_buffer_5_ce0 <= ap_const_logic_1;
        else 
            C_buffer_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_buffer_6_address0 <= zext_ln35_8_fu_358_p1(12 - 1 downto 0);

    C_buffer_6_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            C_buffer_6_ce0 <= ap_const_logic_1;
        else 
            C_buffer_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_buffer_7_address0 <= zext_ln35_8_fu_358_p1(12 - 1 downto 0);

    C_buffer_7_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            C_buffer_7_ce0 <= ap_const_logic_1;
        else 
            C_buffer_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln35_1_fu_343_p2 <= std_logic_vector(unsigned(phi_ln35_1_reg_228) + unsigned(ap_const_lv8_1));
    add_ln35_2_fu_267_p2 <= std_logic_vector(unsigned(zext_ln35_fu_251_p1) + unsigned(zext_ln35_1_fu_263_p1));
    add_ln35_3_fu_337_p2 <= std_logic_vector(unsigned(zext_ln35_3_fu_322_p1) + unsigned(zext_ln35_4_fu_333_p1));
    add_ln35_4_fu_353_p2 <= std_logic_vector(unsigned(add_ln35_3_reg_435) + unsigned(zext_ln35_7_fu_349_p1));
    add_ln35_5_fu_291_p2 <= std_logic_vector(unsigned(zext_ln35_5_fu_287_p1) + unsigned(c_offset_cast_reg_403));
    add_ln35_fu_306_p2 <= std_logic_vector(unsigned(ap_const_lv7_1) + unsigned(phi_ln35_reg_216));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, m_axi_c_BVALID, ap_CS_fsm_state11, icmp_ln35_1_reg_494)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((icmp_ln35_1_reg_494 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state11) and (m_axi_c_BVALID = ap_const_logic_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(m_axi_c_BVALID, ap_CS_fsm_state11, icmp_ln35_1_reg_494)
    begin
        if (((icmp_ln35_1_reg_494 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state11) and (m_axi_c_BVALID = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    c_blk_n_AW_assign_proc : process(m_axi_c_AWREADY, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            c_blk_n_AW <= m_axi_c_AWREADY;
        else 
            c_blk_n_AW <= ap_const_logic_1;
        end if; 
    end process;


    c_blk_n_B_assign_proc : process(m_axi_c_BVALID, ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            c_blk_n_B <= m_axi_c_BVALID;
        else 
            c_blk_n_B <= ap_const_logic_1;
        end if; 
    end process;


    c_blk_n_W_assign_proc : process(m_axi_c_WREADY, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            c_blk_n_W <= m_axi_c_WREADY;
        else 
            c_blk_n_W <= ap_const_logic_1;
        end if; 
    end process;

    c_offset_cast_fu_239_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c_offset),32));
    icmp_ln35_1_fu_397_p2 <= "1" when (phi_ln35_reg_216 = ap_const_lv7_77) else "0";
    icmp_ln35_fu_370_p2 <= "1" when (phi_ln35_1_reg_228 = ap_const_lv8_9F) else "0";
    m_axi_c_ARADDR <= ap_const_lv32_0;
    m_axi_c_ARBURST <= ap_const_lv2_0;
    m_axi_c_ARCACHE <= ap_const_lv4_0;
    m_axi_c_ARID <= ap_const_lv1_0;
    m_axi_c_ARLEN <= ap_const_lv32_0;
    m_axi_c_ARLOCK <= ap_const_lv2_0;
    m_axi_c_ARPROT <= ap_const_lv3_0;
    m_axi_c_ARQOS <= ap_const_lv4_0;
    m_axi_c_ARREGION <= ap_const_lv4_0;
    m_axi_c_ARSIZE <= ap_const_lv3_0;
    m_axi_c_ARUSER <= ap_const_lv1_0;
    m_axi_c_ARVALID <= ap_const_logic_0;
    m_axi_c_AWADDR <= c_addr_reg_419;
    m_axi_c_AWBURST <= ap_const_lv2_0;
    m_axi_c_AWCACHE <= ap_const_lv4_0;
    m_axi_c_AWID <= ap_const_lv1_0;
    m_axi_c_AWLEN <= ap_const_lv32_A0;
    m_axi_c_AWLOCK <= ap_const_lv2_0;
    m_axi_c_AWPROT <= ap_const_lv3_0;
    m_axi_c_AWQOS <= ap_const_lv4_0;
    m_axi_c_AWREGION <= ap_const_lv4_0;
    m_axi_c_AWSIZE <= ap_const_lv3_0;
    m_axi_c_AWUSER <= ap_const_lv1_0;

    m_axi_c_AWVALID_assign_proc : process(m_axi_c_AWREADY, ap_CS_fsm_state3)
    begin
        if (((m_axi_c_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_c_AWVALID <= ap_const_logic_1;
        else 
            m_axi_c_AWVALID <= ap_const_logic_0;
        end if; 
    end process;


    m_axi_c_BREADY_assign_proc : process(m_axi_c_BVALID, ap_CS_fsm_state11)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state11) and (m_axi_c_BVALID = ap_const_logic_1))) then 
            m_axi_c_BREADY <= ap_const_logic_1;
        else 
            m_axi_c_BREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_c_RREADY <= ap_const_logic_0;
    m_axi_c_WDATA <= tmp_reg_489;
    m_axi_c_WID <= ap_const_lv1_0;
    m_axi_c_WLAST <= ap_const_logic_0;
    m_axi_c_WSTRB <= ap_const_lv2_3;
    m_axi_c_WUSER <= ap_const_lv1_0;

    m_axi_c_WVALID_assign_proc : process(m_axi_c_WREADY, ap_CS_fsm_state6)
    begin
        if (((m_axi_c_WREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            m_axi_c_WVALID <= ap_const_logic_1;
        else 
            m_axi_c_WVALID <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_243_p3 <= (phi_ln35_reg_216 & ap_const_lv7_0);
    tmp_2_fu_255_p3 <= (phi_ln35_reg_216 & ap_const_lv5_0);
    tmp_3_fu_315_p3 <= (lshr_ln_reg_413 & ap_const_lv7_0);
    tmp_4_fu_326_p3 <= (lshr_ln_reg_413 & ap_const_lv5_0);
    trunc_ln35_fu_273_p1 <= phi_ln35_reg_216(3 - 1 downto 0);
    zext_ln35_1_fu_263_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_255_p3),15));
    zext_ln35_2_fu_312_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln35_reg_408),32));
    zext_ln35_3_fu_322_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_fu_315_p3),12));
    zext_ln35_4_fu_333_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_4_fu_326_p3),12));
    zext_ln35_5_fu_287_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln35_2_fu_267_p2),32));
    zext_ln35_6_fu_296_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln35_5_fu_291_p2),64));
    zext_ln35_7_fu_349_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(phi_ln35_1_reg_228),12));
    zext_ln35_8_fu_358_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln35_4_fu_353_p2),64));
    zext_ln35_fu_251_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_243_p3),15));
end behav;