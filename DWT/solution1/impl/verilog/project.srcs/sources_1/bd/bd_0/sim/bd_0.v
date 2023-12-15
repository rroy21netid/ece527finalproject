//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Dec 14 23:17:08 2023
//Host        : RonaldRoyPC running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (ap_clk,
    ap_rst_n,
    interrupt,
    m_axi_DATA_A_araddr,
    m_axi_DATA_A_arburst,
    m_axi_DATA_A_arcache,
    m_axi_DATA_A_arlen,
    m_axi_DATA_A_arlock,
    m_axi_DATA_A_arprot,
    m_axi_DATA_A_arqos,
    m_axi_DATA_A_arready,
    m_axi_DATA_A_arregion,
    m_axi_DATA_A_arsize,
    m_axi_DATA_A_arvalid,
    m_axi_DATA_A_awaddr,
    m_axi_DATA_A_awburst,
    m_axi_DATA_A_awcache,
    m_axi_DATA_A_awlen,
    m_axi_DATA_A_awlock,
    m_axi_DATA_A_awprot,
    m_axi_DATA_A_awqos,
    m_axi_DATA_A_awready,
    m_axi_DATA_A_awregion,
    m_axi_DATA_A_awsize,
    m_axi_DATA_A_awvalid,
    m_axi_DATA_A_bready,
    m_axi_DATA_A_bresp,
    m_axi_DATA_A_bvalid,
    m_axi_DATA_A_rdata,
    m_axi_DATA_A_rlast,
    m_axi_DATA_A_rready,
    m_axi_DATA_A_rresp,
    m_axi_DATA_A_rvalid,
    m_axi_DATA_A_wdata,
    m_axi_DATA_A_wlast,
    m_axi_DATA_A_wready,
    m_axi_DATA_A_wstrb,
    m_axi_DATA_A_wvalid,
    m_axi_DATA_B_araddr,
    m_axi_DATA_B_arburst,
    m_axi_DATA_B_arcache,
    m_axi_DATA_B_arlen,
    m_axi_DATA_B_arlock,
    m_axi_DATA_B_arprot,
    m_axi_DATA_B_arqos,
    m_axi_DATA_B_arready,
    m_axi_DATA_B_arregion,
    m_axi_DATA_B_arsize,
    m_axi_DATA_B_arvalid,
    m_axi_DATA_B_awaddr,
    m_axi_DATA_B_awburst,
    m_axi_DATA_B_awcache,
    m_axi_DATA_B_awlen,
    m_axi_DATA_B_awlock,
    m_axi_DATA_B_awprot,
    m_axi_DATA_B_awqos,
    m_axi_DATA_B_awready,
    m_axi_DATA_B_awregion,
    m_axi_DATA_B_awsize,
    m_axi_DATA_B_awvalid,
    m_axi_DATA_B_bready,
    m_axi_DATA_B_bresp,
    m_axi_DATA_B_bvalid,
    m_axi_DATA_B_rdata,
    m_axi_DATA_B_rlast,
    m_axi_DATA_B_rready,
    m_axi_DATA_B_rresp,
    m_axi_DATA_B_rvalid,
    m_axi_DATA_B_wdata,
    m_axi_DATA_B_wlast,
    m_axi_DATA_B_wready,
    m_axi_DATA_B_wstrb,
    m_axi_DATA_B_wvalid,
    m_axi_DATA_C_araddr,
    m_axi_DATA_C_arburst,
    m_axi_DATA_C_arcache,
    m_axi_DATA_C_arlen,
    m_axi_DATA_C_arlock,
    m_axi_DATA_C_arprot,
    m_axi_DATA_C_arqos,
    m_axi_DATA_C_arready,
    m_axi_DATA_C_arregion,
    m_axi_DATA_C_arsize,
    m_axi_DATA_C_arvalid,
    m_axi_DATA_C_awaddr,
    m_axi_DATA_C_awburst,
    m_axi_DATA_C_awcache,
    m_axi_DATA_C_awlen,
    m_axi_DATA_C_awlock,
    m_axi_DATA_C_awprot,
    m_axi_DATA_C_awqos,
    m_axi_DATA_C_awready,
    m_axi_DATA_C_awregion,
    m_axi_DATA_C_awsize,
    m_axi_DATA_C_awvalid,
    m_axi_DATA_C_bready,
    m_axi_DATA_C_bresp,
    m_axi_DATA_C_bvalid,
    m_axi_DATA_C_rdata,
    m_axi_DATA_C_rlast,
    m_axi_DATA_C_rready,
    m_axi_DATA_C_rresp,
    m_axi_DATA_C_rvalid,
    m_axi_DATA_C_wdata,
    m_axi_DATA_C_wlast,
    m_axi_DATA_C_wready,
    m_axi_DATA_C_wstrb,
    m_axi_DATA_C_wvalid,
    s_axi_CTL_araddr,
    s_axi_CTL_arready,
    s_axi_CTL_arvalid,
    s_axi_CTL_awaddr,
    s_axi_CTL_awready,
    s_axi_CTL_awvalid,
    s_axi_CTL_bready,
    s_axi_CTL_bresp,
    s_axi_CTL_bvalid,
    s_axi_CTL_rdata,
    s_axi_CTL_rready,
    s_axi_CTL_rresp,
    s_axi_CTL_rvalid,
    s_axi_CTL_wdata,
    s_axi_CTL_wready,
    s_axi_CTL_wstrb,
    s_axi_CTL_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF m_axi_DATA_A:m_axi_DATA_B:m_axi_DATA_C:s_axi_CTL, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, INSERT_VIP 0, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_DATA_A, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]m_axi_DATA_A_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [1:0]m_axi_DATA_A_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [3:0]m_axi_DATA_A_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [7:0]m_axi_DATA_A_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [1:0]m_axi_DATA_A_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [2:0]m_axi_DATA_A_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [3:0]m_axi_DATA_A_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) input m_axi_DATA_A_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [3:0]m_axi_DATA_A_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [2:0]m_axi_DATA_A_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output m_axi_DATA_A_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [31:0]m_axi_DATA_A_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [1:0]m_axi_DATA_A_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [3:0]m_axi_DATA_A_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [7:0]m_axi_DATA_A_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [1:0]m_axi_DATA_A_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [2:0]m_axi_DATA_A_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [3:0]m_axi_DATA_A_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) input m_axi_DATA_A_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [3:0]m_axi_DATA_A_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [2:0]m_axi_DATA_A_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output m_axi_DATA_A_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output m_axi_DATA_A_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) input [1:0]m_axi_DATA_A_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) input m_axi_DATA_A_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) input [31:0]m_axi_DATA_A_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) input m_axi_DATA_A_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output m_axi_DATA_A_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) input [1:0]m_axi_DATA_A_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) input m_axi_DATA_A_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [31:0]m_axi_DATA_A_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output m_axi_DATA_A_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) input m_axi_DATA_A_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output [3:0]m_axi_DATA_A_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_A " *) output m_axi_DATA_A_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_DATA_B, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]m_axi_DATA_B_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [1:0]m_axi_DATA_B_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [3:0]m_axi_DATA_B_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [7:0]m_axi_DATA_B_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [1:0]m_axi_DATA_B_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [2:0]m_axi_DATA_B_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [3:0]m_axi_DATA_B_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) input m_axi_DATA_B_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [3:0]m_axi_DATA_B_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [2:0]m_axi_DATA_B_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output m_axi_DATA_B_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [31:0]m_axi_DATA_B_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [1:0]m_axi_DATA_B_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [3:0]m_axi_DATA_B_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [7:0]m_axi_DATA_B_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [1:0]m_axi_DATA_B_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [2:0]m_axi_DATA_B_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [3:0]m_axi_DATA_B_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) input m_axi_DATA_B_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [3:0]m_axi_DATA_B_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [2:0]m_axi_DATA_B_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output m_axi_DATA_B_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output m_axi_DATA_B_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) input [1:0]m_axi_DATA_B_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) input m_axi_DATA_B_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) input [31:0]m_axi_DATA_B_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) input m_axi_DATA_B_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output m_axi_DATA_B_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) input [1:0]m_axi_DATA_B_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) input m_axi_DATA_B_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [31:0]m_axi_DATA_B_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output m_axi_DATA_B_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) input m_axi_DATA_B_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output [3:0]m_axi_DATA_B_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_B " *) output m_axi_DATA_B_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_DATA_C, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]m_axi_DATA_C_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [1:0]m_axi_DATA_C_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [3:0]m_axi_DATA_C_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [7:0]m_axi_DATA_C_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [1:0]m_axi_DATA_C_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [2:0]m_axi_DATA_C_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [3:0]m_axi_DATA_C_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) input m_axi_DATA_C_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [3:0]m_axi_DATA_C_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [2:0]m_axi_DATA_C_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output m_axi_DATA_C_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [31:0]m_axi_DATA_C_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [1:0]m_axi_DATA_C_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [3:0]m_axi_DATA_C_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [7:0]m_axi_DATA_C_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [1:0]m_axi_DATA_C_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [2:0]m_axi_DATA_C_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [3:0]m_axi_DATA_C_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) input m_axi_DATA_C_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [3:0]m_axi_DATA_C_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [2:0]m_axi_DATA_C_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output m_axi_DATA_C_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output m_axi_DATA_C_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) input [1:0]m_axi_DATA_C_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) input m_axi_DATA_C_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) input [31:0]m_axi_DATA_C_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) input m_axi_DATA_C_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output m_axi_DATA_C_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) input [1:0]m_axi_DATA_C_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) input m_axi_DATA_C_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [31:0]m_axi_DATA_C_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output m_axi_DATA_C_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) input m_axi_DATA_C_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output [3:0]m_axi_DATA_C_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_C " *) output m_axi_DATA_C_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTL, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [5:0]s_axi_CTL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) output s_axi_CTL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) input s_axi_CTL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) input [5:0]s_axi_CTL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) output s_axi_CTL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) input s_axi_CTL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) input s_axi_CTL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) output [1:0]s_axi_CTL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) output s_axi_CTL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) output [31:0]s_axi_CTL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) input s_axi_CTL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) output [1:0]s_axi_CTL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) output s_axi_CTL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) input [31:0]s_axi_CTL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) output s_axi_CTL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) input [3:0]s_axi_CTL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL " *) input s_axi_CTL_wvalid;

  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire hls_inst_interrupt;
  wire [31:0]hls_inst_m_axi_DATA_A_ARADDR;
  wire [1:0]hls_inst_m_axi_DATA_A_ARBURST;
  wire [3:0]hls_inst_m_axi_DATA_A_ARCACHE;
  wire [7:0]hls_inst_m_axi_DATA_A_ARLEN;
  wire [1:0]hls_inst_m_axi_DATA_A_ARLOCK;
  wire [2:0]hls_inst_m_axi_DATA_A_ARPROT;
  wire [3:0]hls_inst_m_axi_DATA_A_ARQOS;
  wire hls_inst_m_axi_DATA_A_ARREADY;
  wire [3:0]hls_inst_m_axi_DATA_A_ARREGION;
  wire [2:0]hls_inst_m_axi_DATA_A_ARSIZE;
  wire hls_inst_m_axi_DATA_A_ARVALID;
  wire [31:0]hls_inst_m_axi_DATA_A_AWADDR;
  wire [1:0]hls_inst_m_axi_DATA_A_AWBURST;
  wire [3:0]hls_inst_m_axi_DATA_A_AWCACHE;
  wire [7:0]hls_inst_m_axi_DATA_A_AWLEN;
  wire [1:0]hls_inst_m_axi_DATA_A_AWLOCK;
  wire [2:0]hls_inst_m_axi_DATA_A_AWPROT;
  wire [3:0]hls_inst_m_axi_DATA_A_AWQOS;
  wire hls_inst_m_axi_DATA_A_AWREADY;
  wire [3:0]hls_inst_m_axi_DATA_A_AWREGION;
  wire [2:0]hls_inst_m_axi_DATA_A_AWSIZE;
  wire hls_inst_m_axi_DATA_A_AWVALID;
  wire hls_inst_m_axi_DATA_A_BREADY;
  wire [1:0]hls_inst_m_axi_DATA_A_BRESP;
  wire hls_inst_m_axi_DATA_A_BVALID;
  wire [31:0]hls_inst_m_axi_DATA_A_RDATA;
  wire hls_inst_m_axi_DATA_A_RLAST;
  wire hls_inst_m_axi_DATA_A_RREADY;
  wire [1:0]hls_inst_m_axi_DATA_A_RRESP;
  wire hls_inst_m_axi_DATA_A_RVALID;
  wire [31:0]hls_inst_m_axi_DATA_A_WDATA;
  wire hls_inst_m_axi_DATA_A_WLAST;
  wire hls_inst_m_axi_DATA_A_WREADY;
  wire [3:0]hls_inst_m_axi_DATA_A_WSTRB;
  wire hls_inst_m_axi_DATA_A_WVALID;
  wire [31:0]hls_inst_m_axi_DATA_B_ARADDR;
  wire [1:0]hls_inst_m_axi_DATA_B_ARBURST;
  wire [3:0]hls_inst_m_axi_DATA_B_ARCACHE;
  wire [7:0]hls_inst_m_axi_DATA_B_ARLEN;
  wire [1:0]hls_inst_m_axi_DATA_B_ARLOCK;
  wire [2:0]hls_inst_m_axi_DATA_B_ARPROT;
  wire [3:0]hls_inst_m_axi_DATA_B_ARQOS;
  wire hls_inst_m_axi_DATA_B_ARREADY;
  wire [3:0]hls_inst_m_axi_DATA_B_ARREGION;
  wire [2:0]hls_inst_m_axi_DATA_B_ARSIZE;
  wire hls_inst_m_axi_DATA_B_ARVALID;
  wire [31:0]hls_inst_m_axi_DATA_B_AWADDR;
  wire [1:0]hls_inst_m_axi_DATA_B_AWBURST;
  wire [3:0]hls_inst_m_axi_DATA_B_AWCACHE;
  wire [7:0]hls_inst_m_axi_DATA_B_AWLEN;
  wire [1:0]hls_inst_m_axi_DATA_B_AWLOCK;
  wire [2:0]hls_inst_m_axi_DATA_B_AWPROT;
  wire [3:0]hls_inst_m_axi_DATA_B_AWQOS;
  wire hls_inst_m_axi_DATA_B_AWREADY;
  wire [3:0]hls_inst_m_axi_DATA_B_AWREGION;
  wire [2:0]hls_inst_m_axi_DATA_B_AWSIZE;
  wire hls_inst_m_axi_DATA_B_AWVALID;
  wire hls_inst_m_axi_DATA_B_BREADY;
  wire [1:0]hls_inst_m_axi_DATA_B_BRESP;
  wire hls_inst_m_axi_DATA_B_BVALID;
  wire [31:0]hls_inst_m_axi_DATA_B_RDATA;
  wire hls_inst_m_axi_DATA_B_RLAST;
  wire hls_inst_m_axi_DATA_B_RREADY;
  wire [1:0]hls_inst_m_axi_DATA_B_RRESP;
  wire hls_inst_m_axi_DATA_B_RVALID;
  wire [31:0]hls_inst_m_axi_DATA_B_WDATA;
  wire hls_inst_m_axi_DATA_B_WLAST;
  wire hls_inst_m_axi_DATA_B_WREADY;
  wire [3:0]hls_inst_m_axi_DATA_B_WSTRB;
  wire hls_inst_m_axi_DATA_B_WVALID;
  wire [31:0]hls_inst_m_axi_DATA_C_ARADDR;
  wire [1:0]hls_inst_m_axi_DATA_C_ARBURST;
  wire [3:0]hls_inst_m_axi_DATA_C_ARCACHE;
  wire [7:0]hls_inst_m_axi_DATA_C_ARLEN;
  wire [1:0]hls_inst_m_axi_DATA_C_ARLOCK;
  wire [2:0]hls_inst_m_axi_DATA_C_ARPROT;
  wire [3:0]hls_inst_m_axi_DATA_C_ARQOS;
  wire hls_inst_m_axi_DATA_C_ARREADY;
  wire [3:0]hls_inst_m_axi_DATA_C_ARREGION;
  wire [2:0]hls_inst_m_axi_DATA_C_ARSIZE;
  wire hls_inst_m_axi_DATA_C_ARVALID;
  wire [31:0]hls_inst_m_axi_DATA_C_AWADDR;
  wire [1:0]hls_inst_m_axi_DATA_C_AWBURST;
  wire [3:0]hls_inst_m_axi_DATA_C_AWCACHE;
  wire [7:0]hls_inst_m_axi_DATA_C_AWLEN;
  wire [1:0]hls_inst_m_axi_DATA_C_AWLOCK;
  wire [2:0]hls_inst_m_axi_DATA_C_AWPROT;
  wire [3:0]hls_inst_m_axi_DATA_C_AWQOS;
  wire hls_inst_m_axi_DATA_C_AWREADY;
  wire [3:0]hls_inst_m_axi_DATA_C_AWREGION;
  wire [2:0]hls_inst_m_axi_DATA_C_AWSIZE;
  wire hls_inst_m_axi_DATA_C_AWVALID;
  wire hls_inst_m_axi_DATA_C_BREADY;
  wire [1:0]hls_inst_m_axi_DATA_C_BRESP;
  wire hls_inst_m_axi_DATA_C_BVALID;
  wire [31:0]hls_inst_m_axi_DATA_C_RDATA;
  wire hls_inst_m_axi_DATA_C_RLAST;
  wire hls_inst_m_axi_DATA_C_RREADY;
  wire [1:0]hls_inst_m_axi_DATA_C_RRESP;
  wire hls_inst_m_axi_DATA_C_RVALID;
  wire [31:0]hls_inst_m_axi_DATA_C_WDATA;
  wire hls_inst_m_axi_DATA_C_WLAST;
  wire hls_inst_m_axi_DATA_C_WREADY;
  wire [3:0]hls_inst_m_axi_DATA_C_WSTRB;
  wire hls_inst_m_axi_DATA_C_WVALID;
  wire [5:0]s_axi_CTL_0_1_ARADDR;
  wire s_axi_CTL_0_1_ARREADY;
  wire s_axi_CTL_0_1_ARVALID;
  wire [5:0]s_axi_CTL_0_1_AWADDR;
  wire s_axi_CTL_0_1_AWREADY;
  wire s_axi_CTL_0_1_AWVALID;
  wire s_axi_CTL_0_1_BREADY;
  wire [1:0]s_axi_CTL_0_1_BRESP;
  wire s_axi_CTL_0_1_BVALID;
  wire [31:0]s_axi_CTL_0_1_RDATA;
  wire s_axi_CTL_0_1_RREADY;
  wire [1:0]s_axi_CTL_0_1_RRESP;
  wire s_axi_CTL_0_1_RVALID;
  wire [31:0]s_axi_CTL_0_1_WDATA;
  wire s_axi_CTL_0_1_WREADY;
  wire [3:0]s_axi_CTL_0_1_WSTRB;
  wire s_axi_CTL_0_1_WVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign hls_inst_m_axi_DATA_A_ARREADY = m_axi_DATA_A_arready;
  assign hls_inst_m_axi_DATA_A_AWREADY = m_axi_DATA_A_awready;
  assign hls_inst_m_axi_DATA_A_BRESP = m_axi_DATA_A_bresp[1:0];
  assign hls_inst_m_axi_DATA_A_BVALID = m_axi_DATA_A_bvalid;
  assign hls_inst_m_axi_DATA_A_RDATA = m_axi_DATA_A_rdata[31:0];
  assign hls_inst_m_axi_DATA_A_RLAST = m_axi_DATA_A_rlast;
  assign hls_inst_m_axi_DATA_A_RRESP = m_axi_DATA_A_rresp[1:0];
  assign hls_inst_m_axi_DATA_A_RVALID = m_axi_DATA_A_rvalid;
  assign hls_inst_m_axi_DATA_A_WREADY = m_axi_DATA_A_wready;
  assign hls_inst_m_axi_DATA_B_ARREADY = m_axi_DATA_B_arready;
  assign hls_inst_m_axi_DATA_B_AWREADY = m_axi_DATA_B_awready;
  assign hls_inst_m_axi_DATA_B_BRESP = m_axi_DATA_B_bresp[1:0];
  assign hls_inst_m_axi_DATA_B_BVALID = m_axi_DATA_B_bvalid;
  assign hls_inst_m_axi_DATA_B_RDATA = m_axi_DATA_B_rdata[31:0];
  assign hls_inst_m_axi_DATA_B_RLAST = m_axi_DATA_B_rlast;
  assign hls_inst_m_axi_DATA_B_RRESP = m_axi_DATA_B_rresp[1:0];
  assign hls_inst_m_axi_DATA_B_RVALID = m_axi_DATA_B_rvalid;
  assign hls_inst_m_axi_DATA_B_WREADY = m_axi_DATA_B_wready;
  assign hls_inst_m_axi_DATA_C_ARREADY = m_axi_DATA_C_arready;
  assign hls_inst_m_axi_DATA_C_AWREADY = m_axi_DATA_C_awready;
  assign hls_inst_m_axi_DATA_C_BRESP = m_axi_DATA_C_bresp[1:0];
  assign hls_inst_m_axi_DATA_C_BVALID = m_axi_DATA_C_bvalid;
  assign hls_inst_m_axi_DATA_C_RDATA = m_axi_DATA_C_rdata[31:0];
  assign hls_inst_m_axi_DATA_C_RLAST = m_axi_DATA_C_rlast;
  assign hls_inst_m_axi_DATA_C_RRESP = m_axi_DATA_C_rresp[1:0];
  assign hls_inst_m_axi_DATA_C_RVALID = m_axi_DATA_C_rvalid;
  assign hls_inst_m_axi_DATA_C_WREADY = m_axi_DATA_C_wready;
  assign interrupt = hls_inst_interrupt;
  assign m_axi_DATA_A_araddr[31:0] = hls_inst_m_axi_DATA_A_ARADDR;
  assign m_axi_DATA_A_arburst[1:0] = hls_inst_m_axi_DATA_A_ARBURST;
  assign m_axi_DATA_A_arcache[3:0] = hls_inst_m_axi_DATA_A_ARCACHE;
  assign m_axi_DATA_A_arlen[7:0] = hls_inst_m_axi_DATA_A_ARLEN;
  assign m_axi_DATA_A_arlock[1:0] = hls_inst_m_axi_DATA_A_ARLOCK;
  assign m_axi_DATA_A_arprot[2:0] = hls_inst_m_axi_DATA_A_ARPROT;
  assign m_axi_DATA_A_arqos[3:0] = hls_inst_m_axi_DATA_A_ARQOS;
  assign m_axi_DATA_A_arregion[3:0] = hls_inst_m_axi_DATA_A_ARREGION;
  assign m_axi_DATA_A_arsize[2:0] = hls_inst_m_axi_DATA_A_ARSIZE;
  assign m_axi_DATA_A_arvalid = hls_inst_m_axi_DATA_A_ARVALID;
  assign m_axi_DATA_A_awaddr[31:0] = hls_inst_m_axi_DATA_A_AWADDR;
  assign m_axi_DATA_A_awburst[1:0] = hls_inst_m_axi_DATA_A_AWBURST;
  assign m_axi_DATA_A_awcache[3:0] = hls_inst_m_axi_DATA_A_AWCACHE;
  assign m_axi_DATA_A_awlen[7:0] = hls_inst_m_axi_DATA_A_AWLEN;
  assign m_axi_DATA_A_awlock[1:0] = hls_inst_m_axi_DATA_A_AWLOCK;
  assign m_axi_DATA_A_awprot[2:0] = hls_inst_m_axi_DATA_A_AWPROT;
  assign m_axi_DATA_A_awqos[3:0] = hls_inst_m_axi_DATA_A_AWQOS;
  assign m_axi_DATA_A_awregion[3:0] = hls_inst_m_axi_DATA_A_AWREGION;
  assign m_axi_DATA_A_awsize[2:0] = hls_inst_m_axi_DATA_A_AWSIZE;
  assign m_axi_DATA_A_awvalid = hls_inst_m_axi_DATA_A_AWVALID;
  assign m_axi_DATA_A_bready = hls_inst_m_axi_DATA_A_BREADY;
  assign m_axi_DATA_A_rready = hls_inst_m_axi_DATA_A_RREADY;
  assign m_axi_DATA_A_wdata[31:0] = hls_inst_m_axi_DATA_A_WDATA;
  assign m_axi_DATA_A_wlast = hls_inst_m_axi_DATA_A_WLAST;
  assign m_axi_DATA_A_wstrb[3:0] = hls_inst_m_axi_DATA_A_WSTRB;
  assign m_axi_DATA_A_wvalid = hls_inst_m_axi_DATA_A_WVALID;
  assign m_axi_DATA_B_araddr[31:0] = hls_inst_m_axi_DATA_B_ARADDR;
  assign m_axi_DATA_B_arburst[1:0] = hls_inst_m_axi_DATA_B_ARBURST;
  assign m_axi_DATA_B_arcache[3:0] = hls_inst_m_axi_DATA_B_ARCACHE;
  assign m_axi_DATA_B_arlen[7:0] = hls_inst_m_axi_DATA_B_ARLEN;
  assign m_axi_DATA_B_arlock[1:0] = hls_inst_m_axi_DATA_B_ARLOCK;
  assign m_axi_DATA_B_arprot[2:0] = hls_inst_m_axi_DATA_B_ARPROT;
  assign m_axi_DATA_B_arqos[3:0] = hls_inst_m_axi_DATA_B_ARQOS;
  assign m_axi_DATA_B_arregion[3:0] = hls_inst_m_axi_DATA_B_ARREGION;
  assign m_axi_DATA_B_arsize[2:0] = hls_inst_m_axi_DATA_B_ARSIZE;
  assign m_axi_DATA_B_arvalid = hls_inst_m_axi_DATA_B_ARVALID;
  assign m_axi_DATA_B_awaddr[31:0] = hls_inst_m_axi_DATA_B_AWADDR;
  assign m_axi_DATA_B_awburst[1:0] = hls_inst_m_axi_DATA_B_AWBURST;
  assign m_axi_DATA_B_awcache[3:0] = hls_inst_m_axi_DATA_B_AWCACHE;
  assign m_axi_DATA_B_awlen[7:0] = hls_inst_m_axi_DATA_B_AWLEN;
  assign m_axi_DATA_B_awlock[1:0] = hls_inst_m_axi_DATA_B_AWLOCK;
  assign m_axi_DATA_B_awprot[2:0] = hls_inst_m_axi_DATA_B_AWPROT;
  assign m_axi_DATA_B_awqos[3:0] = hls_inst_m_axi_DATA_B_AWQOS;
  assign m_axi_DATA_B_awregion[3:0] = hls_inst_m_axi_DATA_B_AWREGION;
  assign m_axi_DATA_B_awsize[2:0] = hls_inst_m_axi_DATA_B_AWSIZE;
  assign m_axi_DATA_B_awvalid = hls_inst_m_axi_DATA_B_AWVALID;
  assign m_axi_DATA_B_bready = hls_inst_m_axi_DATA_B_BREADY;
  assign m_axi_DATA_B_rready = hls_inst_m_axi_DATA_B_RREADY;
  assign m_axi_DATA_B_wdata[31:0] = hls_inst_m_axi_DATA_B_WDATA;
  assign m_axi_DATA_B_wlast = hls_inst_m_axi_DATA_B_WLAST;
  assign m_axi_DATA_B_wstrb[3:0] = hls_inst_m_axi_DATA_B_WSTRB;
  assign m_axi_DATA_B_wvalid = hls_inst_m_axi_DATA_B_WVALID;
  assign m_axi_DATA_C_araddr[31:0] = hls_inst_m_axi_DATA_C_ARADDR;
  assign m_axi_DATA_C_arburst[1:0] = hls_inst_m_axi_DATA_C_ARBURST;
  assign m_axi_DATA_C_arcache[3:0] = hls_inst_m_axi_DATA_C_ARCACHE;
  assign m_axi_DATA_C_arlen[7:0] = hls_inst_m_axi_DATA_C_ARLEN;
  assign m_axi_DATA_C_arlock[1:0] = hls_inst_m_axi_DATA_C_ARLOCK;
  assign m_axi_DATA_C_arprot[2:0] = hls_inst_m_axi_DATA_C_ARPROT;
  assign m_axi_DATA_C_arqos[3:0] = hls_inst_m_axi_DATA_C_ARQOS;
  assign m_axi_DATA_C_arregion[3:0] = hls_inst_m_axi_DATA_C_ARREGION;
  assign m_axi_DATA_C_arsize[2:0] = hls_inst_m_axi_DATA_C_ARSIZE;
  assign m_axi_DATA_C_arvalid = hls_inst_m_axi_DATA_C_ARVALID;
  assign m_axi_DATA_C_awaddr[31:0] = hls_inst_m_axi_DATA_C_AWADDR;
  assign m_axi_DATA_C_awburst[1:0] = hls_inst_m_axi_DATA_C_AWBURST;
  assign m_axi_DATA_C_awcache[3:0] = hls_inst_m_axi_DATA_C_AWCACHE;
  assign m_axi_DATA_C_awlen[7:0] = hls_inst_m_axi_DATA_C_AWLEN;
  assign m_axi_DATA_C_awlock[1:0] = hls_inst_m_axi_DATA_C_AWLOCK;
  assign m_axi_DATA_C_awprot[2:0] = hls_inst_m_axi_DATA_C_AWPROT;
  assign m_axi_DATA_C_awqos[3:0] = hls_inst_m_axi_DATA_C_AWQOS;
  assign m_axi_DATA_C_awregion[3:0] = hls_inst_m_axi_DATA_C_AWREGION;
  assign m_axi_DATA_C_awsize[2:0] = hls_inst_m_axi_DATA_C_AWSIZE;
  assign m_axi_DATA_C_awvalid = hls_inst_m_axi_DATA_C_AWVALID;
  assign m_axi_DATA_C_bready = hls_inst_m_axi_DATA_C_BREADY;
  assign m_axi_DATA_C_rready = hls_inst_m_axi_DATA_C_RREADY;
  assign m_axi_DATA_C_wdata[31:0] = hls_inst_m_axi_DATA_C_WDATA;
  assign m_axi_DATA_C_wlast = hls_inst_m_axi_DATA_C_WLAST;
  assign m_axi_DATA_C_wstrb[3:0] = hls_inst_m_axi_DATA_C_WSTRB;
  assign m_axi_DATA_C_wvalid = hls_inst_m_axi_DATA_C_WVALID;
  assign s_axi_CTL_0_1_ARADDR = s_axi_CTL_araddr[5:0];
  assign s_axi_CTL_0_1_ARVALID = s_axi_CTL_arvalid;
  assign s_axi_CTL_0_1_AWADDR = s_axi_CTL_awaddr[5:0];
  assign s_axi_CTL_0_1_AWVALID = s_axi_CTL_awvalid;
  assign s_axi_CTL_0_1_BREADY = s_axi_CTL_bready;
  assign s_axi_CTL_0_1_RREADY = s_axi_CTL_rready;
  assign s_axi_CTL_0_1_WDATA = s_axi_CTL_wdata[31:0];
  assign s_axi_CTL_0_1_WSTRB = s_axi_CTL_wstrb[3:0];
  assign s_axi_CTL_0_1_WVALID = s_axi_CTL_wvalid;
  assign s_axi_CTL_arready = s_axi_CTL_0_1_ARREADY;
  assign s_axi_CTL_awready = s_axi_CTL_0_1_AWREADY;
  assign s_axi_CTL_bresp[1:0] = s_axi_CTL_0_1_BRESP;
  assign s_axi_CTL_bvalid = s_axi_CTL_0_1_BVALID;
  assign s_axi_CTL_rdata[31:0] = s_axi_CTL_0_1_RDATA;
  assign s_axi_CTL_rresp[1:0] = s_axi_CTL_0_1_RRESP;
  assign s_axi_CTL_rvalid = s_axi_CTL_0_1_RVALID;
  assign s_axi_CTL_wready = s_axi_CTL_0_1_WREADY;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .interrupt(hls_inst_interrupt),
        .m_axi_DATA_A_ARADDR(hls_inst_m_axi_DATA_A_ARADDR),
        .m_axi_DATA_A_ARBURST(hls_inst_m_axi_DATA_A_ARBURST),
        .m_axi_DATA_A_ARCACHE(hls_inst_m_axi_DATA_A_ARCACHE),
        .m_axi_DATA_A_ARLEN(hls_inst_m_axi_DATA_A_ARLEN),
        .m_axi_DATA_A_ARLOCK(hls_inst_m_axi_DATA_A_ARLOCK),
        .m_axi_DATA_A_ARPROT(hls_inst_m_axi_DATA_A_ARPROT),
        .m_axi_DATA_A_ARQOS(hls_inst_m_axi_DATA_A_ARQOS),
        .m_axi_DATA_A_ARREADY(hls_inst_m_axi_DATA_A_ARREADY),
        .m_axi_DATA_A_ARREGION(hls_inst_m_axi_DATA_A_ARREGION),
        .m_axi_DATA_A_ARSIZE(hls_inst_m_axi_DATA_A_ARSIZE),
        .m_axi_DATA_A_ARVALID(hls_inst_m_axi_DATA_A_ARVALID),
        .m_axi_DATA_A_AWADDR(hls_inst_m_axi_DATA_A_AWADDR),
        .m_axi_DATA_A_AWBURST(hls_inst_m_axi_DATA_A_AWBURST),
        .m_axi_DATA_A_AWCACHE(hls_inst_m_axi_DATA_A_AWCACHE),
        .m_axi_DATA_A_AWLEN(hls_inst_m_axi_DATA_A_AWLEN),
        .m_axi_DATA_A_AWLOCK(hls_inst_m_axi_DATA_A_AWLOCK),
        .m_axi_DATA_A_AWPROT(hls_inst_m_axi_DATA_A_AWPROT),
        .m_axi_DATA_A_AWQOS(hls_inst_m_axi_DATA_A_AWQOS),
        .m_axi_DATA_A_AWREADY(hls_inst_m_axi_DATA_A_AWREADY),
        .m_axi_DATA_A_AWREGION(hls_inst_m_axi_DATA_A_AWREGION),
        .m_axi_DATA_A_AWSIZE(hls_inst_m_axi_DATA_A_AWSIZE),
        .m_axi_DATA_A_AWVALID(hls_inst_m_axi_DATA_A_AWVALID),
        .m_axi_DATA_A_BREADY(hls_inst_m_axi_DATA_A_BREADY),
        .m_axi_DATA_A_BRESP(hls_inst_m_axi_DATA_A_BRESP),
        .m_axi_DATA_A_BVALID(hls_inst_m_axi_DATA_A_BVALID),
        .m_axi_DATA_A_RDATA(hls_inst_m_axi_DATA_A_RDATA),
        .m_axi_DATA_A_RLAST(hls_inst_m_axi_DATA_A_RLAST),
        .m_axi_DATA_A_RREADY(hls_inst_m_axi_DATA_A_RREADY),
        .m_axi_DATA_A_RRESP(hls_inst_m_axi_DATA_A_RRESP),
        .m_axi_DATA_A_RVALID(hls_inst_m_axi_DATA_A_RVALID),
        .m_axi_DATA_A_WDATA(hls_inst_m_axi_DATA_A_WDATA),
        .m_axi_DATA_A_WLAST(hls_inst_m_axi_DATA_A_WLAST),
        .m_axi_DATA_A_WREADY(hls_inst_m_axi_DATA_A_WREADY),
        .m_axi_DATA_A_WSTRB(hls_inst_m_axi_DATA_A_WSTRB),
        .m_axi_DATA_A_WVALID(hls_inst_m_axi_DATA_A_WVALID),
        .m_axi_DATA_B_ARADDR(hls_inst_m_axi_DATA_B_ARADDR),
        .m_axi_DATA_B_ARBURST(hls_inst_m_axi_DATA_B_ARBURST),
        .m_axi_DATA_B_ARCACHE(hls_inst_m_axi_DATA_B_ARCACHE),
        .m_axi_DATA_B_ARLEN(hls_inst_m_axi_DATA_B_ARLEN),
        .m_axi_DATA_B_ARLOCK(hls_inst_m_axi_DATA_B_ARLOCK),
        .m_axi_DATA_B_ARPROT(hls_inst_m_axi_DATA_B_ARPROT),
        .m_axi_DATA_B_ARQOS(hls_inst_m_axi_DATA_B_ARQOS),
        .m_axi_DATA_B_ARREADY(hls_inst_m_axi_DATA_B_ARREADY),
        .m_axi_DATA_B_ARREGION(hls_inst_m_axi_DATA_B_ARREGION),
        .m_axi_DATA_B_ARSIZE(hls_inst_m_axi_DATA_B_ARSIZE),
        .m_axi_DATA_B_ARVALID(hls_inst_m_axi_DATA_B_ARVALID),
        .m_axi_DATA_B_AWADDR(hls_inst_m_axi_DATA_B_AWADDR),
        .m_axi_DATA_B_AWBURST(hls_inst_m_axi_DATA_B_AWBURST),
        .m_axi_DATA_B_AWCACHE(hls_inst_m_axi_DATA_B_AWCACHE),
        .m_axi_DATA_B_AWLEN(hls_inst_m_axi_DATA_B_AWLEN),
        .m_axi_DATA_B_AWLOCK(hls_inst_m_axi_DATA_B_AWLOCK),
        .m_axi_DATA_B_AWPROT(hls_inst_m_axi_DATA_B_AWPROT),
        .m_axi_DATA_B_AWQOS(hls_inst_m_axi_DATA_B_AWQOS),
        .m_axi_DATA_B_AWREADY(hls_inst_m_axi_DATA_B_AWREADY),
        .m_axi_DATA_B_AWREGION(hls_inst_m_axi_DATA_B_AWREGION),
        .m_axi_DATA_B_AWSIZE(hls_inst_m_axi_DATA_B_AWSIZE),
        .m_axi_DATA_B_AWVALID(hls_inst_m_axi_DATA_B_AWVALID),
        .m_axi_DATA_B_BREADY(hls_inst_m_axi_DATA_B_BREADY),
        .m_axi_DATA_B_BRESP(hls_inst_m_axi_DATA_B_BRESP),
        .m_axi_DATA_B_BVALID(hls_inst_m_axi_DATA_B_BVALID),
        .m_axi_DATA_B_RDATA(hls_inst_m_axi_DATA_B_RDATA),
        .m_axi_DATA_B_RLAST(hls_inst_m_axi_DATA_B_RLAST),
        .m_axi_DATA_B_RREADY(hls_inst_m_axi_DATA_B_RREADY),
        .m_axi_DATA_B_RRESP(hls_inst_m_axi_DATA_B_RRESP),
        .m_axi_DATA_B_RVALID(hls_inst_m_axi_DATA_B_RVALID),
        .m_axi_DATA_B_WDATA(hls_inst_m_axi_DATA_B_WDATA),
        .m_axi_DATA_B_WLAST(hls_inst_m_axi_DATA_B_WLAST),
        .m_axi_DATA_B_WREADY(hls_inst_m_axi_DATA_B_WREADY),
        .m_axi_DATA_B_WSTRB(hls_inst_m_axi_DATA_B_WSTRB),
        .m_axi_DATA_B_WVALID(hls_inst_m_axi_DATA_B_WVALID),
        .m_axi_DATA_C_ARADDR(hls_inst_m_axi_DATA_C_ARADDR),
        .m_axi_DATA_C_ARBURST(hls_inst_m_axi_DATA_C_ARBURST),
        .m_axi_DATA_C_ARCACHE(hls_inst_m_axi_DATA_C_ARCACHE),
        .m_axi_DATA_C_ARLEN(hls_inst_m_axi_DATA_C_ARLEN),
        .m_axi_DATA_C_ARLOCK(hls_inst_m_axi_DATA_C_ARLOCK),
        .m_axi_DATA_C_ARPROT(hls_inst_m_axi_DATA_C_ARPROT),
        .m_axi_DATA_C_ARQOS(hls_inst_m_axi_DATA_C_ARQOS),
        .m_axi_DATA_C_ARREADY(hls_inst_m_axi_DATA_C_ARREADY),
        .m_axi_DATA_C_ARREGION(hls_inst_m_axi_DATA_C_ARREGION),
        .m_axi_DATA_C_ARSIZE(hls_inst_m_axi_DATA_C_ARSIZE),
        .m_axi_DATA_C_ARVALID(hls_inst_m_axi_DATA_C_ARVALID),
        .m_axi_DATA_C_AWADDR(hls_inst_m_axi_DATA_C_AWADDR),
        .m_axi_DATA_C_AWBURST(hls_inst_m_axi_DATA_C_AWBURST),
        .m_axi_DATA_C_AWCACHE(hls_inst_m_axi_DATA_C_AWCACHE),
        .m_axi_DATA_C_AWLEN(hls_inst_m_axi_DATA_C_AWLEN),
        .m_axi_DATA_C_AWLOCK(hls_inst_m_axi_DATA_C_AWLOCK),
        .m_axi_DATA_C_AWPROT(hls_inst_m_axi_DATA_C_AWPROT),
        .m_axi_DATA_C_AWQOS(hls_inst_m_axi_DATA_C_AWQOS),
        .m_axi_DATA_C_AWREADY(hls_inst_m_axi_DATA_C_AWREADY),
        .m_axi_DATA_C_AWREGION(hls_inst_m_axi_DATA_C_AWREGION),
        .m_axi_DATA_C_AWSIZE(hls_inst_m_axi_DATA_C_AWSIZE),
        .m_axi_DATA_C_AWVALID(hls_inst_m_axi_DATA_C_AWVALID),
        .m_axi_DATA_C_BREADY(hls_inst_m_axi_DATA_C_BREADY),
        .m_axi_DATA_C_BRESP(hls_inst_m_axi_DATA_C_BRESP),
        .m_axi_DATA_C_BVALID(hls_inst_m_axi_DATA_C_BVALID),
        .m_axi_DATA_C_RDATA(hls_inst_m_axi_DATA_C_RDATA),
        .m_axi_DATA_C_RLAST(hls_inst_m_axi_DATA_C_RLAST),
        .m_axi_DATA_C_RREADY(hls_inst_m_axi_DATA_C_RREADY),
        .m_axi_DATA_C_RRESP(hls_inst_m_axi_DATA_C_RRESP),
        .m_axi_DATA_C_RVALID(hls_inst_m_axi_DATA_C_RVALID),
        .m_axi_DATA_C_WDATA(hls_inst_m_axi_DATA_C_WDATA),
        .m_axi_DATA_C_WLAST(hls_inst_m_axi_DATA_C_WLAST),
        .m_axi_DATA_C_WREADY(hls_inst_m_axi_DATA_C_WREADY),
        .m_axi_DATA_C_WSTRB(hls_inst_m_axi_DATA_C_WSTRB),
        .m_axi_DATA_C_WVALID(hls_inst_m_axi_DATA_C_WVALID),
        .s_axi_CTL_ARADDR(s_axi_CTL_0_1_ARADDR),
        .s_axi_CTL_ARREADY(s_axi_CTL_0_1_ARREADY),
        .s_axi_CTL_ARVALID(s_axi_CTL_0_1_ARVALID),
        .s_axi_CTL_AWADDR(s_axi_CTL_0_1_AWADDR),
        .s_axi_CTL_AWREADY(s_axi_CTL_0_1_AWREADY),
        .s_axi_CTL_AWVALID(s_axi_CTL_0_1_AWVALID),
        .s_axi_CTL_BREADY(s_axi_CTL_0_1_BREADY),
        .s_axi_CTL_BRESP(s_axi_CTL_0_1_BRESP),
        .s_axi_CTL_BVALID(s_axi_CTL_0_1_BVALID),
        .s_axi_CTL_RDATA(s_axi_CTL_0_1_RDATA),
        .s_axi_CTL_RREADY(s_axi_CTL_0_1_RREADY),
        .s_axi_CTL_RRESP(s_axi_CTL_0_1_RRESP),
        .s_axi_CTL_RVALID(s_axi_CTL_0_1_RVALID),
        .s_axi_CTL_WDATA(s_axi_CTL_0_1_WDATA),
        .s_axi_CTL_WREADY(s_axi_CTL_0_1_WREADY),
        .s_axi_CTL_WSTRB(s_axi_CTL_0_1_WSTRB),
        .s_axi_CTL_WVALID(s_axi_CTL_0_1_WVALID));
endmodule
