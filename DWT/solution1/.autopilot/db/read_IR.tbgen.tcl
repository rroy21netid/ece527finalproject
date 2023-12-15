set moduleName read_IR
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
set C_modelName {read_IR}
set C_modelType { void 0 }
set C_modelArgList {
	{ b int 16 regular {axi_master 0}  }
	{ b_offset int 31 regular  }
	{ B_buffer_0 int 16 regular {array 2400 { 0 3 } 0 1 }  }
	{ B_buffer_1 int 16 regular {array 2400 { 0 3 } 0 1 }  }
	{ B_buffer_2 int 16 regular {array 2400 { 0 3 } 0 1 }  }
	{ B_buffer_3 int 16 regular {array 2400 { 0 3 } 0 1 }  }
	{ B_buffer_4 int 16 regular {array 2400 { 0 3 } 0 1 }  }
	{ B_buffer_5 int 16 regular {array 2400 { 0 3 } 0 1 }  }
	{ B_buffer_6 int 16 regular {array 2400 { 0 3 } 0 1 }  }
	{ B_buffer_7 int 16 regular {array 2400 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "b", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "B_buffer_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buffer_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buffer_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buffer_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buffer_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buffer_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buffer_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buffer_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 84
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_b_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_b_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_b_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_b_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_b_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_b_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_b_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_b_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_b_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_b_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_b_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_b_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_b_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_b_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_b_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_b_WDATA sc_out sc_lv 16 signal 0 } 
	{ m_axi_b_WSTRB sc_out sc_lv 2 signal 0 } 
	{ m_axi_b_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_b_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_b_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_b_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_b_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_b_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_b_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_b_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_b_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_b_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_b_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_b_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_b_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_b_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_b_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_b_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_b_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_b_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_b_RDATA sc_in sc_lv 16 signal 0 } 
	{ m_axi_b_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_b_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_b_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_b_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_b_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_b_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_b_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_b_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_b_BUSER sc_in sc_lv 1 signal 0 } 
	{ b_offset sc_in sc_lv 31 signal 1 } 
	{ B_buffer_0_address0 sc_out sc_lv 12 signal 2 } 
	{ B_buffer_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_buffer_0_we0 sc_out sc_logic 1 signal 2 } 
	{ B_buffer_0_d0 sc_out sc_lv 16 signal 2 } 
	{ B_buffer_1_address0 sc_out sc_lv 12 signal 3 } 
	{ B_buffer_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ B_buffer_1_we0 sc_out sc_logic 1 signal 3 } 
	{ B_buffer_1_d0 sc_out sc_lv 16 signal 3 } 
	{ B_buffer_2_address0 sc_out sc_lv 12 signal 4 } 
	{ B_buffer_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ B_buffer_2_we0 sc_out sc_logic 1 signal 4 } 
	{ B_buffer_2_d0 sc_out sc_lv 16 signal 4 } 
	{ B_buffer_3_address0 sc_out sc_lv 12 signal 5 } 
	{ B_buffer_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ B_buffer_3_we0 sc_out sc_logic 1 signal 5 } 
	{ B_buffer_3_d0 sc_out sc_lv 16 signal 5 } 
	{ B_buffer_4_address0 sc_out sc_lv 12 signal 6 } 
	{ B_buffer_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ B_buffer_4_we0 sc_out sc_logic 1 signal 6 } 
	{ B_buffer_4_d0 sc_out sc_lv 16 signal 6 } 
	{ B_buffer_5_address0 sc_out sc_lv 12 signal 7 } 
	{ B_buffer_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ B_buffer_5_we0 sc_out sc_logic 1 signal 7 } 
	{ B_buffer_5_d0 sc_out sc_lv 16 signal 7 } 
	{ B_buffer_6_address0 sc_out sc_lv 12 signal 8 } 
	{ B_buffer_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ B_buffer_6_we0 sc_out sc_logic 1 signal 8 } 
	{ B_buffer_6_d0 sc_out sc_lv 16 signal 8 } 
	{ B_buffer_7_address0 sc_out sc_lv 12 signal 9 } 
	{ B_buffer_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ B_buffer_7_we0 sc_out sc_logic 1 signal 9 } 
	{ B_buffer_7_d0 sc_out sc_lv 16 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_b_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "AWVALID" }} , 
 	{ "name": "m_axi_b_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "AWREADY" }} , 
 	{ "name": "m_axi_b_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "AWADDR" }} , 
 	{ "name": "m_axi_b_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "AWID" }} , 
 	{ "name": "m_axi_b_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "AWLEN" }} , 
 	{ "name": "m_axi_b_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_b_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b", "role": "AWBURST" }} , 
 	{ "name": "m_axi_b_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_b_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_b_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b", "role": "AWPROT" }} , 
 	{ "name": "m_axi_b_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b", "role": "AWQOS" }} , 
 	{ "name": "m_axi_b_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b", "role": "AWREGION" }} , 
 	{ "name": "m_axi_b_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "AWUSER" }} , 
 	{ "name": "m_axi_b_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "WVALID" }} , 
 	{ "name": "m_axi_b_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "WREADY" }} , 
 	{ "name": "m_axi_b_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b", "role": "WDATA" }} , 
 	{ "name": "m_axi_b_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b", "role": "WSTRB" }} , 
 	{ "name": "m_axi_b_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "WLAST" }} , 
 	{ "name": "m_axi_b_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "WID" }} , 
 	{ "name": "m_axi_b_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "WUSER" }} , 
 	{ "name": "m_axi_b_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ARVALID" }} , 
 	{ "name": "m_axi_b_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ARREADY" }} , 
 	{ "name": "m_axi_b_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "ARADDR" }} , 
 	{ "name": "m_axi_b_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ARID" }} , 
 	{ "name": "m_axi_b_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "ARLEN" }} , 
 	{ "name": "m_axi_b_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_b_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b", "role": "ARBURST" }} , 
 	{ "name": "m_axi_b_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_b_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_b_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b", "role": "ARPROT" }} , 
 	{ "name": "m_axi_b_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b", "role": "ARQOS" }} , 
 	{ "name": "m_axi_b_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b", "role": "ARREGION" }} , 
 	{ "name": "m_axi_b_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ARUSER" }} , 
 	{ "name": "m_axi_b_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "RVALID" }} , 
 	{ "name": "m_axi_b_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "RREADY" }} , 
 	{ "name": "m_axi_b_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b", "role": "RDATA" }} , 
 	{ "name": "m_axi_b_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "RLAST" }} , 
 	{ "name": "m_axi_b_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "RID" }} , 
 	{ "name": "m_axi_b_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "RUSER" }} , 
 	{ "name": "m_axi_b_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b", "role": "RRESP" }} , 
 	{ "name": "m_axi_b_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "BVALID" }} , 
 	{ "name": "m_axi_b_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "BREADY" }} , 
 	{ "name": "m_axi_b_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b", "role": "BRESP" }} , 
 	{ "name": "m_axi_b_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "BID" }} , 
 	{ "name": "m_axi_b_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "BUSER" }} , 
 	{ "name": "b_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "b_offset", "role": "default" }} , 
 	{ "name": "B_buffer_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_buffer_0", "role": "address0" }} , 
 	{ "name": "B_buffer_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_0", "role": "ce0" }} , 
 	{ "name": "B_buffer_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_0", "role": "we0" }} , 
 	{ "name": "B_buffer_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_buffer_0", "role": "d0" }} , 
 	{ "name": "B_buffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_buffer_1", "role": "address0" }} , 
 	{ "name": "B_buffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_1", "role": "ce0" }} , 
 	{ "name": "B_buffer_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_1", "role": "we0" }} , 
 	{ "name": "B_buffer_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_buffer_1", "role": "d0" }} , 
 	{ "name": "B_buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_buffer_2", "role": "address0" }} , 
 	{ "name": "B_buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_2", "role": "ce0" }} , 
 	{ "name": "B_buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_2", "role": "we0" }} , 
 	{ "name": "B_buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_buffer_2", "role": "d0" }} , 
 	{ "name": "B_buffer_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_buffer_3", "role": "address0" }} , 
 	{ "name": "B_buffer_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_3", "role": "ce0" }} , 
 	{ "name": "B_buffer_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_3", "role": "we0" }} , 
 	{ "name": "B_buffer_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_buffer_3", "role": "d0" }} , 
 	{ "name": "B_buffer_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_buffer_4", "role": "address0" }} , 
 	{ "name": "B_buffer_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_4", "role": "ce0" }} , 
 	{ "name": "B_buffer_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_4", "role": "we0" }} , 
 	{ "name": "B_buffer_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_buffer_4", "role": "d0" }} , 
 	{ "name": "B_buffer_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_buffer_5", "role": "address0" }} , 
 	{ "name": "B_buffer_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_5", "role": "ce0" }} , 
 	{ "name": "B_buffer_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_5", "role": "we0" }} , 
 	{ "name": "B_buffer_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_buffer_5", "role": "d0" }} , 
 	{ "name": "B_buffer_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_buffer_6", "role": "address0" }} , 
 	{ "name": "B_buffer_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_6", "role": "ce0" }} , 
 	{ "name": "B_buffer_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_6", "role": "we0" }} , 
 	{ "name": "B_buffer_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_buffer_6", "role": "d0" }} , 
 	{ "name": "B_buffer_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_buffer_7", "role": "address0" }} , 
 	{ "name": "B_buffer_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_7", "role": "ce0" }} , 
 	{ "name": "B_buffer_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_buffer_7", "role": "we0" }} , 
 	{ "name": "B_buffer_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_buffer_7", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "read_IR",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "192120", "EstimateLatencyMax" : "192120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "b_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "b_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buffer_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_buffer_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_buffer_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_buffer_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_buffer_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_buffer_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_buffer_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_buffer_7", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	read_IR {
		b {Type I LastRead 10 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		B_buffer_0 {Type O LastRead -1 FirstWrite 11}
		B_buffer_1 {Type O LastRead -1 FirstWrite 11}
		B_buffer_2 {Type O LastRead -1 FirstWrite 11}
		B_buffer_3 {Type O LastRead -1 FirstWrite 11}
		B_buffer_4 {Type O LastRead -1 FirstWrite 11}
		B_buffer_5 {Type O LastRead -1 FirstWrite 11}
		B_buffer_6 {Type O LastRead -1 FirstWrite 11}
		B_buffer_7 {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "192120", "Max" : "192120"}
	, {"Name" : "Interval", "Min" : "192120", "Max" : "192120"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	b { m_axi {  { m_axi_b_AWVALID VALID 1 1 }  { m_axi_b_AWREADY READY 0 1 }  { m_axi_b_AWADDR ADDR 1 32 }  { m_axi_b_AWID ID 1 1 }  { m_axi_b_AWLEN LEN 1 32 }  { m_axi_b_AWSIZE SIZE 1 3 }  { m_axi_b_AWBURST BURST 1 2 }  { m_axi_b_AWLOCK LOCK 1 2 }  { m_axi_b_AWCACHE CACHE 1 4 }  { m_axi_b_AWPROT PROT 1 3 }  { m_axi_b_AWQOS QOS 1 4 }  { m_axi_b_AWREGION REGION 1 4 }  { m_axi_b_AWUSER USER 1 1 }  { m_axi_b_WVALID VALID 1 1 }  { m_axi_b_WREADY READY 0 1 }  { m_axi_b_WDATA DATA 1 16 }  { m_axi_b_WSTRB STRB 1 2 }  { m_axi_b_WLAST LAST 1 1 }  { m_axi_b_WID ID 1 1 }  { m_axi_b_WUSER USER 1 1 }  { m_axi_b_ARVALID VALID 1 1 }  { m_axi_b_ARREADY READY 0 1 }  { m_axi_b_ARADDR ADDR 1 32 }  { m_axi_b_ARID ID 1 1 }  { m_axi_b_ARLEN LEN 1 32 }  { m_axi_b_ARSIZE SIZE 1 3 }  { m_axi_b_ARBURST BURST 1 2 }  { m_axi_b_ARLOCK LOCK 1 2 }  { m_axi_b_ARCACHE CACHE 1 4 }  { m_axi_b_ARPROT PROT 1 3 }  { m_axi_b_ARQOS QOS 1 4 }  { m_axi_b_ARREGION REGION 1 4 }  { m_axi_b_ARUSER USER 1 1 }  { m_axi_b_RVALID VALID 0 1 }  { m_axi_b_RREADY READY 1 1 }  { m_axi_b_RDATA DATA 0 16 }  { m_axi_b_RLAST LAST 0 1 }  { m_axi_b_RID ID 0 1 }  { m_axi_b_RUSER USER 0 1 }  { m_axi_b_RRESP RESP 0 2 }  { m_axi_b_BVALID VALID 0 1 }  { m_axi_b_BREADY READY 1 1 }  { m_axi_b_BRESP RESP 0 2 }  { m_axi_b_BID ID 0 1 }  { m_axi_b_BUSER USER 0 1 } } }
	b_offset { ap_none {  { b_offset in_data 0 31 } } }
	B_buffer_0 { ap_memory {  { B_buffer_0_address0 mem_address 1 12 }  { B_buffer_0_ce0 mem_ce 1 1 }  { B_buffer_0_we0 mem_we 1 1 }  { B_buffer_0_d0 mem_din 1 16 } } }
	B_buffer_1 { ap_memory {  { B_buffer_1_address0 mem_address 1 12 }  { B_buffer_1_ce0 mem_ce 1 1 }  { B_buffer_1_we0 mem_we 1 1 }  { B_buffer_1_d0 mem_din 1 16 } } }
	B_buffer_2 { ap_memory {  { B_buffer_2_address0 mem_address 1 12 }  { B_buffer_2_ce0 mem_ce 1 1 }  { B_buffer_2_we0 mem_we 1 1 }  { B_buffer_2_d0 mem_din 1 16 } } }
	B_buffer_3 { ap_memory {  { B_buffer_3_address0 mem_address 1 12 }  { B_buffer_3_ce0 mem_ce 1 1 }  { B_buffer_3_we0 mem_we 1 1 }  { B_buffer_3_d0 mem_din 1 16 } } }
	B_buffer_4 { ap_memory {  { B_buffer_4_address0 mem_address 1 12 }  { B_buffer_4_ce0 mem_ce 1 1 }  { B_buffer_4_we0 mem_we 1 1 }  { B_buffer_4_d0 mem_din 1 16 } } }
	B_buffer_5 { ap_memory {  { B_buffer_5_address0 mem_address 1 12 }  { B_buffer_5_ce0 mem_ce 1 1 }  { B_buffer_5_we0 mem_we 1 1 }  { B_buffer_5_d0 mem_din 1 16 } } }
	B_buffer_6 { ap_memory {  { B_buffer_6_address0 mem_address 1 12 }  { B_buffer_6_ce0 mem_ce 1 1 }  { B_buffer_6_we0 mem_we 1 1 }  { B_buffer_6_d0 mem_din 1 16 } } }
	B_buffer_7 { ap_memory {  { B_buffer_7_address0 mem_address 1 12 }  { B_buffer_7_ce0 mem_ce 1 1 }  { B_buffer_7_we0 mem_we 1 1 }  { B_buffer_7_d0 mem_din 1 16 } } }
}
