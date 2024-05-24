set moduleName make_fg_step_1
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
set C_modelName {make_fg_step.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ vla18 int 32 regular {array 7168 { 2 2 } 1 1 }  }
	{ data int 64 regular  }
	{ logn int 32 regular  }
	{ depth int 4 regular  }
	{ in_ntt int 1 regular  }
	{ out_ntt int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vla18", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "logn", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "depth", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_ntt", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_ntt", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vla18_address0 sc_out sc_lv 13 signal 0 } 
	{ vla18_ce0 sc_out sc_logic 1 signal 0 } 
	{ vla18_we0 sc_out sc_lv 4 signal 0 } 
	{ vla18_d0 sc_out sc_lv 32 signal 0 } 
	{ vla18_q0 sc_in sc_lv 32 signal 0 } 
	{ vla18_address1 sc_out sc_lv 13 signal 0 } 
	{ vla18_ce1 sc_out sc_logic 1 signal 0 } 
	{ vla18_we1 sc_out sc_lv 4 signal 0 } 
	{ vla18_d1 sc_out sc_lv 32 signal 0 } 
	{ vla18_q1 sc_in sc_lv 32 signal 0 } 
	{ data sc_in sc_lv 64 signal 1 } 
	{ logn sc_in sc_lv 32 signal 2 } 
	{ depth sc_in sc_lv 4 signal 3 } 
	{ in_ntt sc_in sc_lv 1 signal 4 } 
	{ out_ntt sc_in sc_lv 1 signal 5 } 
	{ grp_modp_montymul_fu_255_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_modp_montymul_fu_255_p_din2 sc_out sc_lv 32 signal -1 } 
	{ grp_modp_montymul_fu_255_p_din3 sc_out sc_lv 32 signal -1 } 
	{ grp_modp_montymul_fu_255_p_din4 sc_out sc_lv 32 signal -1 } 
	{ grp_modp_montymul_fu_255_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_modp_montymul_fu_255_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_modp_montymul_fu_265_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_modp_montymul_fu_265_p_din2 sc_out sc_lv 32 signal -1 } 
	{ grp_modp_montymul_fu_265_p_din3 sc_out sc_lv 32 signal -1 } 
	{ grp_modp_montymul_fu_265_p_din4 sc_out sc_lv 32 signal -1 } 
	{ grp_modp_montymul_fu_265_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_modp_montymul_fu_265_p_ready sc_in sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vla18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "vla18", "role": "address0" }} , 
 	{ "name": "vla18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vla18", "role": "ce0" }} , 
 	{ "name": "vla18_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vla18", "role": "we0" }} , 
 	{ "name": "vla18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vla18", "role": "d0" }} , 
 	{ "name": "vla18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vla18", "role": "q0" }} , 
 	{ "name": "vla18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "vla18", "role": "address1" }} , 
 	{ "name": "vla18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vla18", "role": "ce1" }} , 
 	{ "name": "vla18_we1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vla18", "role": "we1" }} , 
 	{ "name": "vla18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vla18", "role": "d1" }} , 
 	{ "name": "vla18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vla18", "role": "q1" }} , 
 	{ "name": "data", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data", "role": "default" }} , 
 	{ "name": "logn", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logn", "role": "default" }} , 
 	{ "name": "depth", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "depth", "role": "default" }} , 
 	{ "name": "in_ntt", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_ntt", "role": "default" }} , 
 	{ "name": "out_ntt", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_ntt", "role": "default" }} , 
 	{ "name": "grp_modp_montymul_fu_255_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_modp_montymul_fu_255_p_din1", "role": "default" }} , 
 	{ "name": "grp_modp_montymul_fu_255_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_modp_montymul_fu_255_p_din2", "role": "default" }} , 
 	{ "name": "grp_modp_montymul_fu_255_p_din3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_modp_montymul_fu_255_p_din3", "role": "default" }} , 
 	{ "name": "grp_modp_montymul_fu_255_p_din4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_modp_montymul_fu_255_p_din4", "role": "default" }} , 
 	{ "name": "grp_modp_montymul_fu_255_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_modp_montymul_fu_255_p_dout0", "role": "default" }} , 
 	{ "name": "grp_modp_montymul_fu_255_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_modp_montymul_fu_255_p_ready", "role": "default" }} , 
 	{ "name": "grp_modp_montymul_fu_265_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_modp_montymul_fu_265_p_din1", "role": "default" }} , 
 	{ "name": "grp_modp_montymul_fu_265_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_modp_montymul_fu_265_p_din2", "role": "default" }} , 
 	{ "name": "grp_modp_montymul_fu_265_p_din3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_modp_montymul_fu_265_p_din3", "role": "default" }} , 
 	{ "name": "grp_modp_montymul_fu_265_p_din4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_modp_montymul_fu_265_p_din4", "role": "default" }} , 
 	{ "name": "grp_modp_montymul_fu_265_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_modp_montymul_fu_265_p_dout0", "role": "default" }} , 
 	{ "name": "grp_modp_montymul_fu_265_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_modp_montymul_fu_265_p_ready", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "25", "35", "42", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67"],
		"CDFG" : "make_fg_step_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_modp_mkgm2_1_fu_826", "Port" : "vla18", "Inst_start_state" : "40", "Inst_end_state" : "41"},
					{"ID" : "4", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_780", "Port" : "vla18", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "35", "SubInstance" : "grp_modp_NTT2_ext_1_fu_841", "Port" : "vla18", "Inst_start_state" : "50", "Inst_end_state" : "54"},
					{"ID" : "42", "SubInstance" : "grp_modp_iNTT2_ext_1_fu_854", "Port" : "vla18", "Inst_start_state" : "59", "Inst_end_state" : "60"}]},
			{"Name" : "data", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "depth", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_ntt", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_ntt", "Type" : "None", "Direction" : "I"},
			{"Name" : "MAX_BL_SMALL", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_780", "Port" : "PRIMES_p", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_modp_mkgm2_1_fu_826", "Port" : "REV10", "Inst_start_state" : "40", "Inst_end_state" : "41"}]},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_780", "Port" : "PRIMES_s", "Inst_start_state" : "31", "Inst_end_state" : "32"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3", "ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2880_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2886_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state18"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2898_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state18"], "PostState" : ["ap_ST_fsm_state21"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2904_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state22", "LastState" : ["ap_ST_fsm_state24"], "QuitState" : ["ap_ST_fsm_state22"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "make_fg_step_loop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state29"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state30"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_779_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state38", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state38"], "PreState" : ["ap_ST_fsm_state37"], "PostState" : ["ap_ST_fsm_state40"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1520_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state43", "LastState" : ["ap_ST_fsm_state44"], "QuitState" : ["ap_ST_fsm_state44"], "PreState" : ["ap_ST_fsm_state42"], "PostState" : ["ap_ST_fsm_state45"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2943_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state42", "LastState" : ["ap_ST_fsm_state45"], "QuitState" : ["ap_ST_fsm_state42"], "PreState" : ["ap_ST_fsm_state41"], "PostState" : ["ap_ST_fsm_state46"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2947_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state47", "LastState" : ["ap_ST_fsm_state49"], "QuitState" : ["ap_ST_fsm_state47"], "PreState" : ["ap_ST_fsm_state46"], "PostState" : ["ap_ST_fsm_state50"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1520_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state51", "LastState" : ["ap_ST_fsm_state52"], "QuitState" : ["ap_ST_fsm_state52"], "PreState" : ["ap_ST_fsm_state50"], "PostState" : ["ap_ST_fsm_state53"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2956_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state50", "LastState" : ["ap_ST_fsm_state53"], "QuitState" : ["ap_ST_fsm_state50"], "PreState" : ["ap_ST_fsm_state47"], "PostState" : ["ap_ST_fsm_state54"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2961_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state55", "LastState" : ["ap_ST_fsm_state57"], "QuitState" : ["ap_ST_fsm_state55"], "PreState" : ["ap_ST_fsm_state54"], "PostState" : ["ap_ST_fsm_state58", "ap_ST_fsm_state60"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "make_fg_step_loop2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state33", "LastState" : ["ap_ST_fsm_state60"], "QuitState" : ["ap_ST_fsm_state33"], "PreState" : ["ap_ST_fsm_state32"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MAX_BL_SMALL_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PRIMES_p_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PRIMES_g_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780", "Parent" : "0", "Child" : ["5", "6", "7", "11", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
		"CDFG" : "zint_rebuild_CRT_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "xx", "Type" : "None", "Direction" : "I"},
			{"Name" : "xlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "xstride", "Type" : "None", "Direction" : "I"},
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "normalize_signed", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1520_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1560_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1665_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1487_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "zint_rebuild_CRTloop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1591_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state16", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state15"], "PostState" : ["ap_ST_fsm_state18"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1465_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state18", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state18"], "PreState" : ["ap_ST_fsm_state17"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1693_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.PRIMES_p_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.PRIMES_s_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442", "Parent" : "4", "Child" : ["8", "9", "10"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442.mul_32ns_32ns_63_1_1_U169", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442.mul_31s_31s_31_1_1_U170", "Parent" : "7"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442.mul_31ns_32ns_62_1_1_U171", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450", "Parent" : "4", "Child" : ["12", "13", "14"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450.mul_32ns_32ns_63_1_1_U169", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450.mul_31s_31s_31_1_1_U170", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450.mul_31ns_32ns_62_1_1_U171", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.mul_25s_24ns_31_1_1_U248", "Parent" : "4"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.mul_31s_24ns_31_1_1_U249", "Parent" : "4"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.mul_25s_31s_31_1_1_U250", "Parent" : "4"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.mul_31s_31s_31_1_1_U251", "Parent" : "4"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.mul_25s_31s_31_1_1_U252", "Parent" : "4"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.mul_31s_31s_31_1_1_U253", "Parent" : "4"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.mul_25s_31s_31_1_1_U254", "Parent" : "4"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.mul_31s_31s_31_1_1_U255", "Parent" : "4"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.mul_32ns_32ns_63_1_1_U256", "Parent" : "4"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_780.mul_32ns_31ns_63_1_1_U257", "Parent" : "4"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_826", "Parent" : "0", "Child" : ["26", "27", "31"],
		"CDFG" : "modp_mkgm2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gm", "Type" : "None", "Direction" : "I"},
			{"Name" : "igm", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "g", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_954_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_808_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_962_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_826.REV10_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184", "Parent" : "25", "Child" : ["28", "29", "30"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184.mul_32ns_32ns_63_1_1_U169", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184.mul_31s_31s_31_1_1_U170", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184.mul_31ns_32ns_62_1_1_U171", "Parent" : "27"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192", "Parent" : "25", "Child" : ["32", "33", "34"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192.mul_32ns_32ns_63_1_1_U169", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192.mul_31s_31s_31_1_1_U170", "Parent" : "31"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192.mul_31ns_32ns_62_1_1_U171", "Parent" : "31"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_841", "Parent" : "0", "Child" : ["36", "40", "41"],
		"CDFG" : "modp_NTT2_ext_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "gm", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1244_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1236_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1231_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200", "Parent" : "35", "Child" : ["37", "38", "39"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "36"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "36"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_841.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "35"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_841.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "35"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_854", "Parent" : "0", "Child" : ["43", "44", "45", "46", "47", "48", "49", "50"],
		"CDFG" : "modp_iNTT2_ext_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "igm", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "iNTT_loop3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "iNTT_loop2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "iNTT_loop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1373_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_854.mul_32ns_32ns_63_1_1_U197", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_854.mul_31s_31s_31_1_1_U198", "Parent" : "42"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_854.mul_31ns_31ns_62_1_1_U199", "Parent" : "42"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_854.mul_32ns_32ns_63_1_1_U200", "Parent" : "42"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_854.mul_31s_31s_31_1_1_U201", "Parent" : "42"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_854.mul_31ns_31ns_62_1_1_U202", "Parent" : "42"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_854.mul_mul_13s_9ns_13_4_1_U203", "Parent" : "42"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_854.mul_mul_13s_9ns_13_4_1_U204", "Parent" : "42"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_61s_61_1_1_U289", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_24ns_31_1_1_U290", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_24ns_31_1_1_U291", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U292", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U293", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U294", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U295", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U296", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U297", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_24ns_31_1_1_U298", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_24ns_31_1_1_U299", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U300", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U301", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U302", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U303", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U304", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U305", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	make_fg_step_1 {
		vla18 {Type IO LastRead 22 FirstWrite 0}
		data {Type I LastRead 1 FirstWrite -1}
		logn {Type I LastRead 1 FirstWrite -1}
		depth {Type I LastRead 0 FirstWrite -1}
		in_ntt {Type I LastRead 1 FirstWrite -1}
		out_ntt {Type I LastRead 1 FirstWrite -1}
		MAX_BL_SMALL {Type I LastRead -1 FirstWrite -1}
		PRIMES_p {Type I LastRead -1 FirstWrite -1}
		PRIMES_g {Type I LastRead -1 FirstWrite -1}
		REV10 {Type I LastRead -1 FirstWrite -1}
		PRIMES_s {Type I LastRead -1 FirstWrite -1}}
	zint_rebuild_CRT_1 {
		vla18 {Type IO LastRead 11 FirstWrite 0}
		xx {Type I LastRead 0 FirstWrite -1}
		xlen {Type I LastRead 0 FirstWrite -1}
		xstride {Type I LastRead 0 FirstWrite -1}
		num {Type I LastRead 0 FirstWrite -1}
		normalize_signed {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		PRIMES_p {Type I LastRead -1 FirstWrite -1}
		PRIMES_s {Type I LastRead -1 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_mkgm2_1 {
		vla18 {Type O LastRead -1 FirstWrite 7}
		gm {Type I LastRead 3 FirstWrite -1}
		igm {Type I LastRead 3 FirstWrite -1}
		logn {Type I LastRead 3 FirstWrite -1}
		g {Type I LastRead 3 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 1 FirstWrite -1}
		REV10 {Type I LastRead -1 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_NTT2_ext_1 {
		vla18 {Type IO LastRead 7 FirstWrite 7}
		a {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		gm {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_iNTT2_ext_1 {
		vla18 {Type IO LastRead 7 FirstWrite 3}
		a {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		igm {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vla18 { ap_memory {  { vla18_address0 mem_address 1 13 }  { vla18_ce0 mem_ce 1 1 }  { vla18_we0 mem_we 1 4 }  { vla18_d0 mem_din 1 32 }  { vla18_q0 in_data 0 32 }  { vla18_address1 MemPortADDR2 1 13 }  { vla18_ce1 MemPortCE2 1 1 }  { vla18_we1 MemPortWE2 1 4 }  { vla18_d1 MemPortDIN2 1 32 }  { vla18_q1 in_data 0 32 } } }
	data { ap_none {  { data in_data 0 64 } } }
	logn { ap_none {  { logn in_data 0 32 } } }
	depth { ap_none {  { depth in_data 0 4 } } }
	in_ntt { ap_none {  { in_ntt in_data 0 1 } } }
	out_ntt { ap_none {  { out_ntt in_data 0 1 } } }
}
