set moduleName Filter
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
set C_modelName {Filter}
set C_modelType { void 0 }
set C_modelArgList {
	{ A_0 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ A_1 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ A_2 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ A_3 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ A_4 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ A_5 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ A_6 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ A_7 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ B_0 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ B_1 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ B_2 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ B_3 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ B_4 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ B_5 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ B_6 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ B_7 int 16 regular {array 2400 { 1 3 } 1 1 }  }
	{ C_0 int 16 regular {array 2400 { 0 3 } 0 1 }  }
	{ C_1 int 16 regular {array 2400 { 0 3 } 0 1 }  }
	{ C_2 int 16 regular {array 2400 { 0 3 } 0 1 }  }
	{ C_3 int 16 regular {array 2400 { 0 3 } 0 1 }  }
	{ C_4 int 16 regular {array 2400 { 0 3 } 0 1 }  }
	{ C_5 int 16 regular {array 2400 { 0 3 } 0 1 }  }
	{ C_6 int 16 regular {array 2400 { 0 3 } 0 1 }  }
	{ C_7 int 16 regular {array 2400 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "B_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "B_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "B_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "B_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "B_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "B_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "B_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "B_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "C_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 86
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_0_address0 sc_out sc_lv 12 signal 0 } 
	{ A_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_0_q0 sc_in sc_lv 16 signal 0 } 
	{ A_1_address0 sc_out sc_lv 12 signal 1 } 
	{ A_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_1_q0 sc_in sc_lv 16 signal 1 } 
	{ A_2_address0 sc_out sc_lv 12 signal 2 } 
	{ A_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ A_2_q0 sc_in sc_lv 16 signal 2 } 
	{ A_3_address0 sc_out sc_lv 12 signal 3 } 
	{ A_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ A_3_q0 sc_in sc_lv 16 signal 3 } 
	{ A_4_address0 sc_out sc_lv 12 signal 4 } 
	{ A_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ A_4_q0 sc_in sc_lv 16 signal 4 } 
	{ A_5_address0 sc_out sc_lv 12 signal 5 } 
	{ A_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ A_5_q0 sc_in sc_lv 16 signal 5 } 
	{ A_6_address0 sc_out sc_lv 12 signal 6 } 
	{ A_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ A_6_q0 sc_in sc_lv 16 signal 6 } 
	{ A_7_address0 sc_out sc_lv 12 signal 7 } 
	{ A_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ A_7_q0 sc_in sc_lv 16 signal 7 } 
	{ B_0_address0 sc_out sc_lv 12 signal 8 } 
	{ B_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ B_0_q0 sc_in sc_lv 16 signal 8 } 
	{ B_1_address0 sc_out sc_lv 12 signal 9 } 
	{ B_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ B_1_q0 sc_in sc_lv 16 signal 9 } 
	{ B_2_address0 sc_out sc_lv 12 signal 10 } 
	{ B_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ B_2_q0 sc_in sc_lv 16 signal 10 } 
	{ B_3_address0 sc_out sc_lv 12 signal 11 } 
	{ B_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ B_3_q0 sc_in sc_lv 16 signal 11 } 
	{ B_4_address0 sc_out sc_lv 12 signal 12 } 
	{ B_4_ce0 sc_out sc_logic 1 signal 12 } 
	{ B_4_q0 sc_in sc_lv 16 signal 12 } 
	{ B_5_address0 sc_out sc_lv 12 signal 13 } 
	{ B_5_ce0 sc_out sc_logic 1 signal 13 } 
	{ B_5_q0 sc_in sc_lv 16 signal 13 } 
	{ B_6_address0 sc_out sc_lv 12 signal 14 } 
	{ B_6_ce0 sc_out sc_logic 1 signal 14 } 
	{ B_6_q0 sc_in sc_lv 16 signal 14 } 
	{ B_7_address0 sc_out sc_lv 12 signal 15 } 
	{ B_7_ce0 sc_out sc_logic 1 signal 15 } 
	{ B_7_q0 sc_in sc_lv 16 signal 15 } 
	{ C_0_address0 sc_out sc_lv 12 signal 16 } 
	{ C_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ C_0_we0 sc_out sc_logic 1 signal 16 } 
	{ C_0_d0 sc_out sc_lv 16 signal 16 } 
	{ C_1_address0 sc_out sc_lv 12 signal 17 } 
	{ C_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ C_1_we0 sc_out sc_logic 1 signal 17 } 
	{ C_1_d0 sc_out sc_lv 16 signal 17 } 
	{ C_2_address0 sc_out sc_lv 12 signal 18 } 
	{ C_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ C_2_we0 sc_out sc_logic 1 signal 18 } 
	{ C_2_d0 sc_out sc_lv 16 signal 18 } 
	{ C_3_address0 sc_out sc_lv 12 signal 19 } 
	{ C_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ C_3_we0 sc_out sc_logic 1 signal 19 } 
	{ C_3_d0 sc_out sc_lv 16 signal 19 } 
	{ C_4_address0 sc_out sc_lv 12 signal 20 } 
	{ C_4_ce0 sc_out sc_logic 1 signal 20 } 
	{ C_4_we0 sc_out sc_logic 1 signal 20 } 
	{ C_4_d0 sc_out sc_lv 16 signal 20 } 
	{ C_5_address0 sc_out sc_lv 12 signal 21 } 
	{ C_5_ce0 sc_out sc_logic 1 signal 21 } 
	{ C_5_we0 sc_out sc_logic 1 signal 21 } 
	{ C_5_d0 sc_out sc_lv 16 signal 21 } 
	{ C_6_address0 sc_out sc_lv 12 signal 22 } 
	{ C_6_ce0 sc_out sc_logic 1 signal 22 } 
	{ C_6_we0 sc_out sc_logic 1 signal 22 } 
	{ C_6_d0 sc_out sc_lv 16 signal 22 } 
	{ C_7_address0 sc_out sc_lv 12 signal 23 } 
	{ C_7_ce0 sc_out sc_logic 1 signal 23 } 
	{ C_7_we0 sc_out sc_logic 1 signal 23 } 
	{ C_7_d0 sc_out sc_lv 16 signal 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_0", "role": "address0" }} , 
 	{ "name": "A_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "ce0" }} , 
 	{ "name": "A_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_0", "role": "q0" }} , 
 	{ "name": "A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_1", "role": "address0" }} , 
 	{ "name": "A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce0" }} , 
 	{ "name": "A_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_1", "role": "q0" }} , 
 	{ "name": "A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_2", "role": "address0" }} , 
 	{ "name": "A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "ce0" }} , 
 	{ "name": "A_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_2", "role": "q0" }} , 
 	{ "name": "A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_3", "role": "address0" }} , 
 	{ "name": "A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "ce0" }} , 
 	{ "name": "A_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_3", "role": "q0" }} , 
 	{ "name": "A_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_4", "role": "address0" }} , 
 	{ "name": "A_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_4", "role": "ce0" }} , 
 	{ "name": "A_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_4", "role": "q0" }} , 
 	{ "name": "A_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_5", "role": "address0" }} , 
 	{ "name": "A_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_5", "role": "ce0" }} , 
 	{ "name": "A_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_5", "role": "q0" }} , 
 	{ "name": "A_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_6", "role": "address0" }} , 
 	{ "name": "A_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_6", "role": "ce0" }} , 
 	{ "name": "A_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_6", "role": "q0" }} , 
 	{ "name": "A_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_7", "role": "address0" }} , 
 	{ "name": "A_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_7", "role": "ce0" }} , 
 	{ "name": "A_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_7", "role": "q0" }} , 
 	{ "name": "B_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_0", "role": "address0" }} , 
 	{ "name": "B_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_0", "role": "ce0" }} , 
 	{ "name": "B_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_0", "role": "q0" }} , 
 	{ "name": "B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_1", "role": "address0" }} , 
 	{ "name": "B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_1", "role": "ce0" }} , 
 	{ "name": "B_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_1", "role": "q0" }} , 
 	{ "name": "B_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_2", "role": "address0" }} , 
 	{ "name": "B_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_2", "role": "ce0" }} , 
 	{ "name": "B_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_2", "role": "q0" }} , 
 	{ "name": "B_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_3", "role": "address0" }} , 
 	{ "name": "B_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_3", "role": "ce0" }} , 
 	{ "name": "B_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_3", "role": "q0" }} , 
 	{ "name": "B_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_4", "role": "address0" }} , 
 	{ "name": "B_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_4", "role": "ce0" }} , 
 	{ "name": "B_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_4", "role": "q0" }} , 
 	{ "name": "B_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_5", "role": "address0" }} , 
 	{ "name": "B_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_5", "role": "ce0" }} , 
 	{ "name": "B_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_5", "role": "q0" }} , 
 	{ "name": "B_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_6", "role": "address0" }} , 
 	{ "name": "B_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_6", "role": "ce0" }} , 
 	{ "name": "B_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_6", "role": "q0" }} , 
 	{ "name": "B_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_7", "role": "address0" }} , 
 	{ "name": "B_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_7", "role": "ce0" }} , 
 	{ "name": "B_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "B_7", "role": "q0" }} , 
 	{ "name": "C_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_0", "role": "address0" }} , 
 	{ "name": "C_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_0", "role": "ce0" }} , 
 	{ "name": "C_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_0", "role": "we0" }} , 
 	{ "name": "C_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_0", "role": "d0" }} , 
 	{ "name": "C_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_1", "role": "address0" }} , 
 	{ "name": "C_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "ce0" }} , 
 	{ "name": "C_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "we0" }} , 
 	{ "name": "C_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_1", "role": "d0" }} , 
 	{ "name": "C_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_2", "role": "address0" }} , 
 	{ "name": "C_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "ce0" }} , 
 	{ "name": "C_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "we0" }} , 
 	{ "name": "C_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_2", "role": "d0" }} , 
 	{ "name": "C_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_3", "role": "address0" }} , 
 	{ "name": "C_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "ce0" }} , 
 	{ "name": "C_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "we0" }} , 
 	{ "name": "C_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_3", "role": "d0" }} , 
 	{ "name": "C_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_4", "role": "address0" }} , 
 	{ "name": "C_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_4", "role": "ce0" }} , 
 	{ "name": "C_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_4", "role": "we0" }} , 
 	{ "name": "C_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_4", "role": "d0" }} , 
 	{ "name": "C_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_5", "role": "address0" }} , 
 	{ "name": "C_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_5", "role": "ce0" }} , 
 	{ "name": "C_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_5", "role": "we0" }} , 
 	{ "name": "C_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_5", "role": "d0" }} , 
 	{ "name": "C_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_6", "role": "address0" }} , 
 	{ "name": "C_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_6", "role": "ce0" }} , 
 	{ "name": "C_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_6", "role": "we0" }} , 
 	{ "name": "C_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_6", "role": "d0" }} , 
 	{ "name": "C_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_7", "role": "address0" }} , 
 	{ "name": "C_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_7", "role": "ce0" }} , 
 	{ "name": "C_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_7", "role": "we0" }} , 
 	{ "name": "C_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_7", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_dadd_64jbC_U65", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_dmul_64fYi_U66", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_dmul_64fYi_U67", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_sitodp_hbi_U68", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_sitodp_hbi_U69", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_mux_832ibs_U70", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_Accel_mux_832ibs_U71", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		C_7 {Type O LastRead -1 FirstWrite 22}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "403521", "Max" : "403521"}
	, {"Name" : "Interval", "Min" : "403521", "Max" : "403521"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_0 { ap_memory {  { A_0_address0 mem_address 1 12 }  { A_0_ce0 mem_ce 1 1 }  { A_0_q0 mem_dout 0 16 } } }
	A_1 { ap_memory {  { A_1_address0 mem_address 1 12 }  { A_1_ce0 mem_ce 1 1 }  { A_1_q0 mem_dout 0 16 } } }
	A_2 { ap_memory {  { A_2_address0 mem_address 1 12 }  { A_2_ce0 mem_ce 1 1 }  { A_2_q0 mem_dout 0 16 } } }
	A_3 { ap_memory {  { A_3_address0 mem_address 1 12 }  { A_3_ce0 mem_ce 1 1 }  { A_3_q0 mem_dout 0 16 } } }
	A_4 { ap_memory {  { A_4_address0 mem_address 1 12 }  { A_4_ce0 mem_ce 1 1 }  { A_4_q0 mem_dout 0 16 } } }
	A_5 { ap_memory {  { A_5_address0 mem_address 1 12 }  { A_5_ce0 mem_ce 1 1 }  { A_5_q0 mem_dout 0 16 } } }
	A_6 { ap_memory {  { A_6_address0 mem_address 1 12 }  { A_6_ce0 mem_ce 1 1 }  { A_6_q0 mem_dout 0 16 } } }
	A_7 { ap_memory {  { A_7_address0 mem_address 1 12 }  { A_7_ce0 mem_ce 1 1 }  { A_7_q0 mem_dout 0 16 } } }
	B_0 { ap_memory {  { B_0_address0 mem_address 1 12 }  { B_0_ce0 mem_ce 1 1 }  { B_0_q0 mem_dout 0 16 } } }
	B_1 { ap_memory {  { B_1_address0 mem_address 1 12 }  { B_1_ce0 mem_ce 1 1 }  { B_1_q0 mem_dout 0 16 } } }
	B_2 { ap_memory {  { B_2_address0 mem_address 1 12 }  { B_2_ce0 mem_ce 1 1 }  { B_2_q0 mem_dout 0 16 } } }
	B_3 { ap_memory {  { B_3_address0 mem_address 1 12 }  { B_3_ce0 mem_ce 1 1 }  { B_3_q0 mem_dout 0 16 } } }
	B_4 { ap_memory {  { B_4_address0 mem_address 1 12 }  { B_4_ce0 mem_ce 1 1 }  { B_4_q0 mem_dout 0 16 } } }
	B_5 { ap_memory {  { B_5_address0 mem_address 1 12 }  { B_5_ce0 mem_ce 1 1 }  { B_5_q0 mem_dout 0 16 } } }
	B_6 { ap_memory {  { B_6_address0 mem_address 1 12 }  { B_6_ce0 mem_ce 1 1 }  { B_6_q0 mem_dout 0 16 } } }
	B_7 { ap_memory {  { B_7_address0 mem_address 1 12 }  { B_7_ce0 mem_ce 1 1 }  { B_7_q0 mem_dout 0 16 } } }
	C_0 { ap_memory {  { C_0_address0 mem_address 1 12 }  { C_0_ce0 mem_ce 1 1 }  { C_0_we0 mem_we 1 1 }  { C_0_d0 mem_din 1 16 } } }
	C_1 { ap_memory {  { C_1_address0 mem_address 1 12 }  { C_1_ce0 mem_ce 1 1 }  { C_1_we0 mem_we 1 1 }  { C_1_d0 mem_din 1 16 } } }
	C_2 { ap_memory {  { C_2_address0 mem_address 1 12 }  { C_2_ce0 mem_ce 1 1 }  { C_2_we0 mem_we 1 1 }  { C_2_d0 mem_din 1 16 } } }
	C_3 { ap_memory {  { C_3_address0 mem_address 1 12 }  { C_3_ce0 mem_ce 1 1 }  { C_3_we0 mem_we 1 1 }  { C_3_d0 mem_din 1 16 } } }
	C_4 { ap_memory {  { C_4_address0 mem_address 1 12 }  { C_4_ce0 mem_ce 1 1 }  { C_4_we0 mem_we 1 1 }  { C_4_d0 mem_din 1 16 } } }
	C_5 { ap_memory {  { C_5_address0 mem_address 1 12 }  { C_5_ce0 mem_ce 1 1 }  { C_5_we0 mem_we 1 1 }  { C_5_d0 mem_din 1 16 } } }
	C_6 { ap_memory {  { C_6_address0 mem_address 1 12 }  { C_6_ce0 mem_ce 1 1 }  { C_6_we0 mem_we 1 1 }  { C_6_d0 mem_din 1 16 } } }
	C_7 { ap_memory {  { C_7_address0 mem_address 1 12 }  { C_7_ce0 mem_ce 1 1 }  { C_7_we0 mem_we 1 1 }  { C_7_d0 mem_din 1 16 } } }
}
