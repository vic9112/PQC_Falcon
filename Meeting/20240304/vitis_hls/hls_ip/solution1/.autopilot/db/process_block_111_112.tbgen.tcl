set moduleName process_block_111_112
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {process_block.111.112}
set C_modelType { int 1600 }
set C_modelArgList {
	{ state_0_read int 64 regular  }
	{ state_1_read int 64 regular  }
	{ state_2_read int 64 regular  }
	{ state_3_read int 64 regular  }
	{ state_4_read int 64 regular  }
	{ state_5_read int 64 regular  }
	{ state_6_read int 64 regular  }
	{ state_7_read int 64 regular  }
	{ state_8_read int 64 regular  }
	{ state_9_read int 64 regular  }
	{ state_10_read int 64 regular  }
	{ state_11_read int 64 regular  }
	{ state_1213_read int 64 regular  }
	{ state_13_read int 64 regular  }
	{ state_14_read int 64 regular  }
	{ state_15_read int 64 regular  }
	{ state_16_read int 64 regular  }
	{ state_17_read int 64 regular  }
	{ state_18_read int 64 regular  }
	{ state_19_read int 64 regular  }
	{ state_20_read int 64 regular  }
	{ state_21_read int 64 regular  }
	{ state_22_read int 64 regular  }
	{ state_2325_read int 64 regular  }
	{ state_24_read int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state_0_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_1_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_2_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_3_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_4_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_5_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_6_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_7_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_8_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_9_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_10_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_11_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_1213_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_13_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_14_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_15_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_16_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_17_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_18_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_19_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_20_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_21_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_22_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_2325_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "state_24_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1600} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_0_read sc_in sc_lv 64 signal 0 } 
	{ state_1_read sc_in sc_lv 64 signal 1 } 
	{ state_2_read sc_in sc_lv 64 signal 2 } 
	{ state_3_read sc_in sc_lv 64 signal 3 } 
	{ state_4_read sc_in sc_lv 64 signal 4 } 
	{ state_5_read sc_in sc_lv 64 signal 5 } 
	{ state_6_read sc_in sc_lv 64 signal 6 } 
	{ state_7_read sc_in sc_lv 64 signal 7 } 
	{ state_8_read sc_in sc_lv 64 signal 8 } 
	{ state_9_read sc_in sc_lv 64 signal 9 } 
	{ state_10_read sc_in sc_lv 64 signal 10 } 
	{ state_11_read sc_in sc_lv 64 signal 11 } 
	{ state_1213_read sc_in sc_lv 64 signal 12 } 
	{ state_13_read sc_in sc_lv 64 signal 13 } 
	{ state_14_read sc_in sc_lv 64 signal 14 } 
	{ state_15_read sc_in sc_lv 64 signal 15 } 
	{ state_16_read sc_in sc_lv 64 signal 16 } 
	{ state_17_read sc_in sc_lv 64 signal 17 } 
	{ state_18_read sc_in sc_lv 64 signal 18 } 
	{ state_19_read sc_in sc_lv 64 signal 19 } 
	{ state_20_read sc_in sc_lv 64 signal 20 } 
	{ state_21_read sc_in sc_lv 64 signal 21 } 
	{ state_22_read sc_in sc_lv 64 signal 22 } 
	{ state_2325_read sc_in sc_lv 64 signal 23 } 
	{ state_24_read sc_in sc_lv 64 signal 24 } 
	{ ap_return_0 sc_out sc_lv 64 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
	{ ap_return_2 sc_out sc_lv 64 signal -1 } 
	{ ap_return_3 sc_out sc_lv 64 signal -1 } 
	{ ap_return_4 sc_out sc_lv 64 signal -1 } 
	{ ap_return_5 sc_out sc_lv 64 signal -1 } 
	{ ap_return_6 sc_out sc_lv 64 signal -1 } 
	{ ap_return_7 sc_out sc_lv 64 signal -1 } 
	{ ap_return_8 sc_out sc_lv 64 signal -1 } 
	{ ap_return_9 sc_out sc_lv 64 signal -1 } 
	{ ap_return_10 sc_out sc_lv 64 signal -1 } 
	{ ap_return_11 sc_out sc_lv 64 signal -1 } 
	{ ap_return_12 sc_out sc_lv 64 signal -1 } 
	{ ap_return_13 sc_out sc_lv 64 signal -1 } 
	{ ap_return_14 sc_out sc_lv 64 signal -1 } 
	{ ap_return_15 sc_out sc_lv 64 signal -1 } 
	{ ap_return_16 sc_out sc_lv 64 signal -1 } 
	{ ap_return_17 sc_out sc_lv 64 signal -1 } 
	{ ap_return_18 sc_out sc_lv 64 signal -1 } 
	{ ap_return_19 sc_out sc_lv 64 signal -1 } 
	{ ap_return_20 sc_out sc_lv 64 signal -1 } 
	{ ap_return_21 sc_out sc_lv 64 signal -1 } 
	{ ap_return_22 sc_out sc_lv 64 signal -1 } 
	{ ap_return_23 sc_out sc_lv 64 signal -1 } 
	{ ap_return_24 sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_0_read", "role": "default" }} , 
 	{ "name": "state_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_1_read", "role": "default" }} , 
 	{ "name": "state_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_2_read", "role": "default" }} , 
 	{ "name": "state_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_3_read", "role": "default" }} , 
 	{ "name": "state_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_4_read", "role": "default" }} , 
 	{ "name": "state_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_5_read", "role": "default" }} , 
 	{ "name": "state_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_6_read", "role": "default" }} , 
 	{ "name": "state_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_7_read", "role": "default" }} , 
 	{ "name": "state_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_8_read", "role": "default" }} , 
 	{ "name": "state_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_9_read", "role": "default" }} , 
 	{ "name": "state_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_10_read", "role": "default" }} , 
 	{ "name": "state_11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_11_read", "role": "default" }} , 
 	{ "name": "state_1213_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_1213_read", "role": "default" }} , 
 	{ "name": "state_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_13_read", "role": "default" }} , 
 	{ "name": "state_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_14_read", "role": "default" }} , 
 	{ "name": "state_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_15_read", "role": "default" }} , 
 	{ "name": "state_16_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_16_read", "role": "default" }} , 
 	{ "name": "state_17_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_17_read", "role": "default" }} , 
 	{ "name": "state_18_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_18_read", "role": "default" }} , 
 	{ "name": "state_19_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_19_read", "role": "default" }} , 
 	{ "name": "state_20_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_20_read", "role": "default" }} , 
 	{ "name": "state_21_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_21_read", "role": "default" }} , 
 	{ "name": "state_22_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_22_read", "role": "default" }} , 
 	{ "name": "state_2325_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_2325_read", "role": "default" }} , 
 	{ "name": "state_24_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_24_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "process_block_111_112",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1213_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_16_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_17_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_18_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_19_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_20_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_21_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_22_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2325_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_24_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "RC", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.RC_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_block_111_112 {
		state_0_read {Type I LastRead 0 FirstWrite -1}
		state_1_read {Type I LastRead 0 FirstWrite -1}
		state_2_read {Type I LastRead 0 FirstWrite -1}
		state_3_read {Type I LastRead 0 FirstWrite -1}
		state_4_read {Type I LastRead 0 FirstWrite -1}
		state_5_read {Type I LastRead 0 FirstWrite -1}
		state_6_read {Type I LastRead 0 FirstWrite -1}
		state_7_read {Type I LastRead 0 FirstWrite -1}
		state_8_read {Type I LastRead 0 FirstWrite -1}
		state_9_read {Type I LastRead 0 FirstWrite -1}
		state_10_read {Type I LastRead 0 FirstWrite -1}
		state_11_read {Type I LastRead 0 FirstWrite -1}
		state_1213_read {Type I LastRead 0 FirstWrite -1}
		state_13_read {Type I LastRead 0 FirstWrite -1}
		state_14_read {Type I LastRead 0 FirstWrite -1}
		state_15_read {Type I LastRead 0 FirstWrite -1}
		state_16_read {Type I LastRead 0 FirstWrite -1}
		state_17_read {Type I LastRead 0 FirstWrite -1}
		state_18_read {Type I LastRead 0 FirstWrite -1}
		state_19_read {Type I LastRead 0 FirstWrite -1}
		state_20_read {Type I LastRead 0 FirstWrite -1}
		state_21_read {Type I LastRead 0 FirstWrite -1}
		state_22_read {Type I LastRead 0 FirstWrite -1}
		state_2325_read {Type I LastRead 0 FirstWrite -1}
		state_24_read {Type I LastRead 0 FirstWrite -1}
		RC {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49", "Max" : "49"}
	, {"Name" : "Interval", "Min" : "49", "Max" : "49"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state_0_read { ap_none {  { state_0_read in_data 0 64 } } }
	state_1_read { ap_none {  { state_1_read in_data 0 64 } } }
	state_2_read { ap_none {  { state_2_read in_data 0 64 } } }
	state_3_read { ap_none {  { state_3_read in_data 0 64 } } }
	state_4_read { ap_none {  { state_4_read in_data 0 64 } } }
	state_5_read { ap_none {  { state_5_read in_data 0 64 } } }
	state_6_read { ap_none {  { state_6_read in_data 0 64 } } }
	state_7_read { ap_none {  { state_7_read in_data 0 64 } } }
	state_8_read { ap_none {  { state_8_read in_data 0 64 } } }
	state_9_read { ap_none {  { state_9_read in_data 0 64 } } }
	state_10_read { ap_none {  { state_10_read in_data 0 64 } } }
	state_11_read { ap_none {  { state_11_read in_data 0 64 } } }
	state_1213_read { ap_none {  { state_1213_read in_data 0 64 } } }
	state_13_read { ap_none {  { state_13_read in_data 0 64 } } }
	state_14_read { ap_none {  { state_14_read in_data 0 64 } } }
	state_15_read { ap_none {  { state_15_read in_data 0 64 } } }
	state_16_read { ap_none {  { state_16_read in_data 0 64 } } }
	state_17_read { ap_none {  { state_17_read in_data 0 64 } } }
	state_18_read { ap_none {  { state_18_read in_data 0 64 } } }
	state_19_read { ap_none {  { state_19_read in_data 0 64 } } }
	state_20_read { ap_none {  { state_20_read in_data 0 64 } } }
	state_21_read { ap_none {  { state_21_read in_data 0 64 } } }
	state_22_read { ap_none {  { state_22_read in_data 0 64 } } }
	state_2325_read { ap_none {  { state_2325_read in_data 0 64 } } }
	state_24_read { ap_none {  { state_24_read in_data 0 64 } } }
}
