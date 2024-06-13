set moduleName paralleltostreamwithburst_Pipeline_VITIS_LOOP_128_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {paralleltostreamwithburst_Pipeline_VITIS_LOOP_128_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ final_m2s_len_4 int 32 regular  }
	{ count_1 int 32 regular  }
	{ even int 1 regular  }
	{ sub46 int 32 regular  }
	{ outbuf int 33 regular {fifo 1 volatile }  }
	{ in_memory_addr_0_idx int 61 regular  }
	{ in_memory int 64 regular  }
	{ gmem1 int 64 regular {axi_master 0}  }
	{ zext_ln91 int 6 regular  }
	{ zext_ln91_1 int 6 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "final_m2s_len_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "count_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "even", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub46", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "outbuf", "interface" : "fifo", "bitwidth" : 33, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_memory_addr_0_idx", "interface" : "wire", "bitwidth" : 61, "direction" : "READONLY"} , 
 	{ "Name" : "in_memory", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "m2sbuf","offset": { "type": "dynamic","port_name": "m2sbuf","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "zext_ln91", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln91_1", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 7 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 64 signal 7 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 8 signal 7 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 7 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 64 signal 7 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_gmem1_RFIFONUM sc_in sc_lv 11 signal 7 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 7 } 
	{ outbuf_din sc_out sc_lv 33 signal 4 } 
	{ outbuf_num_data_valid sc_in sc_lv 11 signal 4 } 
	{ outbuf_fifo_cap sc_in sc_lv 11 signal 4 } 
	{ outbuf_full_n sc_in sc_logic 1 signal 4 } 
	{ outbuf_write sc_out sc_logic 1 signal 4 } 
	{ final_m2s_len_4 sc_in sc_lv 32 signal 0 } 
	{ count_1 sc_in sc_lv 32 signal 1 } 
	{ even sc_in sc_lv 1 signal 2 } 
	{ sub46 sc_in sc_lv 32 signal 3 } 
	{ in_memory_addr_0_idx sc_in sc_lv 61 signal 5 } 
	{ in_memory sc_in sc_lv 64 signal 6 } 
	{ zext_ln91 sc_in sc_lv 6 signal 8 } 
	{ zext_ln91_1 sc_in sc_lv 6 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "outbuf_din", "direction": "out", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "outbuf", "role": "din" }} , 
 	{ "name": "outbuf_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "outbuf", "role": "num_data_valid" }} , 
 	{ "name": "outbuf_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "outbuf", "role": "fifo_cap" }} , 
 	{ "name": "outbuf_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outbuf", "role": "full_n" }} , 
 	{ "name": "outbuf_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outbuf", "role": "write" }} , 
 	{ "name": "final_m2s_len_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "final_m2s_len_4", "role": "default" }} , 
 	{ "name": "count_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "count_1", "role": "default" }} , 
 	{ "name": "even", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "even", "role": "default" }} , 
 	{ "name": "sub46", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub46", "role": "default" }} , 
 	{ "name": "in_memory_addr_0_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":61, "type": "signal", "bundle":{"name": "in_memory_addr_0_idx", "role": "default" }} , 
 	{ "name": "in_memory", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_memory", "role": "default" }} , 
 	{ "name": "zext_ln91", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln91", "role": "default" }} , 
 	{ "name": "zext_ln91_1", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln91_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "paralleltostreamwithburst_Pipeline_VITIS_LOOP_128_2",
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
			{"Name" : "final_m2s_len_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "even", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub46", "Type" : "None", "Direction" : "I"},
			{"Name" : "outbuf", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outbuf_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_memory_addr_0_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_memory", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln91", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln91_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	paralleltostreamwithburst_Pipeline_VITIS_LOOP_128_2 {
		final_m2s_len_4 {Type I LastRead 0 FirstWrite -1}
		count_1 {Type I LastRead 0 FirstWrite -1}
		even {Type I LastRead 0 FirstWrite -1}
		sub46 {Type I LastRead 0 FirstWrite -1}
		outbuf {Type O LastRead -1 FirstWrite 12}
		in_memory_addr_0_idx {Type I LastRead 0 FirstWrite -1}
		in_memory {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 10 FirstWrite -1}
		zext_ln91 {Type I LastRead 0 FirstWrite -1}
		zext_ln91_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	final_m2s_len_4 { ap_none {  { final_m2s_len_4 in_data 0 32 } } }
	count_1 { ap_none {  { count_1 in_data 0 32 } } }
	even { ap_none {  { even in_data 0 1 } } }
	sub46 { ap_none {  { sub46 in_data 0 32 } } }
	outbuf { ap_fifo {  { outbuf_din fifo_port_we 1 33 }  { outbuf_num_data_valid fifo_status_num_data_valid 0 11 }  { outbuf_fifo_cap fifo_update 0 11 }  { outbuf_full_n fifo_status 0 1 }  { outbuf_write fifo_data 1 1 } } }
	in_memory_addr_0_idx { ap_none {  { in_memory_addr_0_idx in_data 0 61 } } }
	in_memory { ap_none {  { in_memory in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 32 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 64 }  { m_axi_gmem1_WSTRB STRB 1 8 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 32 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 64 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RFIFONUM LEN 0 11 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	zext_ln91 { ap_none {  { zext_ln91 in_data 0 6 } } }
	zext_ln91_1 { ap_none {  { zext_ln91_1 in_data 0 6 } } }
}
