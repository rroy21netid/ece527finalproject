set moduleName DWT_Accel
set isTopModule 1
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
set C_modelName {DWT_Accel}
set C_modelType { void 0 }
set C_modelArgList {
	{ DATA_A int 16 regular {axi_master 0}  }
	{ DATA_B int 16 regular {axi_master 0}  }
	{ DATA_C int 16 regular {axi_master 1}  }
	{ a int 32 regular {axi_slave 0}  }
	{ b int 32 regular {axi_slave 0}  }
	{ c int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "DATA_A", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "a","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "a","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 119,"step" : 1},{"low" : 0,"up" : 159,"step" : 1}]}]}]} , 
 	{ "Name" : "DATA_B", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "b","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "b","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 119,"step" : 1},{"low" : 0,"up" : 159,"step" : 1}]}]}]} , 
 	{ "Name" : "DATA_C", "interface" : "axi_master", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "c","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "c","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 119,"step" : 1},{"low" : 0,"up" : 159,"step" : 1}]}]}]} , 
 	{ "Name" : "a", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "b", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "c", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_DATA_A_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_A_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_A_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_A_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_A_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_DATA_A_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_A_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_A_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_A_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_A_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_A_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_A_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_A_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_A_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_A_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_A_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_A_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_A_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_A_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_A_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_A_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_A_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_A_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_A_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_A_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_DATA_A_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_A_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_A_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_A_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_A_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_A_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_A_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_A_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_A_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_A_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_A_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_DATA_A_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_A_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_A_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_A_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_A_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_A_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_A_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_A_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_A_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_B_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_B_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_B_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_DATA_B_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_B_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_DATA_B_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_B_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_B_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_B_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_B_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_B_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_B_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_B_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_B_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_B_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_B_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_DATA_B_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_B_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_B_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_B_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_B_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_B_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_B_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_DATA_B_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_B_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_DATA_B_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_B_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_B_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_B_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_B_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_B_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_B_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_B_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_B_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_B_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_B_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_DATA_B_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_B_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_B_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_B_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_DATA_B_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_B_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_B_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_DATA_B_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_B_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_C_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_C_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_C_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_DATA_C_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_C_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_DATA_C_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_DATA_C_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_DATA_C_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_DATA_C_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_C_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_DATA_C_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_C_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_C_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_C_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_C_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_C_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_DATA_C_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_C_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_C_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_C_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_C_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_C_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_C_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_DATA_C_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_C_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_DATA_C_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_DATA_C_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_DATA_C_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_DATA_C_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_C_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_DATA_C_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_C_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_C_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_C_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_C_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_C_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_DATA_C_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_C_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_DATA_C_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_DATA_C_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_DATA_C_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_C_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_C_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_DATA_C_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_DATA_C_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_CTL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTL", "role": "AWADDR" },"address":[{"name":"DWT_Accel","role":"start","value":"0","valid_bit":"0"},{"name":"DWT_Accel","role":"continue","value":"0","valid_bit":"4"},{"name":"DWT_Accel","role":"auto_start","value":"0","valid_bit":"7"},{"name":"a","role":"data","value":"16"},{"name":"b","role":"data","value":"24"},{"name":"c","role":"data","value":"32"}] },
	{ "name": "s_axi_CTL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "AWVALID" } },
	{ "name": "s_axi_CTL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "AWREADY" } },
	{ "name": "s_axi_CTL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "WVALID" } },
	{ "name": "s_axi_CTL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "WREADY" } },
	{ "name": "s_axi_CTL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTL", "role": "WDATA" } },
	{ "name": "s_axi_CTL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTL", "role": "WSTRB" } },
	{ "name": "s_axi_CTL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTL", "role": "ARADDR" },"address":[{"name":"DWT_Accel","role":"start","value":"0","valid_bit":"0"},{"name":"DWT_Accel","role":"done","value":"0","valid_bit":"1"},{"name":"DWT_Accel","role":"idle","value":"0","valid_bit":"2"},{"name":"DWT_Accel","role":"ready","value":"0","valid_bit":"3"},{"name":"DWT_Accel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "ARVALID" } },
	{ "name": "s_axi_CTL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "ARREADY" } },
	{ "name": "s_axi_CTL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "RVALID" } },
	{ "name": "s_axi_CTL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "RREADY" } },
	{ "name": "s_axi_CTL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTL", "role": "RDATA" } },
	{ "name": "s_axi_CTL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTL", "role": "RRESP" } },
	{ "name": "s_axi_CTL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "BVALID" } },
	{ "name": "s_axi_CTL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "BREADY" } },
	{ "name": "s_axi_CTL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_DATA_A_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_A_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_A_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_A", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_A_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_A_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_A", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_A_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_A", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_A_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_A", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_A_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_A", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_A_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_A", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_A_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_A", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_A_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_A", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_A_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_A", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_A_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_A_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_A_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_A_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_A", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_A_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_A", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_A_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_A_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_A_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_A_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_A_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_A_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_A", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_A_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_A_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_A", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_A_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_A", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_A_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_A", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_A_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_A", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_A_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_A", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_A_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_A", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_A_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_A", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_A_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_A", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_A_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_A_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_A_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_A_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_A", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_A_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_A_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_A_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_A_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_A", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_A_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_A_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_A_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_A", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_A_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_A_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_A", "role": "BUSER" }} , 
 	{ "name": "m_axi_DATA_B_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_B_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_B_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_B", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_B_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_B_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_B", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_B_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_B", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_B_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_B", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_B_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_B", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_B_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_B", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_B_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_B", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_B_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_B", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_B_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_B", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_B_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_B_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_B_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_B_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_B", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_B_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_B", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_B_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_B_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_B_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_B_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_B_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_B_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_B", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_B_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_B_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_B", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_B_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_B", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_B_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_B", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_B_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_B", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_B_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_B", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_B_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_B", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_B_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_B", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_B_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_B", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_B_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_B_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_B_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_B_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_B", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_B_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_B_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_B_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_B_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_B", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_B_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_B_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_B_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_B", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_B_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_B_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_B", "role": "BUSER" }} , 
 	{ "name": "m_axi_DATA_C_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_C_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_C_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_C", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_C_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_C_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_C", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_C_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_C", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_C_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_C", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_C_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_C", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_C_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_C", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_C_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_C", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_C_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_C", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_C_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_C", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_C_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_C_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_C_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_C_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_C", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_C_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_C", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_C_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_C_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_C_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_C_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_C_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_C_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_C", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_C_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_C_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_C", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_C_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_C", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_C_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_C", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_C_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_C", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_C_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_C", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_C_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_C", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_C_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_C", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_C_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_C", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_C_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_C_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_C_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_C_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_C", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_C_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_C_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_C_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_C_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_C", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_C_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_C_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_C_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_C", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_C_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_C_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_C", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "47", "61", "73", "81", "83", "84"],
		"CDFG" : "DWT_Accel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "657168", "EstimateLatencyMax" : "2578048",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_IDWT_fu_192"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_DWT_color_fu_204"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_DWT_IR_fu_216"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Filter_fu_228"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_write_image_fu_256"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_read_color_fu_271"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_read_IR_fu_294"}],
		"Port" : [
			{"Name" : "DATA_A", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_read_color_fu_271", "Port" : "a"}]},
			{"Name" : "DATA_B", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_read_IR_fu_294", "Port" : "b"}]},
			{"Name" : "DATA_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_write_image_fu_256", "Port" : "c"}]},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_CTL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_DATA_A_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_DATA_B_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_DATA_C_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_buffer_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_buffer_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_buffer_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_buffer_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_buffer_4_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_buffer_5_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_buffer_6_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_buffer_7_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_buffer_0_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_buffer_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_buffer_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_buffer_3_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_buffer_4_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_buffer_5_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_buffer_6_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_buffer_7_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_buffer_0_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_buffer_1_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_buffer_2_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_buffer_3_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_buffer_4_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_buffer_5_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_buffer_6_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_buffer_7_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192", "Parent" : "0", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "IDWT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1127", "EstimateLatencyMax" : "1089207",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "C_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "C_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "C_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "C_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "C_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "C_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "C_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "C_7", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.row_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.column_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.tempr_U", "Parent" : "29"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.tempc_U", "Parent" : "29"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.DWT_Accel_uitofp_bkb_U97", "Parent" : "29"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.DWT_Accel_fptrunccud_U98", "Parent" : "29"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.DWT_Accel_fptrunccud_U99", "Parent" : "29"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.DWT_Accel_fpext_3dEe_U100", "Parent" : "29"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.DWT_Accel_fpext_3dEe_U101", "Parent" : "29"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.DWT_Accel_dadd_64jbC_U102", "Parent" : "29"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.DWT_Accel_dsub_64kbM_U103", "Parent" : "29"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.DWT_Accel_dmul_64fYi_U104", "Parent" : "29"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.DWT_Accel_dmul_64fYi_U105", "Parent" : "29"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.DWT_Accel_dmul_64fYi_U106", "Parent" : "29"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.DWT_Accel_dmul_64fYi_U107", "Parent" : "29"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.DWT_Accel_mux_832ibs_U108", "Parent" : "29"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_IDWT_fu_192.DWT_Accel_mux_832ibs_U109", "Parent" : "29"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DWT_color_fu_204", "Parent" : "0", "Child" : ["48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60"],
		"CDFG" : "DWT_color",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1951", "EstimateLatencyMax" : "834751",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_color_fu_204.row_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_color_fu_204.column_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_color_fu_204.tempr_U", "Parent" : "47"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_color_fu_204.tempc_U", "Parent" : "47"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_color_fu_204.DWT_Accel_uitofp_bkb_U21", "Parent" : "47"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_color_fu_204.DWT_Accel_fptrunccud_U22", "Parent" : "47"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_color_fu_204.DWT_Accel_fpext_3dEe_U23", "Parent" : "47"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_color_fu_204.DWT_Accel_dadddsueOg_U24", "Parent" : "47"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_color_fu_204.DWT_Accel_dmul_64fYi_U25", "Parent" : "47"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_color_fu_204.DWT_Accel_dcmp_64g8j_U26", "Parent" : "47"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_color_fu_204.DWT_Accel_sitodp_hbi_U27", "Parent" : "47"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_color_fu_204.DWT_Accel_mux_832ibs_U28", "Parent" : "47"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_color_fu_204.DWT_Accel_mux_832ibs_U29", "Parent" : "47"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DWT_IR_fu_216", "Parent" : "0", "Child" : ["62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72"],
		"CDFG" : "DWT_IR",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "807", "EstimateLatencyMax" : "833607",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "B_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "B_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "B_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "B_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "B_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "B_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "B_7", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_IR_fu_216.row_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_IR_fu_216.column_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_IR_fu_216.tempr_U", "Parent" : "61"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_IR_fu_216.tempc_U", "Parent" : "61"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_IR_fu_216.DWT_Accel_uitofp_bkb_U50", "Parent" : "61"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_IR_fu_216.DWT_Accel_fptrunccud_U51", "Parent" : "61"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_IR_fu_216.DWT_Accel_fpext_3dEe_U52", "Parent" : "61"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_IR_fu_216.DWT_Accel_dadddsueOg_U53", "Parent" : "61"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_IR_fu_216.DWT_Accel_dmul_64fYi_U54", "Parent" : "61"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_IR_fu_216.DWT_Accel_mux_832ibs_U55", "Parent" : "61"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DWT_IR_fu_216.DWT_Accel_mux_832ibs_U56", "Parent" : "61"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Filter_fu_228", "Parent" : "0", "Child" : ["74", "75", "76", "77", "78", "79", "80"],
		"CDFG" : "Filter",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "403521", "EstimateLatencyMax" : "403521",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_7", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter_fu_228.DWT_Accel_dadd_64jbC_U65", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter_fu_228.DWT_Accel_dmul_64fYi_U66", "Parent" : "73"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter_fu_228.DWT_Accel_dmul_64fYi_U67", "Parent" : "73"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter_fu_228.DWT_Accel_sitodp_hbi_U68", "Parent" : "73"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter_fu_228.DWT_Accel_sitodp_hbi_U69", "Parent" : "73"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter_fu_228.DWT_Accel_mux_832ibs_U70", "Parent" : "73"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter_fu_228.DWT_Accel_mux_832ibs_U71", "Parent" : "73"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_image_fu_256", "Parent" : "0", "Child" : ["82"],
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
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_image_fu_256.DWT_Accel_mux_832ibs_U121", "Parent" : "81"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_read_color_fu_271", "Parent" : "0",
		"CDFG" : "read_color",
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
			{"Name" : "a", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "a_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "a_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_buffer_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_buffer_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_buffer_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_buffer_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_buffer_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_buffer_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_buffer_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_buffer_7", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_read_IR_fu_294", "Parent" : "0",
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
	DWT_Accel {
		DATA_A {Type I LastRead 10 FirstWrite -1}
		DATA_B {Type I LastRead 10 FirstWrite -1}
		DATA_C {Type O LastRead 6 FirstWrite 5}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}}
	IDWT {
		C_0 {Type IO LastRead 4 FirstWrite 8}
		C_1 {Type IO LastRead 4 FirstWrite 8}
		C_2 {Type IO LastRead 4 FirstWrite 8}
		C_3 {Type IO LastRead 4 FirstWrite 8}
		C_4 {Type IO LastRead 4 FirstWrite 8}
		C_5 {Type IO LastRead 4 FirstWrite 8}
		C_6 {Type IO LastRead 4 FirstWrite 8}
		C_7 {Type IO LastRead 4 FirstWrite 8}}
	DWT_color {
		A_0 {Type IO LastRead 23 FirstWrite 8}
		A_1 {Type IO LastRead 23 FirstWrite 8}
		A_2 {Type IO LastRead 23 FirstWrite 8}
		A_3 {Type IO LastRead 23 FirstWrite 8}
		A_4 {Type IO LastRead 23 FirstWrite 8}
		A_5 {Type IO LastRead 23 FirstWrite 8}
		A_6 {Type IO LastRead 23 FirstWrite 8}
		A_7 {Type IO LastRead 23 FirstWrite 8}}
	DWT_IR {
		B_0 {Type IO LastRead 4 FirstWrite 8}
		B_1 {Type IO LastRead 4 FirstWrite 8}
		B_2 {Type IO LastRead 4 FirstWrite 8}
		B_3 {Type IO LastRead 4 FirstWrite 8}
		B_4 {Type IO LastRead 4 FirstWrite 8}
		B_5 {Type IO LastRead 4 FirstWrite 8}
		B_6 {Type IO LastRead 4 FirstWrite 8}
		B_7 {Type IO LastRead 4 FirstWrite 8}}
	Filter {
		A_0 {Type I LastRead 2 FirstWrite -1}
		A_1 {Type I LastRead 2 FirstWrite -1}
		A_2 {Type I LastRead 2 FirstWrite -1}
		A_3 {Type I LastRead 2 FirstWrite -1}
		A_4 {Type I LastRead 2 FirstWrite -1}
		A_5 {Type I LastRead 2 FirstWrite -1}
		A_6 {Type I LastRead 2 FirstWrite -1}
		A_7 {Type I LastRead 2 FirstWrite -1}
		B_0 {Type I LastRead 2 FirstWrite -1}
		B_1 {Type I LastRead 2 FirstWrite -1}
		B_2 {Type I LastRead 2 FirstWrite -1}
		B_3 {Type I LastRead 2 FirstWrite -1}
		B_4 {Type I LastRead 2 FirstWrite -1}
		B_5 {Type I LastRead 2 FirstWrite -1}
		B_6 {Type I LastRead 2 FirstWrite -1}
		B_7 {Type I LastRead 2 FirstWrite -1}
		C_0 {Type O LastRead -1 FirstWrite 22}
		C_1 {Type O LastRead -1 FirstWrite 22}
		C_2 {Type O LastRead -1 FirstWrite 22}
		C_3 {Type O LastRead -1 FirstWrite 22}
		C_4 {Type O LastRead -1 FirstWrite 22}
		C_5 {Type O LastRead -1 FirstWrite 22}
		C_6 {Type O LastRead -1 FirstWrite 22}
		C_7 {Type O LastRead -1 FirstWrite 22}}
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
		c_offset {Type I LastRead 0 FirstWrite -1}}
	read_color {
		a {Type I LastRead 10 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		A_buffer_0 {Type O LastRead -1 FirstWrite 11}
		A_buffer_1 {Type O LastRead -1 FirstWrite 11}
		A_buffer_2 {Type O LastRead -1 FirstWrite 11}
		A_buffer_3 {Type O LastRead -1 FirstWrite 11}
		A_buffer_4 {Type O LastRead -1 FirstWrite 11}
		A_buffer_5 {Type O LastRead -1 FirstWrite 11}
		A_buffer_6 {Type O LastRead -1 FirstWrite 11}
		A_buffer_7 {Type O LastRead -1 FirstWrite 11}}
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
	{"Name" : "Latency", "Min" : "657168", "Max" : "2578048"}
	, {"Name" : "Interval", "Min" : "657169", "Max" : "2578049"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	DATA_A { m_axi {  { m_axi_DATA_A_AWVALID VALID 1 1 }  { m_axi_DATA_A_AWREADY READY 0 1 }  { m_axi_DATA_A_AWADDR ADDR 1 32 }  { m_axi_DATA_A_AWID ID 1 1 }  { m_axi_DATA_A_AWLEN LEN 1 8 }  { m_axi_DATA_A_AWSIZE SIZE 1 3 }  { m_axi_DATA_A_AWBURST BURST 1 2 }  { m_axi_DATA_A_AWLOCK LOCK 1 2 }  { m_axi_DATA_A_AWCACHE CACHE 1 4 }  { m_axi_DATA_A_AWPROT PROT 1 3 }  { m_axi_DATA_A_AWQOS QOS 1 4 }  { m_axi_DATA_A_AWREGION REGION 1 4 }  { m_axi_DATA_A_AWUSER USER 1 1 }  { m_axi_DATA_A_WVALID VALID 1 1 }  { m_axi_DATA_A_WREADY READY 0 1 }  { m_axi_DATA_A_WDATA DATA 1 32 }  { m_axi_DATA_A_WSTRB STRB 1 4 }  { m_axi_DATA_A_WLAST LAST 1 1 }  { m_axi_DATA_A_WID ID 1 1 }  { m_axi_DATA_A_WUSER USER 1 1 }  { m_axi_DATA_A_ARVALID VALID 1 1 }  { m_axi_DATA_A_ARREADY READY 0 1 }  { m_axi_DATA_A_ARADDR ADDR 1 32 }  { m_axi_DATA_A_ARID ID 1 1 }  { m_axi_DATA_A_ARLEN LEN 1 8 }  { m_axi_DATA_A_ARSIZE SIZE 1 3 }  { m_axi_DATA_A_ARBURST BURST 1 2 }  { m_axi_DATA_A_ARLOCK LOCK 1 2 }  { m_axi_DATA_A_ARCACHE CACHE 1 4 }  { m_axi_DATA_A_ARPROT PROT 1 3 }  { m_axi_DATA_A_ARQOS QOS 1 4 }  { m_axi_DATA_A_ARREGION REGION 1 4 }  { m_axi_DATA_A_ARUSER USER 1 1 }  { m_axi_DATA_A_RVALID VALID 0 1 }  { m_axi_DATA_A_RREADY READY 1 1 }  { m_axi_DATA_A_RDATA DATA 0 32 }  { m_axi_DATA_A_RLAST LAST 0 1 }  { m_axi_DATA_A_RID ID 0 1 }  { m_axi_DATA_A_RUSER USER 0 1 }  { m_axi_DATA_A_RRESP RESP 0 2 }  { m_axi_DATA_A_BVALID VALID 0 1 }  { m_axi_DATA_A_BREADY READY 1 1 }  { m_axi_DATA_A_BRESP RESP 0 2 }  { m_axi_DATA_A_BID ID 0 1 }  { m_axi_DATA_A_BUSER USER 0 1 } } }
	DATA_B { m_axi {  { m_axi_DATA_B_AWVALID VALID 1 1 }  { m_axi_DATA_B_AWREADY READY 0 1 }  { m_axi_DATA_B_AWADDR ADDR 1 32 }  { m_axi_DATA_B_AWID ID 1 1 }  { m_axi_DATA_B_AWLEN LEN 1 8 }  { m_axi_DATA_B_AWSIZE SIZE 1 3 }  { m_axi_DATA_B_AWBURST BURST 1 2 }  { m_axi_DATA_B_AWLOCK LOCK 1 2 }  { m_axi_DATA_B_AWCACHE CACHE 1 4 }  { m_axi_DATA_B_AWPROT PROT 1 3 }  { m_axi_DATA_B_AWQOS QOS 1 4 }  { m_axi_DATA_B_AWREGION REGION 1 4 }  { m_axi_DATA_B_AWUSER USER 1 1 }  { m_axi_DATA_B_WVALID VALID 1 1 }  { m_axi_DATA_B_WREADY READY 0 1 }  { m_axi_DATA_B_WDATA DATA 1 32 }  { m_axi_DATA_B_WSTRB STRB 1 4 }  { m_axi_DATA_B_WLAST LAST 1 1 }  { m_axi_DATA_B_WID ID 1 1 }  { m_axi_DATA_B_WUSER USER 1 1 }  { m_axi_DATA_B_ARVALID VALID 1 1 }  { m_axi_DATA_B_ARREADY READY 0 1 }  { m_axi_DATA_B_ARADDR ADDR 1 32 }  { m_axi_DATA_B_ARID ID 1 1 }  { m_axi_DATA_B_ARLEN LEN 1 8 }  { m_axi_DATA_B_ARSIZE SIZE 1 3 }  { m_axi_DATA_B_ARBURST BURST 1 2 }  { m_axi_DATA_B_ARLOCK LOCK 1 2 }  { m_axi_DATA_B_ARCACHE CACHE 1 4 }  { m_axi_DATA_B_ARPROT PROT 1 3 }  { m_axi_DATA_B_ARQOS QOS 1 4 }  { m_axi_DATA_B_ARREGION REGION 1 4 }  { m_axi_DATA_B_ARUSER USER 1 1 }  { m_axi_DATA_B_RVALID VALID 0 1 }  { m_axi_DATA_B_RREADY READY 1 1 }  { m_axi_DATA_B_RDATA DATA 0 32 }  { m_axi_DATA_B_RLAST LAST 0 1 }  { m_axi_DATA_B_RID ID 0 1 }  { m_axi_DATA_B_RUSER USER 0 1 }  { m_axi_DATA_B_RRESP RESP 0 2 }  { m_axi_DATA_B_BVALID VALID 0 1 }  { m_axi_DATA_B_BREADY READY 1 1 }  { m_axi_DATA_B_BRESP RESP 0 2 }  { m_axi_DATA_B_BID ID 0 1 }  { m_axi_DATA_B_BUSER USER 0 1 } } }
	DATA_C { m_axi {  { m_axi_DATA_C_AWVALID VALID 1 1 }  { m_axi_DATA_C_AWREADY READY 0 1 }  { m_axi_DATA_C_AWADDR ADDR 1 32 }  { m_axi_DATA_C_AWID ID 1 1 }  { m_axi_DATA_C_AWLEN LEN 1 8 }  { m_axi_DATA_C_AWSIZE SIZE 1 3 }  { m_axi_DATA_C_AWBURST BURST 1 2 }  { m_axi_DATA_C_AWLOCK LOCK 1 2 }  { m_axi_DATA_C_AWCACHE CACHE 1 4 }  { m_axi_DATA_C_AWPROT PROT 1 3 }  { m_axi_DATA_C_AWQOS QOS 1 4 }  { m_axi_DATA_C_AWREGION REGION 1 4 }  { m_axi_DATA_C_AWUSER USER 1 1 }  { m_axi_DATA_C_WVALID VALID 1 1 }  { m_axi_DATA_C_WREADY READY 0 1 }  { m_axi_DATA_C_WDATA DATA 1 32 }  { m_axi_DATA_C_WSTRB STRB 1 4 }  { m_axi_DATA_C_WLAST LAST 1 1 }  { m_axi_DATA_C_WID ID 1 1 }  { m_axi_DATA_C_WUSER USER 1 1 }  { m_axi_DATA_C_ARVALID VALID 1 1 }  { m_axi_DATA_C_ARREADY READY 0 1 }  { m_axi_DATA_C_ARADDR ADDR 1 32 }  { m_axi_DATA_C_ARID ID 1 1 }  { m_axi_DATA_C_ARLEN LEN 1 8 }  { m_axi_DATA_C_ARSIZE SIZE 1 3 }  { m_axi_DATA_C_ARBURST BURST 1 2 }  { m_axi_DATA_C_ARLOCK LOCK 1 2 }  { m_axi_DATA_C_ARCACHE CACHE 1 4 }  { m_axi_DATA_C_ARPROT PROT 1 3 }  { m_axi_DATA_C_ARQOS QOS 1 4 }  { m_axi_DATA_C_ARREGION REGION 1 4 }  { m_axi_DATA_C_ARUSER USER 1 1 }  { m_axi_DATA_C_RVALID VALID 0 1 }  { m_axi_DATA_C_RREADY READY 1 1 }  { m_axi_DATA_C_RDATA DATA 0 32 }  { m_axi_DATA_C_RLAST LAST 0 1 }  { m_axi_DATA_C_RID ID 0 1 }  { m_axi_DATA_C_RUSER USER 0 1 }  { m_axi_DATA_C_RRESP RESP 0 2 }  { m_axi_DATA_C_BVALID VALID 0 1 }  { m_axi_DATA_C_BREADY READY 1 1 }  { m_axi_DATA_C_BRESP RESP 0 2 }  { m_axi_DATA_C_BID ID 0 1 }  { m_axi_DATA_C_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ DATA_A { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ DATA_B { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ DATA_C { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ DATA_A 1 }
	{ DATA_B 1 }
	{ DATA_C 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ DATA_A 1 }
	{ DATA_B 1 }
	{ DATA_C 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
