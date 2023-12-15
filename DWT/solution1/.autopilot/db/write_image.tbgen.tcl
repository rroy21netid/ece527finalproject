set moduleName write_image
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {write_image}
set C_modelType { void 0 }
set C_modelArgList {
	{ C_buffer_0 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ C_buffer_1 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ C_buffer_2 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ C_buffer_3 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ C_buffer_4 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ C_buffer_5 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ C_buffer_6 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ C_buffer_7 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ c int 16 regular {axi_master 1}  }
	{ c_offset int 31 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "C_buffer_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "C_buffer_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "C_buffer_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "C_buffer_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "C_buffer_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "C_buffer_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "C_buffer_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "C_buffer_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "axi_master", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 76
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ C_buffer_0_address0 sc_out sc_lv 12 signal 0 } 
	{ C_buffer_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ C_buffer_0_q0 sc_in sc_lv 16 signal 0 } 
	{ C_buffer_1_address0 sc_out sc_lv 12 signal 1 } 
	{ C_buffer_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ C_buffer_1_q0 sc_in sc_lv 16 signal 1 } 
	{ C_buffer_2_address0 sc_out sc_lv 12 signal 2 } 
	{ C_buffer_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ C_buffer_2_q0 sc_in sc_lv 16 signal 2 } 
	{ C_buffer_3_address0 sc_out sc_lv 12 signal 3 } 
	{ C_buffer_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ C_buffer_3_q0 sc_in sc_lv 16 signal 3 } 
	{ C_buffer_4_address0 sc_out sc_lv 12 signal 4 } 
	{ C_buffer_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ C_buffer_4_q0 sc_in sc_lv 16 signal 4 } 
	{ C_buffer_5_address0 sc_out sc_lv 12 signal 5 } 
	{ C_buffer_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ C_buffer_5_q0 sc_in sc_lv 16 signal 5 } 
	{ C_buffer_6_address0 sc_out sc_lv 12 signal 6 } 
	{ C_buffer_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_buffer_6_q0 sc_in sc_lv 16 signal 6 } 
	{ C_buffer_7_address0 sc_out sc_lv 12 signal 7 } 
	{ C_buffer_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ C_buffer_7_q0 sc_in sc_lv 16 signal 7 } 
	{ m_axi_c_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_c_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_c_AWADDR sc_out sc_lv 32 signal 8 } 
	{ m_axi_c_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_c_AWLEN sc_out sc_lv 32 signal 8 } 
	{ m_axi_c_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_c_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_c_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_c_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_c_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_c_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_c_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_c_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_c_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_c_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_c_WDATA sc_out sc_lv 16 signal 8 } 
	{ m_axi_c_WSTRB sc_out sc_lv 2 signal 8 } 
	{ m_axi_c_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_c_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_c_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_c_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_c_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_c_ARADDR sc_out sc_lv 32 signal 8 } 
	{ m_axi_c_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_c_ARLEN sc_out sc_lv 32 signal 8 } 
	{ m_axi_c_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_c_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_c_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_c_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_c_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_c_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_c_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_c_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_c_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_c_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_c_RDATA sc_in sc_lv 16 signal 8 } 
	{ m_axi_c_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_c_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_c_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_c_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_c_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_c_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_c_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_c_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_c_BUSER sc_in sc_lv 1 signal 8 } 
	{ c_offset sc_in sc_lv 31 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "C_buffer_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_buffer_0", "role": "address0" }} , 
 	{ "name": "C_buffer_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_buffer_0", "role": "ce0" }} , 
 	{ "name": "C_buffer_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_buffer_0", "role": "q0" }} , 
 	{ "name": "C_buffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_buffer_1", "role": "address0" }} , 
 	{ "name": "C_buffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_buffer_1", "role": "ce0" }} , 
 	{ "name": "C_buffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_buffer_1", "role": "q0" }} , 
 	{ "name": "C_buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_buffer_2", "role": "address0" }} , 
 	{ "name": "C_buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_buffer_2", "role": "ce0" }} , 
 	{ "name": "C_buffer_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_buffer_2", "role": "q0" }} , 
 	{ "name": "C_buffer_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_buffer_3", "role": "address0" }} , 
 	{ "name": "C_buffer_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_buffer_3", "role": "ce0" }} , 
 	{ "name": "C_buffer_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_buffer_3", "role": "q0" }} , 
 	{ "name": "C_buffer_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_buffer_4", "role": "address0" }} , 
 	{ "name": "C_buffer_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_buffer_4", "role": "ce0" }} , 
 	{ "name": "C_buffer_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_buffer_4", "role": "q0" }} , 
 	{ "name": "C_buffer_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_buffer_5", "role": "address0" }} , 
 	{ "name": "C_buffer_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_buffer_5", "role": "ce0" }} , 
 	{ "name": "C_buffer_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_buffer_5", "role": "q0" }} , 
 	{ "name": "C_buffer_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_buffer_6", "role": "address0" }} , 
 	{ "name": "C_buffer_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_buffer_6", "role": "ce0" }} , 
 	{ "name": "C_buffer_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_buffer_6", "role": "q0" }} , 
 	{ "name": "C_buffer_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_buffer_7", "role": "address0" }} , 
 	{ "name": "C_buffer_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_buffer_7", "role": "ce0" }} , 
 	{ "name": "C_buffer_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_buffer_7", "role": "q0" }} , 
 	{ "name": "m_axi_c_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "AWVALID" }} , 
 	{ "name": "m_axi_c_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "AWREADY" }} , 
 	{ "name": "m_axi_c_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c", "role": "AWADDR" }} , 
 	{ "name": "m_axi_c_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "AWID" }} , 
 	{ "name": "m_axi_c_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c", "role": "AWLEN" }} , 
 	{ "name": "m_axi_c_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_c_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c", "role": "AWBURST" }} , 
 	{ "name": "m_axi_c_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_c_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_c_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c", "role": "AWPROT" }} , 
 	{ "name": "m_axi_c_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "AWQOS" }} , 
 	{ "name": "m_axi_c_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "AWREGION" }} , 
 	{ "name": "m_axi_c_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "AWUSER" }} , 
 	{ "name": "m_axi_c_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "WVALID" }} , 
 	{ "name": "m_axi_c_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "WREADY" }} , 
 	{ "name": "m_axi_c_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c", "role": "WDATA" }} , 
 	{ "name": "m_axi_c_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c", "role": "WSTRB" }} , 
 	{ "name": "m_axi_c_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "WLAST" }} , 
 	{ "name": "m_axi_c_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "WID" }} , 
 	{ "name": "m_axi_c_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "WUSER" }} , 
 	{ "name": "m_axi_c_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ARVALID" }} , 
 	{ "name": "m_axi_c_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ARREADY" }} , 
 	{ "name": "m_axi_c_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c", "role": "ARADDR" }} , 
 	{ "name": "m_axi_c_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ARID" }} , 
 	{ "name": "m_axi_c_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c", "role": "ARLEN" }} , 
 	{ "name": "m_axi_c_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_c_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c", "role": "ARBURST" }} , 
 	{ "name": "m_axi_c_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_c_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_c_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c", "role": "ARPROT" }} , 
 	{ "name": "m_axi_c_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "ARQOS" }} , 
 	{ "name": "m_axi_c_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "ARREGION" }} , 
 	{ "name": "m_axi_c_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ARUSER" }} , 
 	{ "name": "m_axi_c_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "RVALID" }} , 
 	{ "name": "m_axi_c_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "RREADY" }} , 
 	{ "name": "m_axi_c_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c", "role": "RDATA" }} , 
 	{ "name": "m_axi_c_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "RLAST" }} , 
 	{ "name": "m_axi_c_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "RID" }} , 
 	{ "name": "m_axi_c_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "RUSER" }} , 
 	{ "name": "m_axi_c_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c", "role": "RRESP" }} , 
 	{ "name": "m_axi_c_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "BVALID" }} , 
 	{ "name": "m_axi_c_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "BREADY" }} , 
 	{ "name": "m_axi_c_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c", "role": "BRESP" }} , 
 	{ "name": "m_axi_c_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "BID" }} , 
 	{ "name": "m_axi_c_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "BUSER" }} , 
 	{ "name": "c_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "c_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "write_image",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58440", "EstimateLatencyMax" : "58440",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "C_buffer_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_buffer_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_buffer_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_buffer_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_buffer_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_buffer_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_buffer_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_buffer_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "c_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "c_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_mux_832ibs_U121", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	write_image {
		C_buffer_0 {Type I LastRead 3 FirstWrite -1}
		C_buffer_1 {Type I LastRead 3 FirstWrite -1}
		C_buffer_2 {Type I LastRead 3 FirstWrite -1}
		C_buffer_3 {Type I LastRead 3 FirstWrite -1}
		C_buffer_4 {Type I LastRead 3 FirstWrite -1}
		C_buffer_5 {Type I LastRead 3 FirstWrite -1}
		C_buffer_6 {Type I LastRead 3 FirstWrite -1}
		C_buffer_7 {Type I LastRead 3 FirstWrite -1}
		c {Type O LastRead 6 FirstWrite 5}
		c_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "58440", "Max" : "58440"}
	, {"Name" : "Interval", "Min" : "58440", "Max" : "58440"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	C_buffer_0 { ap_memory {  { C_buffer_0_address0 mem_address 1 12 }  { C_buffer_0_ce0 mem_ce 1 1 }  { C_buffer_0_q0 mem_dout 0 16 } } }
	C_buffer_1 { ap_memory {  { C_buffer_1_address0 mem_address 1 12 }  { C_buffer_1_ce0 mem_ce 1 1 }  { C_buffer_1_q0 mem_dout 0 16 } } }
	C_buffer_2 { ap_memory {  { C_buffer_2_address0 mem_address 1 12 }  { C_buffer_2_ce0 mem_ce 1 1 }  { C_buffer_2_q0 mem_dout 0 16 } } }
	C_buffer_3 { ap_memory {  { C_buffer_3_address0 mem_address 1 12 }  { C_buffer_3_ce0 mem_ce 1 1 }  { C_buffer_3_q0 mem_dout 0 16 } } }
	C_buffer_4 { ap_memory {  { C_buffer_4_address0 mem_address 1 12 }  { C_buffer_4_ce0 mem_ce 1 1 }  { C_buffer_4_q0 mem_dout 0 16 } } }
	C_buffer_5 { ap_memory {  { C_buffer_5_address0 mem_address 1 12 }  { C_buffer_5_ce0 mem_ce 1 1 }  { C_buffer_5_q0 mem_dout 0 16 } } }
	C_buffer_6 { ap_memory {  { C_buffer_6_address0 mem_address 1 12 }  { C_buffer_6_ce0 mem_ce 1 1 }  { C_buffer_6_q0 mem_dout 0 16 } } }
	C_buffer_7 { ap_memory {  { C_buffer_7_address0 mem_address 1 12 }  { C_buffer_7_ce0 mem_ce 1 1 }  { C_buffer_7_q0 mem_dout 0 16 } } }
	c { m_axi {  { m_axi_c_AWVALID VALID 1 1 }  { m_axi_c_AWREADY READY 0 1 }  { m_axi_c_AWADDR ADDR 1 32 }  { m_axi_c_AWID ID 1 1 }  { m_axi_c_AWLEN LEN 1 32 }  { m_axi_c_AWSIZE SIZE 1 3 }  { m_axi_c_AWBURST BURST 1 2 }  { m_axi_c_AWLOCK LOCK 1 2 }  { m_axi_c_AWCACHE CACHE 1 4 }  { m_axi_c_AWPROT PROT 1 3 }  { m_axi_c_AWQOS QOS 1 4 }  { m_axi_c_AWREGION REGION 1 4 }  { m_axi_c_AWUSER USER 1 1 }  { m_axi_c_WVALID VALID 1 1 }  { m_axi_c_WREADY READY 0 1 }  { m_axi_c_WDATA DATA 1 16 }  { m_axi_c_WSTRB STRB 1 2 }  { m_axi_c_WLAST LAST 1 1 }  { m_axi_c_WID ID 1 1 }  { m_axi_c_WUSER USER 1 1 }  { m_axi_c_ARVALID VALID 1 1 }  { m_axi_c_ARREADY READY 0 1 }  { m_axi_c_ARADDR ADDR 1 32 }  { m_axi_c_ARID ID 1 1 }  { m_axi_c_ARLEN LEN 1 32 }  { m_axi_c_ARSIZE SIZE 1 3 }  { m_axi_c_ARBURST BURST 1 2 }  { m_axi_c_ARLOCK LOCK 1 2 }  { m_axi_c_ARCACHE CACHE 1 4 }  { m_axi_c_ARPROT PROT 1 3 }  { m_axi_c_ARQOS QOS 1 4 }  { m_axi_c_ARREGION REGION 1 4 }  { m_axi_c_ARUSER USER 1 1 }  { m_axi_c_RVALID VALID 0 1 }  { m_axi_c_RREADY READY 1 1 }  { m_axi_c_RDATA DATA 0 16 }  { m_axi_c_RLAST LAST 0 1 }  { m_axi_c_RID ID 0 1 }  { m_axi_c_RUSER USER 0 1 }  { m_axi_c_RRESP RESP 0 2 }  { m_axi_c_BVALID VALID 0 1 }  { m_axi_c_BREADY READY 1 1 }  { m_axi_c_BRESP RESP 0 2 }  { m_axi_c_BID ID 0 1 }  { m_axi_c_BUSER USER 0 1 } } }
	c_offset { ap_none {  { c_offset in_data 0 31 } } }
}
