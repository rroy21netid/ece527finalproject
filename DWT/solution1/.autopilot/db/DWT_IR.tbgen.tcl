set moduleName DWT_IR
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
set C_modelName {DWT_IR}
set C_modelType { void 0 }
set C_modelArgList {
	{ B_0 int 16 regular {array 2400 { 2 3 } 1 1 }  }
	{ B_1 int 16 regular {array 2400 { 2 3 } 1 1 }  }
	{ B_2 int 16 regular {array 2400 { 2 3 } 1 1 }  }
	{ B_3 int 16 regular {array 2400 { 2 3 } 1 1 }  }
	{ B_4 int 16 regular {array 2400 { 2 3 } 1 1 }  }
	{ B_5 int 16 regular {array 2400 { 2 3 } 1 1 }  }
	{ B_6 int 16 regular {array 2400 { 2 3 } 1 1 }  }
	{ B_7 int 16 regular {array 2400 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "B_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "B_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "B_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "B_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "B_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "B_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "B_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "B_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ B_0_address0 sc_out sc_lv 12 signal 0 } 
	{ B_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ B_0_we0 sc_out sc_logic 1 signal 0 } 
	{ B_0_d0 sc_out sc_lv 16 signal 0 } 
	{ B_0_q0 sc_in sc_lv 16 signal 0 } 
	{ B_1_address0 sc_out sc_lv 12 signal 1 } 
	{ B_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_1_we0 sc_out sc_logic 1 signal 1 } 
	{ B_1_d0 sc_out sc_lv 16 signal 1 } 
	{ B_1_q0 sc_in sc_lv 16 signal 1 } 
	{ B_2_address0 sc_out sc_lv 12 signal 2 } 
	{ B_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_2_we0 sc_out sc_logic 1 signal 2 } 
	{ B_2_d0 sc_out sc_lv 16 signal 2 } 
	{ B_2_q0 sc_in sc_lv 16 signal 2 } 
	{ B_3_address0 sc_out sc_lv 12 signal 3 } 
	{ B_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ B_3_we0 sc_out sc_logic 1 signal 3 } 
	{ B_3_d0 sc_out sc_lv 16 signal 3 } 
	{ B_3_q0 sc_in sc_lv 16 signal 3 } 
	{ B_4_address0 sc_out sc_lv 12 signal 4 } 
	{ B_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ B_4_we0 sc_out sc_logic 1 signal 4 } 
	{ B_4_d0 sc_out sc_lv 16 signal 4 } 
	{ B_4_q0 sc_in sc_lv 16 signal 4 } 
	{ B_5_address0 sc_out sc_lv 12 signal 5 } 
	{ B_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ B_5_we0 sc_out sc_logic 1 signal 5 } 
	{ B_5_d0 sc_out sc_lv 16 signal 5 } 
	{ B_5_q0 sc_in sc_lv 16 signal 5 } 
	{ B_6_address0 sc_out sc_lv 12 signal 6 } 
	{ B_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ B_6_we0 sc_out sc_logic 1 signal 6 } 
	{ B_6_d0 sc_out sc_lv 16 signal 6 } 
	{ B_6_q0 sc_in sc_lv 16 signal 6 } 
	{ B_7_address0 sc_out sc_lv 12 signal 7 } 
	{ B_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ B_7_we0 sc_out sc_logic 1 signal 7 } 
	{ B_7_d0 sc_out sc_lv 16 signal 7 } 
	{ B_7_q0 sc_in sc_lv 16 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "B_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_0", "role": "address0" }} , 
 	{ "name": "B_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_0", "role": "ce0" }} , 
 	{ "name": "B_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_0", "role": "we0" }} , 
 	{ "name": "B_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_0", "role": "d0" }} , 
 	{ "name": "B_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_0", "role": "q0" }} , 
 	{ "name": "B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_1", "role": "address0" }} , 
 	{ "name": "B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_1", "role": "ce0" }} , 
 	{ "name": "B_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_1", "role": "we0" }} , 
 	{ "name": "B_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_1", "role": "d0" }} , 
 	{ "name": "B_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_1", "role": "q0" }} , 
 	{ "name": "B_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_2", "role": "address0" }} , 
 	{ "name": "B_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_2", "role": "ce0" }} , 
 	{ "name": "B_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_2", "role": "we0" }} , 
 	{ "name": "B_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_2", "role": "d0" }} , 
 	{ "name": "B_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_2", "role": "q0" }} , 
 	{ "name": "B_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_3", "role": "address0" }} , 
 	{ "name": "B_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_3", "role": "ce0" }} , 
 	{ "name": "B_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_3", "role": "we0" }} , 
 	{ "name": "B_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_3", "role": "d0" }} , 
 	{ "name": "B_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_3", "role": "q0" }} , 
 	{ "name": "B_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_4", "role": "address0" }} , 
 	{ "name": "B_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_4", "role": "ce0" }} , 
 	{ "name": "B_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_4", "role": "we0" }} , 
 	{ "name": "B_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_4", "role": "d0" }} , 
 	{ "name": "B_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_4", "role": "q0" }} , 
 	{ "name": "B_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_5", "role": "address0" }} , 
 	{ "name": "B_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_5", "role": "ce0" }} , 
 	{ "name": "B_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_5", "role": "we0" }} , 
 	{ "name": "B_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_5", "role": "d0" }} , 
 	{ "name": "B_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_5", "role": "q0" }} , 
 	{ "name": "B_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_6", "role": "address0" }} , 
 	{ "name": "B_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_6", "role": "ce0" }} , 
 	{ "name": "B_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_6", "role": "we0" }} , 
 	{ "name": "B_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_6", "role": "d0" }} , 
 	{ "name": "B_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_6", "role": "q0" }} , 
 	{ "name": "B_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_7", "role": "address0" }} , 
 	{ "name": "B_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_7", "role": "ce0" }} , 
 	{ "name": "B_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_7", "role": "we0" }} , 
 	{ "name": "B_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_7", "role": "d0" }} , 
 	{ "name": "B_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_7", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.column_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tempr_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tempc_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_uitofp_bkb_U50", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_fptrunccud_U51", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_fpext_3dEe_U52", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_dadddsueOg_U53", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_dmul_64fYi_U54", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_mux_832ibs_U55", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_mux_832ibs_U56", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DWT_IR {
		B_0 {Type IO LastRead 4 FirstWrite 8}
		B_1 {Type IO LastRead 4 FirstWrite 8}
		B_2 {Type IO LastRead 4 FirstWrite 8}
		B_3 {Type IO LastRead 4 FirstWrite 8}
		B_4 {Type IO LastRead 4 FirstWrite 8}
		B_5 {Type IO LastRead 4 FirstWrite 8}
		B_6 {Type IO LastRead 4 FirstWrite 8}
		B_7 {Type IO LastRead 4 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "807", "Max" : "833607"}
	, {"Name" : "Interval", "Min" : "807", "Max" : "833607"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	B_0 { ap_memory {  { B_0_address0 mem_address 1 12 }  { B_0_ce0 mem_ce 1 1 }  { B_0_we0 mem_we 1 1 }  { B_0_d0 mem_din 1 16 }  { B_0_q0 mem_dout 0 16 } } }
	B_1 { ap_memory {  { B_1_address0 mem_address 1 12 }  { B_1_ce0 mem_ce 1 1 }  { B_1_we0 mem_we 1 1 }  { B_1_d0 mem_din 1 16 }  { B_1_q0 mem_dout 0 16 } } }
	B_2 { ap_memory {  { B_2_address0 mem_address 1 12 }  { B_2_ce0 mem_ce 1 1 }  { B_2_we0 mem_we 1 1 }  { B_2_d0 mem_din 1 16 }  { B_2_q0 mem_dout 0 16 } } }
	B_3 { ap_memory {  { B_3_address0 mem_address 1 12 }  { B_3_ce0 mem_ce 1 1 }  { B_3_we0 mem_we 1 1 }  { B_3_d0 mem_din 1 16 }  { B_3_q0 mem_dout 0 16 } } }
	B_4 { ap_memory {  { B_4_address0 mem_address 1 12 }  { B_4_ce0 mem_ce 1 1 }  { B_4_we0 mem_we 1 1 }  { B_4_d0 mem_din 1 16 }  { B_4_q0 mem_dout 0 16 } } }
	B_5 { ap_memory {  { B_5_address0 mem_address 1 12 }  { B_5_ce0 mem_ce 1 1 }  { B_5_we0 mem_we 1 1 }  { B_5_d0 mem_din 1 16 }  { B_5_q0 mem_dout 0 16 } } }
	B_6 { ap_memory {  { B_6_address0 mem_address 1 12 }  { B_6_ce0 mem_ce 1 1 }  { B_6_we0 mem_we 1 1 }  { B_6_d0 mem_din 1 16 }  { B_6_q0 mem_dout 0 16 } } }
	B_7 { ap_memory {  { B_7_address0 mem_address 1 12 }  { B_7_ce0 mem_ce 1 1 }  { B_7_we0 mem_we 1 1 }  { B_7_d0 mem_din 1 16 }  { B_7_q0 mem_dout 0 16 } } }
}
