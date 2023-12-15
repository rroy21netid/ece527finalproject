-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity read_color is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_a_AWVALID : OUT STD_LOGIC;
    m_axi_a_AWREADY : IN STD_LOGIC;
    m_axi_a_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_a_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_a_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_a_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_a_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_a_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_a_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_a_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_a_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_a_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_a_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_a_WVALID : OUT STD_LOGIC;
    m_axi_a_WREADY : IN STD_LOGIC;
    m_axi_a_WDATA : OUT STD_LOGIC_VECTOR (15 downto 0);
    m_axi_a_WSTRB : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_a_WLAST : OUT STD_LOGIC;
    m_axi_a_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_a_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_a_ARVALID : OUT STD_LOGIC;
    m_axi_a_ARREADY : IN STD_LOGIC;
    m_axi_a_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_a_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_a_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_a_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_a_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_a_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_a_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_a_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_a_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_a_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_a_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_a_RVALID : IN STD_LOGIC;
    m_axi_a_RREADY : OUT STD_LOGIC;
    m_axi_a_RDATA : IN STD_LOGIC_VECTOR (15 downto 0);
    m_axi_a_RLAST : IN STD_LOGIC;
    m_axi_a_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_a_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_a_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_a_BVALID : IN STD_LOGIC;
    m_axi_a_BREADY : OUT STD_LOGIC;
    m_axi_a_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_a_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_a_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    a_offset : IN STD_LOGIC_VECTOR (30 downto 0);
    A_buffer_0_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    A_buffer_0_ce0 : OUT STD_LOGIC;
    A_buffer_0_we0 : OUT STD_LOGIC;
    A_buffer_0_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    A_buffer_1_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    A_buffer_1_ce0 : OUT STD_LOGIC;
    A_buffer_1_we0 : OUT STD_LOGIC;
    A_buffer_1_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    A_buffer_2_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    A_buffer_2_ce0 : OUT STD_LOGIC;
    A_buffer_2_we0 : OUT STD_LOGIC;
    A_buffer_2_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    A_buffer_3_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    A_buffer_3_ce0 : OUT STD_LOGIC;
    A_buffer_3_we0 : OUT STD_LOGIC;
    A_buffer_3_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    A_buffer_4_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    A_buffer_4_ce0 : OUT STD_LOGIC;
    A_buffer_4_we0 : OUT STD_LOGIC;
    A_buffer_4_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    A_buffer_5_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    A_buffer_5_ce0 : OUT STD_LOGIC;
    A_buffer_5_we0 : OUT STD_LOGIC;
    A_buffer_5_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    A_buffer_6_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    A_buffer_6_ce0 : OUT STD_LOGIC;
    A_buffer_6_we0 : OUT STD_LOGIC;
    A_buffer_6_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    A_buffer_7_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    A_buffer_7_ce0 : OUT STD_LOGIC;
    A_buffer_7_we0 : OUT STD_LOGIC;
    A_buffer_7_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of read_color is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (11 downto 0) := "000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (11 downto 0) := "000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (11 downto 0) := "000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (11 downto 0) := "000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (11 downto 0) := "001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (11 downto 0) := "010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv8_9F : STD_LOGIC_VECTOR (7 downto 0) := "10011111";
    constant ap_const_lv7_77 : STD_LOGIC_VECTOR (6 downto 0) := "1110111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal a_blk_n_AR : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal a_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal a_offset_cast_fu_236_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal a_offset_cast_reg_387 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln25_fu_240_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln25_reg_392 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal add_ln25_2_fu_270_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal add_ln25_2_reg_397 : STD_LOGIC_VECTOR (14 downto 0);
    signal trunc_ln25_fu_276_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln25_reg_402 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln25_3_fu_314_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln25_3_reg_406 : STD_LOGIC_VECTOR (11 downto 0);
    signal a_addr_reg_411 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal add_ln25_1_fu_348_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln25_1_reg_417 : STD_LOGIC_VECTOR (7 downto 0);
    signal A_buffer_0_addr_reg_422 : STD_LOGIC_VECTOR (11 downto 0);
    signal A_buffer_1_addr_reg_427 : STD_LOGIC_VECTOR (11 downto 0);
    signal A_buffer_2_addr_reg_432 : STD_LOGIC_VECTOR (11 downto 0);
    signal A_buffer_3_addr_reg_437 : STD_LOGIC_VECTOR (11 downto 0);
    signal A_buffer_4_addr_reg_442 : STD_LOGIC_VECTOR (11 downto 0);
    signal A_buffer_5_addr_reg_447 : STD_LOGIC_VECTOR (11 downto 0);
    signal A_buffer_6_addr_reg_452 : STD_LOGIC_VECTOR (11 downto 0);
    signal A_buffer_7_addr_reg_457 : STD_LOGIC_VECTOR (11 downto 0);
    signal a_addr_read_reg_462 : STD_LOGIC_VECTOR (15 downto 0);
    signal phi_ln25_reg_212 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal icmp_ln25_fu_375_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln25_1_fu_381_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal phi_ln25_1_reg_224 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln25_8_fu_363_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln25_7_fu_338_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_246_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_5_fu_258_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln25_fu_254_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal zext_ln25_1_fu_266_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal lshr_ln_fu_280_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_6_fu_290_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_7_fu_302_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln25_2_fu_298_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln25_3_fu_310_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln25_5_fu_320_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal add_ln25_4_fu_324_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal zext_ln25_6_fu_329_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln25_5_fu_333_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln25_4_fu_354_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln25_6_fu_358_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (11 downto 0);


