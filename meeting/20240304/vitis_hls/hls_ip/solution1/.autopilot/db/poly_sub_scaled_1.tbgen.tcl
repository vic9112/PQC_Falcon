set moduleName poly_sub_scaled_1
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
set C_modelName {poly_sub_scaled.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ vla18 int 32 regular {array 7168 { 1 2 } 1 1 }  }
	{ F int 64 regular  }
	{ Flen int 64 regular  }
	{ Fstride int 9 regular  }
	{ f_r int 15 regular  }
	{ flen_r int 8 regular  }
	{ fstride_r int 8 regular  }
	{ k int 15 regular  }
	{ sch int 28 regular  }
	{ scl int 6 regular  }
	{ logn int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vla18", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "F", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Flen", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Fstride", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "f_r", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "flen_r", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "fstride_r", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "sch", "interface" : "wire", "bitwidth" : 28, "direction" : "READONLY"} , 
 	{ "Name" : "scl", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "logn", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
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
	{ vla18_q0 sc_in sc_lv 32 signal 0 } 
	{ vla18_address1 sc_out sc_lv 13 signal 0 } 
	{ vla18_ce1 sc_out sc_logic 1 signal 0 } 
	{ vla18_we1 sc_out sc_lv 4 signal 0 } 
	{ vla18_d1 sc_out sc_lv 32 signal 0 } 
	{ vla18_q1 sc_in sc_lv 32 signal 0 } 
	{ F sc_in sc_lv 64 signal 1 } 
	{ Flen sc_in sc_lv 64 signal 2 } 
	{ Fstride sc_in sc_lv 9 signal 3 } 
	{ f_r sc_in sc_lv 15 signal 4 } 
	{ flen_r sc_in sc_lv 8 signal 5 } 
	{ fstride_r sc_in sc_lv 8 signal 6 } 
	{ k sc_in sc_lv 15 signal 7 } 
	{ sch sc_in sc_lv 28 signal 8 } 
	{ scl sc_in sc_lv 6 signal 9 } 
	{ logn sc_in sc_lv 32 signal 10 } 
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
 	{ "name": "vla18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vla18", "role": "q0" }} , 
 	{ "name": "vla18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "vla18", "role": "address1" }} , 
 	{ "name": "vla18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vla18", "role": "ce1" }} , 
 	{ "name": "vla18_we1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vla18", "role": "we1" }} , 
 	{ "name": "vla18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vla18", "role": "d1" }} , 
 	{ "name": "vla18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vla18", "role": "q1" }} , 
 	{ "name": "F", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "F", "role": "default" }} , 
 	{ "name": "Flen", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Flen", "role": "default" }} , 
 	{ "name": "Fstride", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "Fstride", "role": "default" }} , 
 	{ "name": "f_r", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "f_r", "role": "default" }} , 
 	{ "name": "flen_r", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "flen_r", "role": "default" }} , 
 	{ "name": "fstride_r", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fstride_r", "role": "default" }} , 
 	{ "name": "k", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "k", "role": "default" }} , 
 	{ "name": "sch", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "sch", "role": "default" }} , 
 	{ "name": "scl", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "scl", "role": "default" }} , 
 	{ "name": "logn", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logn", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "poly_sub_scaled_1",
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
			{"Name" : "F", "Type" : "None", "Direction" : "I"},
			{"Name" : "Flen", "Type" : "None", "Direction" : "I"},
			{"Name" : "Fstride", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "flen_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "fstride_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "sch", "Type" : "None", "Direction" : "I"},
			{"Name" : "scl", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2225_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2427_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2415_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_63_1_1_U365", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	poly_sub_scaled_1 {
		vla18 {Type IO LastRead 6 FirstWrite 6}
		F {Type I LastRead 0 FirstWrite -1}
		Flen {Type I LastRead 0 FirstWrite -1}
		Fstride {Type I LastRead 0 FirstWrite -1}
		f_r {Type I LastRead 0 FirstWrite -1}
		flen_r {Type I LastRead 0 FirstWrite -1}
		fstride_r {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		sch {Type I LastRead 0 FirstWrite -1}
		scl {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vla18 { ap_memory {  { vla18_address0 mem_address 1 13 }  { vla18_ce0 mem_ce 1 1 }  { vla18_q0 in_data 0 32 }  { vla18_address1 MemPortADDR2 1 13 }  { vla18_ce1 MemPortCE2 1 1 }  { vla18_we1 MemPortWE2 1 4 }  { vla18_d1 MemPortDIN2 1 32 }  { vla18_q1 in_data 0 32 } } }
	F { ap_none {  { F in_data 0 64 } } }
	Flen { ap_none {  { Flen in_data 0 64 } } }
	Fstride { ap_none {  { Fstride in_data 0 9 } } }
	f_r { ap_none {  { f_r in_data 0 15 } } }
	flen_r { ap_none {  { flen_r in_data 0 8 } } }
	fstride_r { ap_none {  { fstride_r in_data 0 8 } } }
	k { ap_none {  { k in_data 0 15 } } }
	sch { ap_none {  { sch in_data 0 28 } } }
	scl { ap_none {  { scl in_data 0 6 } } }
	logn { ap_none {  { logn in_data 0 32 } } }
}
