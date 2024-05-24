set moduleName zint_co_reduce_mod_1
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
set C_modelName {zint_co_reduce_mod.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ vla18 int 32 regular {array 7168 { 2 2 } 1 1 }  }
	{ a int 9 regular  }
	{ b int 13 regular  }
	{ m int 12 regular  }
	{ m0i int 31 regular  }
	{ xa int 64 regular  }
	{ xb int 64 regular  }
	{ ya int 64 regular  }
	{ yb int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vla18", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "a", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "m", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "m0i", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "xa", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "xb", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ya", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "yb", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
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
	{ a sc_in sc_lv 9 signal 1 } 
	{ b sc_in sc_lv 13 signal 2 } 
	{ m sc_in sc_lv 12 signal 3 } 
	{ m0i sc_in sc_lv 31 signal 4 } 
	{ xa sc_in sc_lv 64 signal 5 } 
	{ xb sc_in sc_lv 64 signal 6 } 
	{ ya sc_in sc_lv 64 signal 7 } 
	{ yb sc_in sc_lv 64 signal 8 } 
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
 	{ "name": "a", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "a", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "b", "role": "default" }} , 
 	{ "name": "m", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "m", "role": "default" }} , 
 	{ "name": "m0i", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "m0i", "role": "default" }} , 
 	{ "name": "xa", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xa", "role": "default" }} , 
 	{ "name": "xb", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xb", "role": "default" }} , 
 	{ "name": "ya", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ya", "role": "default" }} , 
 	{ "name": "yb", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "yb", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "zint_co_reduce_mod_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2515", "EstimateLatencyMax" : "2515",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "m0i", "Type" : "None", "Direction" : "I"},
			{"Name" : "xa", "Type" : "None", "Direction" : "I"},
			{"Name" : "xb", "Type" : "None", "Direction" : "I"},
			{"Name" : "ya", "Type" : "None", "Direction" : "I"},
			{"Name" : "yb", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1840_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1795_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1811_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1795_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state12", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state12"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1811_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state14", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state14"], "PreState" : ["ap_ST_fsm_state12"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U321", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U322", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U323", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U324", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U325", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U326", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_64s_64_1_1_U327", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_64s_64_1_1_U328", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_64s_64_1_1_U329", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_31ns_63_1_1_U330", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_64s_64_1_1_U331", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_31ns_63_1_1_U332", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	zint_co_reduce_mod_1 {
		vla18 {Type IO LastRead 8 FirstWrite 2}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 1 FirstWrite -1}
		m0i {Type I LastRead 1 FirstWrite -1}
		xa {Type I LastRead 1 FirstWrite -1}
		xb {Type I LastRead 1 FirstWrite -1}
		ya {Type I LastRead 1 FirstWrite -1}
		yb {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2515", "Max" : "2515"}
	, {"Name" : "Interval", "Min" : "2515", "Max" : "2515"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vla18 { ap_memory {  { vla18_address0 mem_address 1 13 }  { vla18_ce0 mem_ce 1 1 }  { vla18_we0 mem_we 1 4 }  { vla18_d0 mem_din 1 32 }  { vla18_q0 in_data 0 32 }  { vla18_address1 MemPortADDR2 1 13 }  { vla18_ce1 MemPortCE2 1 1 }  { vla18_we1 MemPortWE2 1 4 }  { vla18_d1 MemPortDIN2 1 32 }  { vla18_q1 in_data 0 32 } } }
	a { ap_none {  { a in_data 0 9 } } }
	b { ap_none {  { b in_data 0 13 } } }
	m { ap_none {  { m in_data 0 12 } } }
	m0i { ap_none {  { m0i in_data 0 31 } } }
	xa { ap_none {  { xa in_data 0 64 } } }
	xb { ap_none {  { xb in_data 0 64 } } }
	ya { ap_none {  { ya in_data 0 64 } } }
	yb { ap_none {  { yb in_data 0 64 } } }
}