begin




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


    phi_ln25_1_reg_224_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln25_fu_375_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state12))) then 
                phi_ln25_1_reg_224 <= add_ln25_1_reg_417;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                phi_ln25_1_reg_224 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    phi_ln25_reg_212_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln25_1_fu_381_p2 = ap_const_lv1_0) and (icmp_ln25_fu_375_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state12))) then 
                phi_ln25_reg_212 <= add_ln25_reg_392;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                phi_ln25_reg_212 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((m_axi_a_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then
                A_buffer_0_addr_reg_422 <= zext_ln25_8_fu_363_p1(12 - 1 downto 0);
                A_buffer_1_addr_reg_427 <= zext_ln25_8_fu_363_p1(12 - 1 downto 0);
                A_buffer_2_addr_reg_432 <= zext_ln25_8_fu_363_p1(12 - 1 downto 0);
                A_buffer_3_addr_reg_437 <= zext_ln25_8_fu_363_p1(12 - 1 downto 0);
                A_buffer_4_addr_reg_442 <= zext_ln25_8_fu_363_p1(12 - 1 downto 0);
                A_buffer_5_addr_reg_447 <= zext_ln25_8_fu_363_p1(12 - 1 downto 0);
                A_buffer_6_addr_reg_452 <= zext_ln25_8_fu_363_p1(12 - 1 downto 0);
                A_buffer_7_addr_reg_457 <= zext_ln25_8_fu_363_p1(12 - 1 downto 0);
                a_addr_read_reg_462 <= m_axi_a_RDATA;
                add_ln25_1_reg_417 <= add_ln25_1_fu_348_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                a_addr_reg_411 <= zext_ln25_7_fu_338_p1(32 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    a_offset_cast_reg_387(30 downto 0) <= a_offset_cast_fu_236_p1(30 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                    add_ln25_2_reg_397(14 downto 5) <= add_ln25_2_fu_270_p2(14 downto 5);
                    add_ln25_3_reg_406(11 downto 5) <= add_ln25_3_fu_314_p2(11 downto 5);
                add_ln25_reg_392 <= add_ln25_fu_240_p2;
                trunc_ln25_reg_402 <= trunc_ln25_fu_276_p1;
            end if;
        end if;
    end process;
    a_offset_cast_reg_387(31) <= '0';
    add_ln25_2_reg_397(4 downto 0) <= "00000";
    add_ln25_3_reg_406(4 downto 0) <= "00000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, m_axi_a_ARREADY, m_axi_a_RVALID, ap_CS_fsm_state4, ap_CS_fsm_state11, ap_CS_fsm_state12, icmp_ln25_fu_375_p2, icmp_ln25_1_fu_381_p2)
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
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((m_axi_a_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                if (((m_axi_a_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then
                    ap_NS_fsm <= ap_ST_fsm_state12;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when ap_ST_fsm_state12 => 
                if (((icmp_ln25_1_fu_381_p2 = ap_const_lv1_1) and (icmp_ln25_fu_375_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state12))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((icmp_ln25_1_fu_381_p2 = ap_const_lv1_0) and (icmp_ln25_fu_375_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state12))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXX";
        end case;
    end process;
    A_buffer_0_address0 <= A_buffer_0_addr_reg_422;

    A_buffer_0_ce0_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            A_buffer_0_ce0 <= ap_const_logic_1;
        else 
            A_buffer_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_0_d0 <= a_addr_read_reg_462;

    A_buffer_0_we0_assign_proc : process(trunc_ln25_reg_402, ap_CS_fsm_state12)
    begin
        if (((trunc_ln25_reg_402 = ap_const_lv3_0) and (ap_const_logic_1 = ap_CS_fsm_state12))) then 
            A_buffer_0_we0 <= ap_const_logic_1;
        else 
            A_buffer_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_1_address0 <= A_buffer_1_addr_reg_427;

    A_buffer_1_ce0_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            A_buffer_1_ce0 <= ap_const_logic_1;
        else 
            A_buffer_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_1_d0 <= a_addr_read_reg_462;

    A_buffer_1_we0_assign_proc : process(trunc_ln25_reg_402, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) and (trunc_ln25_reg_402 = ap_const_lv3_1))) then 
            A_buffer_1_we0 <= ap_const_logic_1;
        else 
            A_buffer_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_2_address0 <= A_buffer_2_addr_reg_432;

    A_buffer_2_ce0_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            A_buffer_2_ce0 <= ap_const_logic_1;
        else 
            A_buffer_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_2_d0 <= a_addr_read_reg_462;

    A_buffer_2_we0_assign_proc : process(trunc_ln25_reg_402, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) and (trunc_ln25_reg_402 = ap_const_lv3_2))) then 
            A_buffer_2_we0 <= ap_const_logic_1;
        else 
            A_buffer_2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_3_address0 <= A_buffer_3_addr_reg_437;

    A_buffer_3_ce0_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            A_buffer_3_ce0 <= ap_const_logic_1;
        else 
            A_buffer_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_3_d0 <= a_addr_read_reg_462;

    A_buffer_3_we0_assign_proc : process(trunc_ln25_reg_402, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) and (trunc_ln25_reg_402 = ap_const_lv3_3))) then 
            A_buffer_3_we0 <= ap_const_logic_1;
        else 
            A_buffer_3_we0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_4_address0 <= A_buffer_4_addr_reg_442;

    A_buffer_4_ce0_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            A_buffer_4_ce0 <= ap_const_logic_1;
        else 
            A_buffer_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_4_d0 <= a_addr_read_reg_462;

    A_buffer_4_we0_assign_proc : process(trunc_ln25_reg_402, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) and (trunc_ln25_reg_402 = ap_const_lv3_4))) then 
            A_buffer_4_we0 <= ap_const_logic_1;
        else 
            A_buffer_4_we0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_5_address0 <= A_buffer_5_addr_reg_447;

    A_buffer_5_ce0_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            A_buffer_5_ce0 <= ap_const_logic_1;
        else 
            A_buffer_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_5_d0 <= a_addr_read_reg_462;

    A_buffer_5_we0_assign_proc : process(trunc_ln25_reg_402, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) and (trunc_ln25_reg_402 = ap_const_lv3_5))) then 
            A_buffer_5_we0 <= ap_const_logic_1;
        else 
            A_buffer_5_we0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_6_address0 <= A_buffer_6_addr_reg_452;

    A_buffer_6_ce0_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            A_buffer_6_ce0 <= ap_const_logic_1;
        else 
            A_buffer_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_6_d0 <= a_addr_read_reg_462;

    A_buffer_6_we0_assign_proc : process(trunc_ln25_reg_402, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) and (trunc_ln25_reg_402 = ap_const_lv3_6))) then 
            A_buffer_6_we0 <= ap_const_logic_1;
        else 
            A_buffer_6_we0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_7_address0 <= A_buffer_7_addr_reg_457;

    A_buffer_7_ce0_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            A_buffer_7_ce0 <= ap_const_logic_1;
        else 
            A_buffer_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    A_buffer_7_d0 <= a_addr_read_reg_462;

    A_buffer_7_we0_assign_proc : process(trunc_ln25_reg_402, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) and (trunc_ln25_reg_402 = ap_const_lv3_7))) then 
            A_buffer_7_we0 <= ap_const_logic_1;
        else 
            A_buffer_7_we0 <= ap_const_logic_0;
        end if; 
    end process;


    a_blk_n_AR_assign_proc : process(m_axi_a_ARREADY, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            a_blk_n_AR <= m_axi_a_ARREADY;
        else 
            a_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    a_blk_n_R_assign_proc : process(m_axi_a_RVALID, ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            a_blk_n_R <= m_axi_a_RVALID;
        else 
            a_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    a_offset_cast_fu_236_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(a_offset),32));
    add_ln25_1_fu_348_p2 <= std_logic_vector(unsigned(phi_ln25_1_reg_224) + unsigned(ap_const_lv8_1));
    add_ln25_2_fu_270_p2 <= std_logic_vector(unsigned(zext_ln25_fu_254_p1) + unsigned(zext_ln25_1_fu_266_p1));
    add_ln25_3_fu_314_p2 <= std_logic_vector(unsigned(zext_ln25_2_fu_298_p1) + unsigned(zext_ln25_3_fu_310_p1));
    add_ln25_4_fu_324_p2 <= std_logic_vector(unsigned(add_ln25_2_reg_397) + unsigned(zext_ln25_5_fu_320_p1));
    add_ln25_5_fu_333_p2 <= std_logic_vector(unsigned(a_offset_cast_reg_387) + unsigned(zext_ln25_6_fu_329_p1));
    add_ln25_6_fu_358_p2 <= std_logic_vector(unsigned(add_ln25_3_reg_406) + unsigned(zext_ln25_4_fu_354_p1));
    add_ln25_fu_240_p2 <= std_logic_vector(unsigned(ap_const_lv7_1) + unsigned(phi_ln25_reg_212));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state12, icmp_ln25_fu_375_p2, icmp_ln25_1_fu_381_p2)
    begin
        if ((((icmp_ln25_1_fu_381_p2 = ap_const_lv1_1) and (icmp_ln25_fu_375_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state12)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state12, icmp_ln25_fu_375_p2, icmp_ln25_1_fu_381_p2)
    begin
        if (((icmp_ln25_1_fu_381_p2 = ap_const_lv1_1) and (icmp_ln25_fu_375_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state12))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln25_1_fu_381_p2 <= "1" when (phi_ln25_reg_212 = ap_const_lv7_77) else "0";
    icmp_ln25_fu_375_p2 <= "1" when (phi_ln25_1_reg_224 = ap_const_lv8_9F) else "0";
    lshr_ln_fu_280_p4 <= phi_ln25_reg_212(6 downto 3);
    m_axi_a_ARADDR <= a_addr_reg_411;
    m_axi_a_ARBURST <= ap_const_lv2_0;
    m_axi_a_ARCACHE <= ap_const_lv4_0;
    m_axi_a_ARID <= ap_const_lv1_0;
    m_axi_a_ARLEN <= ap_const_lv32_1;
    m_axi_a_ARLOCK <= ap_const_lv2_0;
    m_axi_a_ARPROT <= ap_const_lv3_0;
    m_axi_a_ARQOS <= ap_const_lv4_0;
    m_axi_a_ARREGION <= ap_const_lv4_0;
    m_axi_a_ARSIZE <= ap_const_lv3_0;
    m_axi_a_ARUSER <= ap_const_lv1_0;

    m_axi_a_ARVALID_assign_proc : process(m_axi_a_ARREADY, ap_CS_fsm_state4)
    begin
        if (((m_axi_a_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            m_axi_a_ARVALID <= ap_const_logic_1;
        else 
            m_axi_a_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_a_AWADDR <= ap_const_lv32_0;
    m_axi_a_AWBURST <= ap_const_lv2_0;
    m_axi_a_AWCACHE <= ap_const_lv4_0;
    m_axi_a_AWID <= ap_const_lv1_0;
    m_axi_a_AWLEN <= ap_const_lv32_0;
    m_axi_a_AWLOCK <= ap_const_lv2_0;
    m_axi_a_AWPROT <= ap_const_lv3_0;
    m_axi_a_AWQOS <= ap_const_lv4_0;
    m_axi_a_AWREGION <= ap_const_lv4_0;
    m_axi_a_AWSIZE <= ap_const_lv3_0;
    m_axi_a_AWUSER <= ap_const_lv1_0;
    m_axi_a_AWVALID <= ap_const_logic_0;
    m_axi_a_BREADY <= ap_const_logic_0;

    m_axi_a_RREADY_assign_proc : process(m_axi_a_RVALID, ap_CS_fsm_state11)
    begin
        if (((m_axi_a_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            m_axi_a_RREADY <= ap_const_logic_1;
        else 
            m_axi_a_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_a_WDATA <= ap_const_lv16_0;
    m_axi_a_WID <= ap_const_lv1_0;
    m_axi_a_WLAST <= ap_const_logic_0;
    m_axi_a_WSTRB <= ap_const_lv2_0;
    m_axi_a_WUSER <= ap_const_lv1_0;
    m_axi_a_WVALID <= ap_const_logic_0;
    tmp_5_fu_258_p3 <= (phi_ln25_reg_212 & ap_const_lv5_0);
    tmp_6_fu_290_p3 <= (lshr_ln_fu_280_p4 & ap_const_lv7_0);
    tmp_7_fu_302_p3 <= (lshr_ln_fu_280_p4 & ap_const_lv5_0);
    tmp_fu_246_p3 <= (phi_ln25_reg_212 & ap_const_lv7_0);
    trunc_ln25_fu_276_p1 <= phi_ln25_reg_212(3 - 1 downto 0);
    zext_ln25_1_fu_266_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_258_p3),15));
    zext_ln25_2_fu_298_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_6_fu_290_p3),12));
    zext_ln25_3_fu_310_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_7_fu_302_p3),12));
    zext_ln25_4_fu_354_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(phi_ln25_1_reg_224),12));
    zext_ln25_5_fu_320_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(phi_ln25_1_reg_224),15));
    zext_ln25_6_fu_329_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln25_4_fu_324_p2),32));
    zext_ln25_7_fu_338_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln25_5_fu_333_p2),64));
    zext_ln25_8_fu_363_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln25_6_fu_358_p2),64));
    zext_ln25_fu_254_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_246_p3),15));
end behav;