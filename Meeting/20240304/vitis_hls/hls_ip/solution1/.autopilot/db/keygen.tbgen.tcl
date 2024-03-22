set moduleName keygen
set isTopModule 1
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
set C_modelName {keygen}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 16 regular {axi_master 2}  }
	{ f_out int 64 regular {axi_slave 0}  }
	{ g_out int 64 regular {axi_slave 0}  }
	{ F_upper_out int 64 regular {axi_slave 0}  }
	{ G_upper_out int 64 regular {axi_slave 0}  }
	{ h_out int 64 regular {axi_slave 0}  }
	{ seed int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "f_out","offset": { "type": "dynamic","port_name": "f_out","bundle": "control"},"direction": "WRITEONLY"},{"cName": "g_out","offset": { "type": "dynamic","port_name": "g_out","bundle": "control"},"direction": "WRITEONLY"},{"cName": "F_upper_out","offset": { "type": "dynamic","port_name": "F_upper_out","bundle": "control"},"direction": "WRITEONLY"},{"cName": "G_upper_out","offset": { "type": "dynamic","port_name": "G_upper_out","bundle": "control"},"direction": "WRITEONLY"},{"cName": "h_out","offset": { "type": "dynamic","port_name": "h_out","bundle": "control"},"direction": "WRITEONLY"},{"cName": "seed","offset": { "type": "dynamic","port_name": "seed","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "f_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "g_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "F_upper_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "G_upper_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "h_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "seed", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"keygen","role":"start","value":"0","valid_bit":"0"},{"name":"keygen","role":"continue","value":"0","valid_bit":"4"},{"name":"keygen","role":"auto_start","value":"0","valid_bit":"7"},{"name":"f_out","role":"data","value":"16"},{"name":"g_out","role":"data","value":"28"},{"name":"F_upper_out","role":"data","value":"40"},{"name":"G_upper_out","role":"data","value":"52"},{"name":"h_out","role":"data","value":"64"},{"name":"seed","role":"data","value":"76"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"keygen","role":"start","value":"0","valid_bit":"0"},{"name":"keygen","role":"done","value":"0","valid_bit":"1"},{"name":"keygen","role":"idle","value":"0","valid_bit":"2"},{"name":"keygen","role":"ready","value":"0","valid_bit":"3"},{"name":"keygen","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "17", "19", "29", "39", "49", "59", "106", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467"],
		"CDFG" : "keygen",
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
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "f_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_upper_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_upper_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "seed", "Type" : "None", "Direction" : "I"},
			{"Name" : "RC", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_poly_small_mkgauss_fu_1282", "Port" : "RC", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "gauss_1024_12289", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_poly_small_mkgauss_fu_1282", "Port" : "gauss_1024_12289", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "fpr_gm_tab", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_FFT_fu_1324", "Port" : "fpr_gm_tab", "Inst_start_state" : "32", "Inst_end_state" : "35"},
					{"ID" : "106", "SubInstance" : "grp_solve_NTRU_fu_1364", "Port" : "fpr_gm_tab", "Inst_start_state" : "75", "Inst_end_state" : "76"},
					{"ID" : "29", "SubInstance" : "grp_FFT_fu_1331", "Port" : "fpr_gm_tab", "Inst_start_state" : "32", "Inst_end_state" : "35"},
					{"ID" : "39", "SubInstance" : "grp_iFFT_fu_1338", "Port" : "fpr_gm_tab", "Inst_start_state" : "61", "Inst_end_state" : "64"},
					{"ID" : "49", "SubInstance" : "grp_iFFT_fu_1345", "Port" : "fpr_gm_tab", "Inst_start_state" : "61", "Inst_end_state" : "64"}]},
			{"Name" : "GMb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_compute_public_1_fu_1352", "Port" : "GMb", "Inst_start_state" : "73", "Inst_end_state" : "74"}]},
			{"Name" : "iGMb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_compute_public_1_fu_1352", "Port" : "iGMb", "Inst_start_state" : "73", "Inst_end_state" : "74"}]},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_solve_NTRU_fu_1364", "Port" : "REV10", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "MAX_BL_SMALL", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_solve_NTRU_fu_1364", "Port" : "MAX_BL_SMALL", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_solve_NTRU_fu_1364", "Port" : "PRIMES_p", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_solve_NTRU_fu_1364", "Port" : "PRIMES_g", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_solve_NTRU_fu_1364", "Port" : "PRIMES_s", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "fpr_p2_tab", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_solve_NTRU_fu_1364", "Port" : "fpr_p2_tab", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "MAX_BL_LARGE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_solve_NTRU_fu_1364", "Port" : "MAX_BL_LARGE", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "BITLENGTH_avg", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_solve_NTRU_fu_1364", "Port" : "BITLENGTH_avg", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "BITLENGTH_std", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_solve_NTRU_fu_1364", "Port" : "BITLENGTH_std", "Inst_start_state" : "75", "Inst_end_state" : "76"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_805_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5884_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state17", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state16"], "PostState" : ["ap_ST_fsm_state76", "ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2760_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state17"], "PostState" : ["ap_ST_fsm_state24"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2760_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state24", "LastState" : ["ap_ST_fsm_state28"], "QuitState" : ["ap_ST_fsm_state24"], "PreState" : ["ap_ST_fsm_state19"], "PostState" : ["ap_ST_fsm_state76", "ap_ST_fsm_state29"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2817_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state29", "LastState" : ["ap_ST_fsm_state31"], "QuitState" : ["ap_ST_fsm_state29"], "PreState" : ["ap_ST_fsm_state24"], "PostState" : ["ap_ST_fsm_state32"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2817_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state32", "LastState" : ["ap_ST_fsm_state34"], "QuitState" : ["ap_ST_fsm_state32"], "PreState" : ["ap_ST_fsm_state29"], "PostState" : ["ap_ST_fsm_state35"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_225_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state36", "LastState" : ["ap_ST_fsm_state47"], "QuitState" : ["ap_ST_fsm_state36"], "PreState" : ["ap_ST_fsm_state35"], "PostState" : ["ap_ST_fsm_state48"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_546_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state48", "LastState" : ["ap_ST_fsm_state49"], "QuitState" : ["ap_ST_fsm_state48"], "PreState" : ["ap_ST_fsm_state36"], "PostState" : ["ap_ST_fsm_state50"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_546_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state50", "LastState" : ["ap_ST_fsm_state51"], "QuitState" : ["ap_ST_fsm_state50"], "PreState" : ["ap_ST_fsm_state48"], "PostState" : ["ap_ST_fsm_state52"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_562_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state52", "LastState" : ["ap_ST_fsm_state54"], "QuitState" : ["ap_ST_fsm_state52"], "PreState" : ["ap_ST_fsm_state50"], "PostState" : ["ap_ST_fsm_state55"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_562_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state55", "LastState" : ["ap_ST_fsm_state57"], "QuitState" : ["ap_ST_fsm_state55"], "PreState" : ["ap_ST_fsm_state52"], "PostState" : ["ap_ST_fsm_state58"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_580_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state58", "LastState" : ["ap_ST_fsm_state60"], "QuitState" : ["ap_ST_fsm_state58"], "PreState" : ["ap_ST_fsm_state55"], "PostState" : ["ap_ST_fsm_state61"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_580_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state61", "LastState" : ["ap_ST_fsm_state63"], "QuitState" : ["ap_ST_fsm_state61"], "PreState" : ["ap_ST_fsm_state58"], "PostState" : ["ap_ST_fsm_state64"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5942_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state65", "LastState" : ["ap_ST_fsm_state70"], "QuitState" : ["ap_ST_fsm_state65"], "PreState" : ["ap_ST_fsm_state64"], "PostState" : ["ap_ST_fsm_state71"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state14", "LastState" : ["ap_ST_fsm_state76"], "QuitState" : ["ap_ST_fsm_state76"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state77"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state77", "LastState" : ["ap_ST_fsm_state84"], "QuitState" : ["ap_ST_fsm_state77"], "PreState" : ["ap_ST_fsm_state76"], "PostState" : ["ap_ST_fsm_state85"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state85", "LastState" : ["ap_ST_fsm_state92"], "QuitState" : ["ap_ST_fsm_state85"], "PreState" : ["ap_ST_fsm_state77"], "PostState" : ["ap_ST_fsm_state93"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state94", "LastState" : ["ap_ST_fsm_state96"], "QuitState" : ["ap_ST_fsm_state94"], "PreState" : ["ap_ST_fsm_state93"], "PostState" : ["ap_ST_fsm_state97"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state102", "LastState" : ["ap_ST_fsm_state109"], "QuitState" : ["ap_ST_fsm_state102"], "PreState" : ["ap_ST_fsm_state101"], "PostState" : ["ap_ST_fsm_state110"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "117", "FirstState" : "ap_ST_fsm_state110", "LastState" : ["ap_ST_fsm_state117"], "QuitState" : ["ap_ST_fsm_state110"], "PreState" : ["ap_ST_fsm_state102"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp2108_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.f_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.g_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.F_upper_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.G_upper_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rt1_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rt2_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rt3_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_small_mkgauss_fu_1282", "Parent" : "0", "Child" : ["11", "12"],
		"CDFG" : "poly_small_mkgauss",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "f", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "RC", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_get_rng_u64_82_101_fu_718", "Port" : "RC", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "gauss_1024_12289", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2629_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4476_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4473_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_small_mkgauss_fu_1282.gauss_1024_12289_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_small_mkgauss_fu_1282.grp_get_rng_u64_82_101_fu_718", "Parent" : "10", "Child" : ["13", "14", "16"],
		"CDFG" : "get_rng_u64_82_101",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "rng_dptr_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "RC", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_process_block_111_112_fu_512", "Port" : "RC", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_863_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_846_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_small_mkgauss_fu_1282.grp_get_rng_u64_82_101_fu_718.tmp_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_small_mkgauss_fu_1282.grp_get_rng_u64_82_101_fu_718.grp_process_block_111_112_fu_512", "Parent" : "12", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_poly_small_mkgauss_fu_1282.grp_get_rng_u64_82_101_fu_718.grp_process_block_111_112_fu_512.RC_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_small_mkgauss_fu_1282.grp_get_rng_u64_82_101_fu_718.mux_2561_64_1_1_U27", "Parent" : "12"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpr_of_fu_1317", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "fpr_of",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpr_of_fu_1317.sitodp_64ns_64_2_no_dsp_1_U84", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1324", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24", "25", "26", "27", "28"],
		"CDFG" : "FFT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "170875",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "f", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fpr_gm_tab", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_968_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_959_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_953_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1324.fpr_gm_tab_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1324.dadddsub_64ns_64ns_64_2_full_dsp_1_U87", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1324.dadd_64ns_64ns_64_2_full_dsp_1_U88", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1324.dsub_64ns_64ns_64_2_full_dsp_1_U89", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1324.dsub_64ns_64ns_64_2_full_dsp_1_U90", "Parent" : "19"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1324.dmul_64ns_64ns_64_2_max_dsp_1_U91", "Parent" : "19"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1324.dmul_64ns_64ns_64_2_max_dsp_1_U92", "Parent" : "19"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1324.dmul_64ns_64ns_64_2_max_dsp_1_U93", "Parent" : "19"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1324.dmul_64ns_64ns_64_2_max_dsp_1_U94", "Parent" : "19"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1331", "Parent" : "0", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37", "38"],
		"CDFG" : "FFT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "170875",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "f", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fpr_gm_tab", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_968_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_959_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_953_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1331.fpr_gm_tab_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1331.dadddsub_64ns_64ns_64_2_full_dsp_1_U87", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1331.dadd_64ns_64ns_64_2_full_dsp_1_U88", "Parent" : "29"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1331.dsub_64ns_64ns_64_2_full_dsp_1_U89", "Parent" : "29"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1331.dsub_64ns_64ns_64_2_full_dsp_1_U90", "Parent" : "29"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1331.dmul_64ns_64ns_64_2_max_dsp_1_U91", "Parent" : "29"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1331.dmul_64ns_64ns_64_2_max_dsp_1_U92", "Parent" : "29"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1331.dmul_64ns_64ns_64_2_max_dsp_1_U93", "Parent" : "29"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_fu_1331.dmul_64ns_64ns_64_2_max_dsp_1_U94", "Parent" : "29"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1338", "Parent" : "0", "Child" : ["40", "41", "42", "43", "44", "45", "46", "47", "48"],
		"CDFG" : "iFFT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3092", "EstimateLatencyMax" : "127589",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "f", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fpr_gm_tab", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1468_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1459_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1453_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1493_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1338.fpr_gm_tab_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1338.dadddsub_64ns_64ns_64_2_full_dsp_1_U101", "Parent" : "39"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1338.dadd_64ns_64ns_64_2_full_dsp_1_U102", "Parent" : "39"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1338.dsub_64ns_64ns_64_2_full_dsp_1_U103", "Parent" : "39"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1338.dsub_64ns_64ns_64_2_full_dsp_1_U104", "Parent" : "39"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1338.dmul_64ns_64ns_64_2_max_dsp_1_U105", "Parent" : "39"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1338.dmul_64ns_64ns_64_2_max_dsp_1_U106", "Parent" : "39"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1338.dmul_64ns_64ns_64_2_max_dsp_1_U107", "Parent" : "39"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1338.dmul_64ns_64ns_64_2_max_dsp_1_U108", "Parent" : "39"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1345", "Parent" : "0", "Child" : ["50", "51", "52", "53", "54", "55", "56", "57", "58"],
		"CDFG" : "iFFT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3092", "EstimateLatencyMax" : "127589",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "f", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fpr_gm_tab", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1468_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1459_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1453_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1493_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1345.fpr_gm_tab_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1345.dadddsub_64ns_64ns_64_2_full_dsp_1_U101", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1345.dadd_64ns_64ns_64_2_full_dsp_1_U102", "Parent" : "49"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1345.dsub_64ns_64ns_64_2_full_dsp_1_U103", "Parent" : "49"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1345.dsub_64ns_64ns_64_2_full_dsp_1_U104", "Parent" : "49"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1345.dmul_64ns_64ns_64_2_max_dsp_1_U105", "Parent" : "49"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1345.dmul_64ns_64ns_64_2_max_dsp_1_U106", "Parent" : "49"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1345.dmul_64ns_64ns_64_2_max_dsp_1_U107", "Parent" : "49"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_fu_1345.dmul_64ns_64ns_64_2_max_dsp_1_U108", "Parent" : "49"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352", "Parent" : "0", "Child" : ["60", "61", "66", "71", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105"],
		"CDFG" : "compute_public_1",
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
			{"Name" : "h", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_mq_NTT_fu_320", "Port" : "a", "Inst_start_state" : "2", "Inst_end_state" : "4"}]},
			{"Name" : "f", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp2108", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_mq_NTT_1_fu_328", "Port" : "tmp2108", "Inst_start_state" : "2", "Inst_end_state" : "4"}]},
			{"Name" : "GMb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_mq_NTT_1_fu_328", "Port" : "GMb", "Inst_start_state" : "2", "Inst_end_state" : "4"},
					{"ID" : "61", "SubInstance" : "grp_mq_NTT_fu_320", "Port" : "GMb", "Inst_start_state" : "2", "Inst_end_state" : "4"}]},
			{"Name" : "iGMb", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_824_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "116", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_830_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "116", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state96"], "QuitState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state97", "ap_ST_fsm_state116"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_558_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "116", "FirstState" : "ap_ST_fsm_state100", "LastState" : ["ap_ST_fsm_state110"], "QuitState" : ["ap_ST_fsm_state100"], "PreState" : ["ap_ST_fsm_state99"], "PostState" : ["ap_ST_fsm_state98"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_552_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "116", "FirstState" : "ap_ST_fsm_state98", "LastState" : ["ap_ST_fsm_state100"], "QuitState" : ["ap_ST_fsm_state98"], "PreState" : ["ap_ST_fsm_state97"], "PostState" : ["ap_ST_fsm_state97"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_547_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "116", "FirstState" : "ap_ST_fsm_state97", "LastState" : ["ap_ST_fsm_state98"], "QuitState" : ["ap_ST_fsm_state97"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state111"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_586_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "116", "FirstState" : "ap_ST_fsm_state111", "LastState" : ["ap_ST_fsm_state115"], "QuitState" : ["ap_ST_fsm_state111"], "PreState" : ["ap_ST_fsm_state97"], "PostState" : ["ap_ST_fsm_state116"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.iGMb_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.grp_mq_NTT_fu_320", "Parent" : "59", "Child" : ["62", "63", "64", "65"],
		"CDFG" : "mq_NTT",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "GMb", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_521_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_515_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_511_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.grp_mq_NTT_fu_320.GMb_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.grp_mq_NTT_fu_320.mul_mul_16ns_14ns_30_4_1_U110", "Parent" : "61"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.grp_mq_NTT_fu_320.mul_mul_16s_14ns_16_4_1_U111", "Parent" : "61"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.grp_mq_NTT_fu_320.mac_muladd_16ns_14ns_30ns_31_4_1_U112", "Parent" : "61"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.grp_mq_NTT_1_fu_328", "Parent" : "59", "Child" : ["67", "68", "69", "70"],
		"CDFG" : "mq_NTT_1",
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
			{"Name" : "tmp2108", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "GMb", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_521_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_515_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_511_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.grp_mq_NTT_1_fu_328.GMb_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.grp_mq_NTT_1_fu_328.mul_mul_16ns_14ns_30_4_1_U118", "Parent" : "66"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.grp_mq_NTT_1_fu_328.mul_mul_16s_14ns_16_4_1_U119", "Parent" : "66"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.grp_mq_NTT_1_fu_328.mac_muladd_16ns_14ns_30ns_31_4_1_U120", "Parent" : "66"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.grp_mq_montysqr_fu_336", "Parent" : "59", "Child" : ["72", "73", "74"],
		"CDFG" : "mq_montysqr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.grp_mq_montysqr_fu_336.mul_mul_17s_17s_32_4_1_U122", "Parent" : "71"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.grp_mq_montysqr_fu_336.mul_mul_16s_14ns_16_4_1_U123", "Parent" : "71"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.grp_mq_montysqr_fu_336.mac_muladd_16ns_14ns_32s_32_4_1_U124", "Parent" : "71"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_16ns_15ns_16_4_1_U128", "Parent" : "59"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_16ns_14ns_30_4_1_U129", "Parent" : "59"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mac_muladd_16ns_14ns_30ns_31_4_1_U130", "Parent" : "59"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_16s_17s_32_4_1_U131", "Parent" : "59"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_16s_14ns_16_4_1_U132", "Parent" : "59"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mac_muladd_16ns_14ns_32s_32_4_1_U133", "Parent" : "59"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_17s_17s_32_4_1_U134", "Parent" : "59"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_16s_14ns_16_4_1_U135", "Parent" : "59"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mac_muladd_16ns_14ns_32s_32_4_1_U136", "Parent" : "59"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_17s_17s_32_4_1_U137", "Parent" : "59"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_16s_14ns_16_4_1_U138", "Parent" : "59"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mac_muladd_16ns_14ns_32s_32_4_1_U139", "Parent" : "59"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_17s_17s_32_4_1_U140", "Parent" : "59"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_16s_14ns_16_4_1_U141", "Parent" : "59"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mac_muladd_16ns_14ns_32s_32_4_1_U142", "Parent" : "59"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_17s_17s_32_4_1_U143", "Parent" : "59"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_16s_14ns_16_4_1_U144", "Parent" : "59"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mac_muladd_16ns_14ns_32s_32_4_1_U145", "Parent" : "59"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_17s_17s_32_4_1_U146", "Parent" : "59"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_16s_14ns_16_4_1_U147", "Parent" : "59"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mac_muladd_16ns_14ns_32s_32_4_1_U148", "Parent" : "59"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_16s_17s_32_4_1_U149", "Parent" : "59"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_16s_14ns_16_4_1_U150", "Parent" : "59"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mac_muladd_16ns_14ns_32s_32_4_1_U151", "Parent" : "59"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_17s_16ns_32_4_1_U152", "Parent" : "59"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_16s_14ns_16_4_1_U153", "Parent" : "59"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mac_muladd_16ns_14ns_32s_32_4_1_U154", "Parent" : "59"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.am_addmul_15s_17s_14ns_32_4_1_U155", "Parent" : "59"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mul_mul_16s_14ns_16_4_1_U156", "Parent" : "59"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.mac_muladd_16ns_14ns_32s_32_4_1_U157", "Parent" : "59"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_public_1_fu_1352.ama_submuladd_1ns_16ns_14ns_22ns_30_4_1_U158", "Parent" : "59"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364", "Parent" : "0", "Child" : ["107", "108", "109", "438", "442", "446"],
		"CDFG" : "solve_NTRU",
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
			{"Name" : "F_upper", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "G_upper", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "f", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "g", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "REV10", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "MAX_BL_SMALL", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "MAX_BL_SMALL", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "PRIMES_p", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "PRIMES_g", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "PRIMES_s", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "fpr_gm_tab", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "fpr_gm_tab", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "fpr_p2_tab", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "fpr_p2_tab", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "MAX_BL_LARGE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "MAX_BL_LARGE", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "BITLENGTH_avg", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "BITLENGTH_avg", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "BITLENGTH_std", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "BITLENGTH_std", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_4378_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state31"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2385_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state9", "ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state11", "ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2385_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state11", "ap_ST_fsm_state12"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state13", "ap_ST_fsm_state31"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_808_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state11"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_962_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state13"], "PostState" : ["ap_ST_fsm_state17"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4432_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state17", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state15"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4435_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state17"], "PostState" : ["ap_ST_fsm_state22"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4447_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state29", "LastState" : ["ap_ST_fsm_state31"], "QuitState" : ["ap_ST_fsm_state29"], "PreState" : ["ap_ST_fsm_state28"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.REV10_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.vla18_U", "Parent" : "106"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478", "Parent" : "106", "Child" : ["110", "111", "112", "113", "114", "115", "116", "126", "211", "218", "227", "231", "235", "239", "243", "247", "251", "259", "261", "270", "274", "278", "299", "304", "311", "345", "347", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437"],
		"CDFG" : "solve_NTRU_all_1",
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
			{"Name" : "f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "f", "Inst_start_state" : "274", "Inst_end_state" : "275"}]},
			{"Name" : "g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "g", "Inst_start_state" : "274", "Inst_end_state" : "275"}]},
			{"Name" : "depth_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_iFFT_1_fu_3522", "Port" : "vla18", "Inst_start_state" : "386", "Inst_end_state" : "394"},
					{"ID" : "251", "SubInstance" : "grp_FFT_1_fu_3500", "Port" : "vla18", "Inst_start_state" : "376", "Inst_end_state" : "377"},
					{"ID" : "347", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "vla18", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "218", "SubInstance" : "grp_modp_iNTT2_ext_1_fu_3386", "Port" : "vla18", "Inst_start_state" : "338", "Inst_end_state" : "339"},
					{"ID" : "211", "SubInstance" : "grp_modp_NTT2_ext_1_fu_3357", "Port" : "vla18", "Inst_start_state" : "328", "Inst_end_state" : "329"},
					{"ID" : "345", "SubInstance" : "grp_poly_sub_scaled_1_fu_3632", "Port" : "vla18", "Inst_start_state" : "439", "Inst_end_state" : "440"},
					{"ID" : "304", "SubInstance" : "grp_poly_mul_fft_1_fu_3613", "Port" : "vla18", "Inst_start_state" : "380", "Inst_end_state" : "381"},
					{"ID" : "311", "SubInstance" : "grp_zint_bezout_1_fu_3626", "Port" : "vla18", "Inst_start_state" : "268", "Inst_end_state" : "269"},
					{"ID" : "299", "SubInstance" : "grp_poly_big_to_fp_1_fu_3592", "Port" : "vla18", "Inst_start_state" : "372", "Inst_end_state" : "373"},
					{"ID" : "126", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "vla18", "Inst_start_state" : "274", "Inst_end_state" : "275"},
					{"ID" : "274", "SubInstance" : "grp_zint_mod_small_signed_1_fu_3545", "Port" : "vla18", "Inst_start_state" : "310", "Inst_end_state" : "311"},
					{"ID" : "116", "SubInstance" : "grp_modp_mkgm2_1_fu_3306", "Port" : "vla18", "Inst_start_state" : "303", "Inst_end_state" : "304"},
					{"ID" : "278", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_3561", "Port" : "vla18", "Inst_start_state" : "341", "Inst_end_state" : "342"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "REV10", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "126", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "REV10", "Inst_start_state" : "274", "Inst_end_state" : "275"},
					{"ID" : "116", "SubInstance" : "grp_modp_mkgm2_1_fu_3306", "Port" : "REV10", "Inst_start_state" : "303", "Inst_end_state" : "304"}]},
			{"Name" : "MAX_BL_SMALL", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "MAX_BL_SMALL", "Inst_start_state" : "274", "Inst_end_state" : "275"}]},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "PRIMES_p", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "126", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "PRIMES_p", "Inst_start_state" : "274", "Inst_end_state" : "275"},
					{"ID" : "278", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_3561", "Port" : "PRIMES_p", "Inst_start_state" : "341", "Inst_end_state" : "342"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "PRIMES_g", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "126", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "PRIMES_g", "Inst_start_state" : "274", "Inst_end_state" : "275"}]},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "PRIMES_s", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "126", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "PRIMES_s", "Inst_start_state" : "274", "Inst_end_state" : "275"},
					{"ID" : "278", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_3561", "Port" : "PRIMES_s", "Inst_start_state" : "341", "Inst_end_state" : "342"}]},
			{"Name" : "fpr_gm_tab", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_iFFT_1_fu_3522", "Port" : "fpr_gm_tab", "Inst_start_state" : "386", "Inst_end_state" : "394"},
					{"ID" : "251", "SubInstance" : "grp_FFT_1_fu_3500", "Port" : "fpr_gm_tab", "Inst_start_state" : "376", "Inst_end_state" : "377"}]},
			{"Name" : "fpr_p2_tab", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_iFFT_1_fu_3522", "Port" : "fpr_p2_tab", "Inst_start_state" : "386", "Inst_end_state" : "394"}]},
			{"Name" : "MAX_BL_LARGE", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "BITLENGTH_avg", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "BITLENGTH_std", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1487_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state270", "LastState" : ["ap_ST_fsm_state271"], "QuitState" : ["ap_ST_fsm_state270"], "PreState" : ["ap_ST_fsm_state269"], "PostState" : ["ap_ST_fsm_state272"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1487_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state272", "LastState" : ["ap_ST_fsm_state273"], "QuitState" : ["ap_ST_fsm_state272"], "PreState" : ["ap_ST_fsm_state270"], "PostState" : ["ap_ST_fsm_state452"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_779_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state111", "LastState" : ["ap_ST_fsm_state112"], "QuitState" : ["ap_ST_fsm_state111"], "PreState" : ["ap_ST_fsm_state110"], "PostState" : ["ap_ST_fsm_state113"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4640_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state113", "LastState" : ["ap_ST_fsm_state118"], "QuitState" : ["ap_ST_fsm_state113"], "PreState" : ["ap_ST_fsm_state111"], "PostState" : ["ap_ST_fsm_state106"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4631_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state106", "LastState" : ["ap_ST_fsm_state113"], "QuitState" : ["ap_ST_fsm_state106"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state119"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state119", "LastState" : ["ap_ST_fsm_state120"], "QuitState" : ["ap_ST_fsm_state120"], "PreState" : ["ap_ST_fsm_state106"], "PostState" : ["ap_ST_fsm_state121"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state121", "LastState" : ["ap_ST_fsm_state122"], "QuitState" : ["ap_ST_fsm_state122"], "PreState" : ["ap_ST_fsm_state120"], "PostState" : ["ap_ST_fsm_state123"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4694_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state128", "LastState" : ["ap_ST_fsm_state129"], "QuitState" : ["ap_ST_fsm_state128"], "PreState" : ["ap_ST_fsm_state127"], "PostState" : ["ap_ST_fsm_state130"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1407_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state133", "LastState" : ["ap_ST_fsm_state135"], "QuitState" : ["ap_ST_fsm_state133"], "PreState" : ["ap_ST_fsm_state132"], "PostState" : ["ap_ST_fsm_state136"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1407_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state136", "LastState" : ["ap_ST_fsm_state138"], "QuitState" : ["ap_ST_fsm_state136"], "PreState" : ["ap_ST_fsm_state133"], "PostState" : ["ap_ST_fsm_state139"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4664_3.4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state139", "LastState" : ["ap_ST_fsm_state140"], "QuitState" : ["ap_ST_fsm_state140"], "PreState" : ["ap_ST_fsm_state136"], "PostState" : ["ap_ST_fsm_state141"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4664_3.5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state141", "LastState" : ["ap_ST_fsm_state142"], "QuitState" : ["ap_ST_fsm_state142"], "PreState" : ["ap_ST_fsm_state140"], "PostState" : ["ap_ST_fsm_state143"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4664_3.6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state143", "LastState" : ["ap_ST_fsm_state144"], "QuitState" : ["ap_ST_fsm_state144"], "PreState" : ["ap_ST_fsm_state142"], "PostState" : ["ap_ST_fsm_state145"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4729_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state145", "LastState" : ["ap_ST_fsm_state148"], "QuitState" : ["ap_ST_fsm_state145"], "PreState" : ["ap_ST_fsm_state144"], "PostState" : ["ap_ST_fsm_state149"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4775_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state152", "LastState" : ["ap_ST_fsm_state158"], "QuitState" : ["ap_ST_fsm_state152"], "PreState" : ["ap_ST_fsm_state151"], "PostState" : ["ap_ST_fsm_state159"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4801_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state166", "LastState" : ["ap_ST_fsm_state167"], "QuitState" : ["ap_ST_fsm_state166"], "PreState" : ["ap_ST_fsm_state161", "ap_ST_fsm_state165"], "PostState" : ["ap_ST_fsm_state123"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4664_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state123", "LastState" : ["ap_ST_fsm_state166"], "QuitState" : ["ap_ST_fsm_state123"], "PreState" : ["ap_ST_fsm_state122"], "PostState" : ["ap_ST_fsm_state168"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state175", "LastState" : ["ap_ST_fsm_state176"], "QuitState" : ["ap_ST_fsm_state176"], "PreState" : ["ap_ST_fsm_state174"], "PostState" : ["ap_ST_fsm_state177"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state177", "LastState" : ["ap_ST_fsm_state178"], "QuitState" : ["ap_ST_fsm_state178"], "PreState" : ["ap_ST_fsm_state176"], "PostState" : ["ap_ST_fsm_state179"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 9", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state183", "LastState" : ["ap_ST_fsm_state184"], "QuitState" : ["ap_ST_fsm_state184"], "PreState" : ["ap_ST_fsm_state182"], "PostState" : ["ap_ST_fsm_state185"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_480_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state193", "LastState" : ["ap_ST_fsm_state207"], "QuitState" : ["ap_ST_fsm_state193"], "PreState" : ["ap_ST_fsm_state192"], "PostState" : ["ap_ST_fsm_state208"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_225_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state208", "LastState" : ["ap_ST_fsm_state223"], "QuitState" : ["ap_ST_fsm_state208"], "PreState" : ["ap_ST_fsm_state193"], "PostState" : ["ap_ST_fsm_state224"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_580_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state224", "LastState" : ["ap_ST_fsm_state233"], "QuitState" : ["ap_ST_fsm_state224"], "PreState" : ["ap_ST_fsm_state208"], "PostState" : ["ap_ST_fsm_state234"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4901_9", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state235", "LastState" : ["ap_ST_fsm_state239"], "QuitState" : ["ap_ST_fsm_state235", "ap_ST_fsm_state236"], "PreState" : ["ap_ST_fsm_state234"], "PostState" : ["ap_ST_fsm_state240", "ap_ST_fsm_state452"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_464_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state245", "LastState" : ["ap_ST_fsm_state248"], "QuitState" : ["ap_ST_fsm_state245"], "PreState" : ["ap_ST_fsm_state244"], "PostState" : ["ap_ST_fsm_state249"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_464_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state249", "LastState" : ["ap_ST_fsm_state253"], "QuitState" : ["ap_ST_fsm_state249"], "PreState" : ["ap_ST_fsm_state245"], "PostState" : ["ap_ST_fsm_state254"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 16", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state257", "LastState" : ["ap_ST_fsm_state258"], "QuitState" : ["ap_ST_fsm_state258"], "PreState" : ["ap_ST_fsm_state256"], "PostState" : ["ap_ST_fsm_state259"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4932_10", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state259", "LastState" : ["ap_ST_fsm_state264"], "QuitState" : ["ap_ST_fsm_state259"], "PreState" : ["ap_ST_fsm_state258"], "PostState" : ["ap_ST_fsm_state452"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4980_11", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4990_12", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5000_13", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state12"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 21", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state22", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state23"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state24"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5052_14", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state31", "LastState" : ["ap_ST_fsm_state33"], "QuitState" : ["ap_ST_fsm_state31"], "PreState" : ["ap_ST_fsm_state30"], "PostState" : ["ap_ST_fsm_state34"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5062_15", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state37", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state37"], "PreState" : ["ap_ST_fsm_state36"], "PostState" : ["ap_ST_fsm_state40"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5075_16", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state41", "LastState" : ["ap_ST_fsm_state43"], "QuitState" : ["ap_ST_fsm_state41"], "PreState" : ["ap_ST_fsm_state40"], "PostState" : ["ap_ST_fsm_state44"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5085_17", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state47", "LastState" : ["ap_ST_fsm_state50"], "QuitState" : ["ap_ST_fsm_state47"], "PreState" : ["ap_ST_fsm_state46"], "PostState" : ["ap_ST_fsm_state51"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5104_18", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state56", "LastState" : ["ap_ST_fsm_state57"], "QuitState" : ["ap_ST_fsm_state56"], "PreState" : ["ap_ST_fsm_state55"], "PostState" : ["ap_ST_fsm_state58"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5128_19", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state58", "LastState" : ["ap_ST_fsm_state61"], "QuitState" : ["ap_ST_fsm_state58"], "PreState" : ["ap_ST_fsm_state56"], "PostState" : ["ap_ST_fsm_state62"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 28", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state63", "LastState" : ["ap_ST_fsm_state64"], "QuitState" : ["ap_ST_fsm_state64"], "PreState" : ["ap_ST_fsm_state62"], "PostState" : ["ap_ST_fsm_state65"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5139_20", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state65", "LastState" : ["ap_ST_fsm_state68"], "QuitState" : ["ap_ST_fsm_state65"], "PreState" : ["ap_ST_fsm_state64"], "PostState" : ["ap_ST_fsm_state69"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_248_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state70", "LastState" : ["ap_ST_fsm_state84"], "QuitState" : ["ap_ST_fsm_state70"], "PreState" : ["ap_ST_fsm_state69"], "PostState" : ["ap_ST_fsm_state85"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5150_21", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state86", "LastState" : ["ap_ST_fsm_state88"], "QuitState" : ["ap_ST_fsm_state86"], "PreState" : ["ap_ST_fsm_state85"], "PostState" : ["ap_ST_fsm_state89"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5168_22", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state90", "LastState" : ["ap_ST_fsm_state91"], "QuitState" : ["ap_ST_fsm_state90"], "PreState" : ["ap_ST_fsm_state89"], "PostState" : ["ap_ST_fsm_state92"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5175_23", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state97", "LastState" : ["ap_ST_fsm_state100"], "QuitState" : ["ap_ST_fsm_state97"], "PreState" : ["ap_ST_fsm_state96"], "PostState" : ["ap_ST_fsm_state101"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5186_24", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state104", "LastState" : ["ap_ST_fsm_state105"], "QuitState" : ["ap_ST_fsm_state104"], "PreState" : ["ap_ST_fsm_state103"], "PostState" : ["ap_ST_fsm_state452"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 35", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state277", "LastState" : ["ap_ST_fsm_state278"], "QuitState" : ["ap_ST_fsm_state277"], "PreState" : ["ap_ST_fsm_state275", "ap_ST_fsm_state276"], "PostState" : ["ap_ST_fsm_state276", "ap_ST_fsm_state280", "ap_ST_fsm_state279", "ap_ST_fsm_state281"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 36", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state276", "LastState" : ["ap_ST_fsm_state277"], "QuitState" : ["ap_ST_fsm_state277"], "PreState" : ["ap_ST_fsm_state275"], "PostState" : ["ap_ST_fsm_state278", "ap_ST_fsm_state280", "ap_ST_fsm_state279", "ap_ST_fsm_state281"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 37", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state279", "LastState" : ["ap_ST_fsm_state280"], "QuitState" : ["ap_ST_fsm_state280"], "PreState" : ["ap_ST_fsm_state277"], "PostState" : ["ap_ST_fsm_state281", "ap_ST_fsm_state282"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 38", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state280", "LastState" : ["ap_ST_fsm_state281"], "QuitState" : ["ap_ST_fsm_state280"], "PreState" : ["ap_ST_fsm_state277", "ap_ST_fsm_state279"], "PostState" : ["ap_ST_fsm_state279", "ap_ST_fsm_state282"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_779_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state287", "LastState" : ["ap_ST_fsm_state288"], "QuitState" : ["ap_ST_fsm_state287"], "PreState" : ["ap_ST_fsm_state286"], "PostState" : ["ap_ST_fsm_state289"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop11", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state289", "LastState" : ["ap_ST_fsm_state294"], "QuitState" : ["ap_ST_fsm_state289"], "PreState" : ["ap_ST_fsm_state287"], "PostState" : ["ap_ST_fsm_state282"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state282", "LastState" : ["ap_ST_fsm_state289"], "QuitState" : ["ap_ST_fsm_state282"], "PreState" : ["ap_ST_fsm_state280"], "PostState" : ["ap_ST_fsm_state295"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop21", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state316", "LastState" : ["ap_ST_fsm_state319"], "QuitState" : ["ap_ST_fsm_state316"], "PreState" : ["ap_ST_fsm_state304"], "PostState" : ["ap_ST_fsm_state320"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_779_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state305", "LastState" : ["ap_ST_fsm_state306"], "QuitState" : ["ap_ST_fsm_state305"], "PreState" : ["ap_ST_fsm_state304"], "PostState" : ["ap_ST_fsm_state307"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop22", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state307", "LastState" : ["ap_ST_fsm_state312"], "QuitState" : ["ap_ST_fsm_state307"], "PreState" : ["ap_ST_fsm_state305"], "PostState" : ["ap_ST_fsm_state313"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop23", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state323", "LastState" : ["ap_ST_fsm_state326"], "QuitState" : ["ap_ST_fsm_state323"], "PreState" : ["ap_ST_fsm_state315"], "PostState" : ["ap_ST_fsm_state327"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop24", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state330", "LastState" : ["ap_ST_fsm_state336"], "QuitState" : ["ap_ST_fsm_state330"], "PreState" : ["ap_ST_fsm_state329"], "PostState" : ["ap_ST_fsm_state337"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state295", "LastState" : ["ap_ST_fsm_state339"], "QuitState" : ["ap_ST_fsm_state295"], "PreState" : ["ap_ST_fsm_state282"], "PostState" : ["ap_ST_fsm_state340"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_225_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state351", "LastState" : ["ap_ST_fsm_state365"], "QuitState" : ["ap_ST_fsm_state351"], "PreState" : ["ap_ST_fsm_state350"], "PostState" : ["ap_ST_fsm_state368", "ap_ST_fsm_state366"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_546_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state366", "LastState" : ["ap_ST_fsm_state367"], "QuitState" : ["ap_ST_fsm_state366"], "PreState" : ["ap_ST_fsm_state351"], "PostState" : ["ap_ST_fsm_state368"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_546_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state368", "LastState" : ["ap_ST_fsm_state369"], "QuitState" : ["ap_ST_fsm_state368"], "PreState" : ["ap_ST_fsm_state351", "ap_ST_fsm_state366"], "PostState" : ["ap_ST_fsm_state370"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_532_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state382", "LastState" : ["ap_ST_fsm_state385"], "QuitState" : ["ap_ST_fsm_state382"], "PreState" : ["ap_ST_fsm_state381"], "PostState" : ["ap_ST_fsm_state386"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_580_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state386", "LastState" : ["ap_ST_fsm_state393"], "QuitState" : ["ap_ST_fsm_state386"], "PreState" : ["ap_ST_fsm_state382"], "PostState" : ["ap_ST_fsm_state394"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5623_25", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state395", "LastState" : ["ap_ST_fsm_state397"], "QuitState" : ["ap_ST_fsm_state395"], "PreState" : ["ap_ST_fsm_state394"], "PostState" : ["ap_ST_fsm_state398"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop31", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state398", "LastState" : ["ap_ST_fsm_state402"], "QuitState" : ["ap_ST_fsm_state398", "ap_ST_fsm_state400"], "PreState" : ["ap_ST_fsm_state395"], "PostState" : ["ap_ST_fsm_state403", "ap_ST_fsm_state452"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state370", "LastState" : ["ap_ST_fsm_state440"], "QuitState" : ["ap_ST_fsm_state400", "ap_ST_fsm_state440"], "PreState" : ["ap_ST_fsm_state368"], "PostState" : ["ap_ST_fsm_state452", "ap_ST_fsm_state443"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop41", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state445", "LastState" : ["ap_ST_fsm_state445"], "QuitState" : ["ap_ST_fsm_state445"], "PreState" : ["ap_ST_fsm_state444"], "PostState" : ["ap_ST_fsm_state446"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state445_blk"}},
			{"Name" : "solve_NTRU_intermediate_loop42", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state447", "LastState" : ["ap_ST_fsm_state447"], "QuitState" : ["ap_ST_fsm_state447"], "PreState" : ["ap_ST_fsm_state446"], "PostState" : ["ap_ST_fsm_state443"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state447_blk"}},
			{"Name" : "solve_NTRU_intermediate_loop4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state443", "LastState" : ["ap_ST_fsm_state447"], "QuitState" : ["ap_ST_fsm_state443"], "PreState" : ["ap_ST_fsm_state440"], "PostState" : ["ap_ST_fsm_state448"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop5.1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state450", "LastState" : ["ap_ST_fsm_state451"], "QuitState" : ["ap_ST_fsm_state450"], "PreState" : ["ap_ST_fsm_state449"], "PostState" : ["ap_ST_fsm_state449", "ap_ST_fsm_state448"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop5.2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state449", "LastState" : ["ap_ST_fsm_state450"], "QuitState" : ["ap_ST_fsm_state450"], "PreState" : ["ap_ST_fsm_state448"], "PostState" : ["ap_ST_fsm_state451", "ap_ST_fsm_state448"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state448", "LastState" : ["ap_ST_fsm_state450"], "QuitState" : ["ap_ST_fsm_state448"], "PreState" : ["ap_ST_fsm_state443"], "PostState" : ["ap_ST_fsm_state452"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.MAX_BL_SMALL_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.PRIMES_p_U", "Parent" : "109"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.PRIMES_g_U", "Parent" : "109"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.MAX_BL_LARGE_U", "Parent" : "109"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.BITLENGTH_avg_U", "Parent" : "109"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.BITLENGTH_std_U", "Parent" : "109"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306", "Parent" : "109", "Child" : ["117", "118", "122"],
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
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.REV10_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_184", "Parent" : "116", "Child" : ["119", "120", "121"],
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
	{"ID" : "119", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_184.mul_32ns_32ns_63_1_1_U169", "Parent" : "118"},
	{"ID" : "120", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_184.mul_31s_31s_31_1_1_U170", "Parent" : "118"},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_184.mul_31ns_32ns_62_1_1_U171", "Parent" : "118"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_192", "Parent" : "116", "Child" : ["123", "124", "125"],
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
	{"ID" : "123", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_192.mul_32ns_32ns_63_1_1_U169", "Parent" : "122"},
	{"ID" : "124", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_192.mul_31s_31s_31_1_1_U170", "Parent" : "122"},
	{"ID" : "125", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_192.mul_31ns_32ns_62_1_1_U171", "Parent" : "122"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330", "Parent" : "109", "Child" : ["127", "128", "196", "200", "204"],
		"CDFG" : "make_fg_1",
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
					{"ID" : "128", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "vla18", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "204", "SubInstance" : "grp_modp_NTT2_ext_1_fu_281", "Port" : "vla18", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "data", "Type" : "None", "Direction" : "I"},
			{"Name" : "f", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "depth", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_ntt_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "REV10", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "MAX_BL_SMALL", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "MAX_BL_SMALL", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "PRIMES_p", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "PRIMES_g", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "PRIMES_s", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "make_fg_loop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_808_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_962_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "make_fg_loop2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.REV10_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234", "Parent" : "126", "Child" : ["129", "130", "131", "132", "153", "163", "170", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195"],
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
					{"ID" : "153", "SubInstance" : "grp_modp_mkgm2_1_fu_826", "Port" : "vla18", "Inst_start_state" : "40", "Inst_end_state" : "41"},
					{"ID" : "132", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_780", "Port" : "vla18", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "163", "SubInstance" : "grp_modp_NTT2_ext_1_fu_841", "Port" : "vla18", "Inst_start_state" : "50", "Inst_end_state" : "54"},
					{"ID" : "170", "SubInstance" : "grp_modp_iNTT2_ext_1_fu_854", "Port" : "vla18", "Inst_start_state" : "59", "Inst_end_state" : "60"}]},
			{"Name" : "data", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "depth", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_ntt", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_ntt", "Type" : "None", "Direction" : "I"},
			{"Name" : "MAX_BL_SMALL", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_780", "Port" : "PRIMES_p", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_modp_mkgm2_1_fu_826", "Port" : "REV10", "Inst_start_state" : "40", "Inst_end_state" : "41"}]},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_780", "Port" : "PRIMES_s", "Inst_start_state" : "31", "Inst_end_state" : "32"}]}],
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
	{"ID" : "129", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.MAX_BL_SMALL_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.PRIMES_p_U", "Parent" : "128"},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.PRIMES_g_U", "Parent" : "128"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780", "Parent" : "128", "Child" : ["133", "134", "135", "139", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152"],
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
	{"ID" : "133", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.PRIMES_p_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.PRIMES_s_U", "Parent" : "132"},
	{"ID" : "135", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442", "Parent" : "132", "Child" : ["136", "137", "138"],
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
	{"ID" : "136", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442.mul_32ns_32ns_63_1_1_U169", "Parent" : "135"},
	{"ID" : "137", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442.mul_31s_31s_31_1_1_U170", "Parent" : "135"},
	{"ID" : "138", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442.mul_31ns_32ns_62_1_1_U171", "Parent" : "135"},
	{"ID" : "139", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450", "Parent" : "132", "Child" : ["140", "141", "142"],
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
	{"ID" : "140", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450.mul_32ns_32ns_63_1_1_U169", "Parent" : "139"},
	{"ID" : "141", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450.mul_31s_31s_31_1_1_U170", "Parent" : "139"},
	{"ID" : "142", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450.mul_31ns_32ns_62_1_1_U171", "Parent" : "139"},
	{"ID" : "143", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_25s_24ns_31_1_1_U248", "Parent" : "132"},
	{"ID" : "144", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_31s_24ns_31_1_1_U249", "Parent" : "132"},
	{"ID" : "145", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_25s_31s_31_1_1_U250", "Parent" : "132"},
	{"ID" : "146", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_31s_31s_31_1_1_U251", "Parent" : "132"},
	{"ID" : "147", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_25s_31s_31_1_1_U252", "Parent" : "132"},
	{"ID" : "148", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_31s_31s_31_1_1_U253", "Parent" : "132"},
	{"ID" : "149", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_25s_31s_31_1_1_U254", "Parent" : "132"},
	{"ID" : "150", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_31s_31s_31_1_1_U255", "Parent" : "132"},
	{"ID" : "151", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_32ns_32ns_63_1_1_U256", "Parent" : "132"},
	{"ID" : "152", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_32ns_31ns_63_1_1_U257", "Parent" : "132"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826", "Parent" : "128", "Child" : ["154", "155", "159"],
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
	{"ID" : "154", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.REV10_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184", "Parent" : "153", "Child" : ["156", "157", "158"],
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
	{"ID" : "156", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184.mul_32ns_32ns_63_1_1_U169", "Parent" : "155"},
	{"ID" : "157", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184.mul_31s_31s_31_1_1_U170", "Parent" : "155"},
	{"ID" : "158", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184.mul_31ns_32ns_62_1_1_U171", "Parent" : "155"},
	{"ID" : "159", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192", "Parent" : "153", "Child" : ["160", "161", "162"],
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
	{"ID" : "160", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192.mul_32ns_32ns_63_1_1_U169", "Parent" : "159"},
	{"ID" : "161", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192.mul_31s_31s_31_1_1_U170", "Parent" : "159"},
	{"ID" : "162", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192.mul_31ns_32ns_62_1_1_U171", "Parent" : "159"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841", "Parent" : "128", "Child" : ["164", "168", "169"],
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
	{"ID" : "164", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200", "Parent" : "163", "Child" : ["165", "166", "167"],
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
	{"ID" : "165", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "164"},
	{"ID" : "166", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "164"},
	{"ID" : "167", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "164"},
	{"ID" : "168", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "163"},
	{"ID" : "169", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "163"},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854", "Parent" : "128", "Child" : ["171", "172", "173", "174", "175", "176", "177", "178"],
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
	{"ID" : "171", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_32ns_32ns_63_1_1_U197", "Parent" : "170"},
	{"ID" : "172", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_31s_31s_31_1_1_U198", "Parent" : "170"},
	{"ID" : "173", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_31ns_31ns_62_1_1_U199", "Parent" : "170"},
	{"ID" : "174", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_32ns_32ns_63_1_1_U200", "Parent" : "170"},
	{"ID" : "175", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_31s_31s_31_1_1_U201", "Parent" : "170"},
	{"ID" : "176", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_31ns_31ns_62_1_1_U202", "Parent" : "170"},
	{"ID" : "177", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_mul_13s_9ns_13_4_1_U203", "Parent" : "170"},
	{"ID" : "178", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_mul_13s_9ns_13_4_1_U204", "Parent" : "170"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_8ns_61s_61_1_1_U289", "Parent" : "128"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_24ns_31_1_1_U290", "Parent" : "128"},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_24ns_31_1_1_U291", "Parent" : "128"},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U292", "Parent" : "128"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U293", "Parent" : "128"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U294", "Parent" : "128"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U295", "Parent" : "128"},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U296", "Parent" : "128"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U297", "Parent" : "128"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_24ns_31_1_1_U298", "Parent" : "128"},
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_24ns_31_1_1_U299", "Parent" : "128"},
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U300", "Parent" : "128"},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U301", "Parent" : "128"},
	{"ID" : "192", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U302", "Parent" : "128"},
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U303", "Parent" : "128"},
	{"ID" : "194", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U304", "Parent" : "128"},
	{"ID" : "195", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U305", "Parent" : "128"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_255", "Parent" : "126", "Child" : ["197", "198", "199"],
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
	{"ID" : "197", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_255.mul_32ns_32ns_63_1_1_U169", "Parent" : "196"},
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_255.mul_31s_31s_31_1_1_U170", "Parent" : "196"},
	{"ID" : "199", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_255.mul_31ns_32ns_62_1_1_U171", "Parent" : "196"},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_265", "Parent" : "126", "Child" : ["201", "202", "203"],
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
	{"ID" : "201", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_265.mul_32ns_32ns_63_1_1_U169", "Parent" : "200"},
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_265.mul_31s_31s_31_1_1_U170", "Parent" : "200"},
	{"ID" : "203", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_265.mul_31ns_32ns_62_1_1_U171", "Parent" : "200"},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281", "Parent" : "126", "Child" : ["205", "209", "210"],
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
	{"ID" : "205", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.y_modp_montymul_fu_200", "Parent" : "204", "Child" : ["206", "207", "208"],
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
	{"ID" : "206", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "205"},
	{"ID" : "207", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "205"},
	{"ID" : "208", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "205"},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "204"},
	{"ID" : "210", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "204"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_NTT2_ext_1_fu_3357", "Parent" : "109", "Child" : ["212", "216", "217"],
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
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_NTT2_ext_1_fu_3357.y_modp_montymul_fu_200", "Parent" : "211", "Child" : ["213", "214", "215"],
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
	{"ID" : "213", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_NTT2_ext_1_fu_3357.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "212"},
	{"ID" : "214", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_NTT2_ext_1_fu_3357.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "212"},
	{"ID" : "215", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_NTT2_ext_1_fu_3357.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "212"},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_NTT2_ext_1_fu_3357.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "211"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_NTT2_ext_1_fu_3357.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "211"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386", "Parent" : "109", "Child" : ["219", "220", "221", "222", "223", "224", "225", "226"],
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
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_32ns_32ns_63_1_1_U197", "Parent" : "218"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_31s_31s_31_1_1_U198", "Parent" : "218"},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_31ns_31ns_62_1_1_U199", "Parent" : "218"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_32ns_32ns_63_1_1_U200", "Parent" : "218"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_31s_31s_31_1_1_U201", "Parent" : "218"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_31ns_31ns_62_1_1_U202", "Parent" : "218"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_mul_13s_9ns_13_4_1_U203", "Parent" : "218"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_mul_13s_9ns_13_4_1_U204", "Parent" : "218"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3413", "Parent" : "109", "Child" : ["228", "229", "230"],
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
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3413.mul_32ns_32ns_63_1_1_U169", "Parent" : "227"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3413.mul_31s_31s_31_1_1_U170", "Parent" : "227"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3413.mul_31ns_32ns_62_1_1_U171", "Parent" : "227"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3425", "Parent" : "109", "Child" : ["232", "233", "234"],
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
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3425.mul_32ns_32ns_63_1_1_U169", "Parent" : "231"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3425.mul_31s_31s_31_1_1_U170", "Parent" : "231"},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3425.mul_31ns_32ns_62_1_1_U171", "Parent" : "231"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3437", "Parent" : "109", "Child" : ["236", "237", "238"],
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
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3437.mul_32ns_32ns_63_1_1_U169", "Parent" : "235"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3437.mul_31s_31s_31_1_1_U170", "Parent" : "235"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3437.mul_31ns_32ns_62_1_1_U171", "Parent" : "235"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3463", "Parent" : "109", "Child" : ["240", "241", "242"],
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
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3463.mul_32ns_32ns_63_1_1_U169", "Parent" : "239"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3463.mul_31s_31s_31_1_1_U170", "Parent" : "239"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3463.mul_31ns_32ns_62_1_1_U171", "Parent" : "239"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.tmp_47_modp_montymul_fu_3473", "Parent" : "109", "Child" : ["244", "245", "246"],
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
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.tmp_47_modp_montymul_fu_3473.mul_32ns_32ns_63_1_1_U169", "Parent" : "243"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.tmp_47_modp_montymul_fu_3473.mul_31s_31s_31_1_1_U170", "Parent" : "243"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.tmp_47_modp_montymul_fu_3473.mul_31ns_32ns_62_1_1_U171", "Parent" : "243"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.tmp_48_modp_montymul_fu_3482", "Parent" : "109", "Child" : ["248", "249", "250"],
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
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.tmp_48_modp_montymul_fu_3482.mul_32ns_32ns_63_1_1_U169", "Parent" : "247"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.tmp_48_modp_montymul_fu_3482.mul_31s_31s_31_1_1_U170", "Parent" : "247"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.tmp_48_modp_montymul_fu_3482.mul_31ns_32ns_62_1_1_U171", "Parent" : "247"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500", "Parent" : "109", "Child" : ["252", "253", "254", "255", "256", "257", "258"],
		"CDFG" : "FFT_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "255547",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "fpr_gm_tab", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_968_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_959_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_953_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500.fpr_gm_tab_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500.dadddsub_64ns_64ns_64_2_full_dsp_1_U214", "Parent" : "251"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500.dadddsub_64ns_64ns_64_2_full_dsp_1_U215", "Parent" : "251"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500.dmul_64ns_64ns_64_2_max_dsp_1_U216", "Parent" : "251"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500.dmul_64ns_64ns_64_2_max_dsp_1_U217", "Parent" : "251"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500.dmul_64ns_64ns_64_2_max_dsp_1_U218", "Parent" : "251"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500.dmul_64ns_64ns_64_2_max_dsp_1_U219", "Parent" : "251"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_fpr_of_fu_3517", "Parent" : "109", "Child" : ["260"],
		"CDFG" : "fpr_of",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_fpr_of_fu_3517.sitodp_64ns_64_2_no_dsp_1_U84", "Parent" : "259"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522", "Parent" : "109", "Child" : ["262", "263", "264", "265", "266", "267", "268", "269"],
		"CDFG" : "iFFT_1",
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
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "fpr_gm_tab", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fpr_p2_tab", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1468_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1459_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1453_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state14", "ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1493_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.fpr_gm_tab_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.fpr_p2_tab_U", "Parent" : "261"},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.dadddsub_64ns_64ns_64_2_full_dsp_1_U223", "Parent" : "261"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.dadddsub_64ns_64ns_64_2_full_dsp_1_U224", "Parent" : "261"},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.dmul_64ns_64ns_64_2_max_dsp_1_U225", "Parent" : "261"},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.dmul_64ns_64ns_64_2_max_dsp_1_U226", "Parent" : "261"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.dmul_64ns_64ns_64_2_max_dsp_1_U227", "Parent" : "261"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.dmul_64ns_64ns_64_2_max_dsp_1_U228", "Parent" : "261"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_fpr_rint_fu_3539", "Parent" : "109", "Child" : ["271", "272", "273"],
		"CDFG" : "fpr_rint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_fpr_rint_fu_3539.dadd_64ns_64ns_64_2_full_dsp_1_U233", "Parent" : "270"},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_fpr_rint_fu_3539.dadd_64ns_64ns_64_2_full_dsp_1_U234", "Parent" : "270"},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_fpr_rint_fu_3539.dadd_64ns_64ns_64_2_full_dsp_1_U235", "Parent" : "270"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_mod_small_signed_1_fu_3545", "Parent" : "109", "Child" : ["275", "276", "277"],
		"CDFG" : "zint_mod_small_signed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "dlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"},
			{"Name" : "R2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Rx", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1520_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_mod_small_signed_1_fu_3545.mul_31ns_32ns_63_1_1_U237", "Parent" : "274"},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_mod_small_signed_1_fu_3545.mul_31s_31s_31_1_1_U238", "Parent" : "274"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_mod_small_signed_1_fu_3545.mul_31ns_31ns_62_1_1_U239", "Parent" : "274"},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561", "Parent" : "109", "Child" : ["279", "280", "281", "285", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298"],
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
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.PRIMES_p_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.PRIMES_s_U", "Parent" : "278"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_442", "Parent" : "278", "Child" : ["282", "283", "284"],
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
	{"ID" : "282", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_442.mul_32ns_32ns_63_1_1_U169", "Parent" : "281"},
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_442.mul_31s_31s_31_1_1_U170", "Parent" : "281"},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_442.mul_31ns_32ns_62_1_1_U171", "Parent" : "281"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_450", "Parent" : "278", "Child" : ["286", "287", "288"],
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
	{"ID" : "286", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_450.mul_32ns_32ns_63_1_1_U169", "Parent" : "285"},
	{"ID" : "287", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_450.mul_31s_31s_31_1_1_U170", "Parent" : "285"},
	{"ID" : "288", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_450.mul_31ns_32ns_62_1_1_U171", "Parent" : "285"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_25s_24ns_31_1_1_U248", "Parent" : "278"},
	{"ID" : "290", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_31s_24ns_31_1_1_U249", "Parent" : "278"},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_25s_31s_31_1_1_U250", "Parent" : "278"},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_31s_31s_31_1_1_U251", "Parent" : "278"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_25s_31s_31_1_1_U252", "Parent" : "278"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_31s_31s_31_1_1_U253", "Parent" : "278"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_25s_31s_31_1_1_U254", "Parent" : "278"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_31s_31s_31_1_1_U255", "Parent" : "278"},
	{"ID" : "297", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_32ns_32ns_63_1_1_U256", "Parent" : "278"},
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_32ns_31ns_63_1_1_U257", "Parent" : "278"},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_big_to_fp_1_fu_3592", "Parent" : "109", "Child" : ["300", "302", "303"],
		"CDFG" : "poly_big_to_fp_1",
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
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "flen", "Type" : "None", "Direction" : "I"},
			{"Name" : "fstride", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2337_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_2357_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2342_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4", "ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_big_to_fp_1_fu_3592.grp_fpr_of_fu_228", "Parent" : "299", "Child" : ["301"],
		"CDFG" : "fpr_of",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "301", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_big_to_fp_1_fu_3592.grp_fpr_of_fu_228.sitodp_64ns_64_2_no_dsp_1_U84", "Parent" : "300"},
	{"ID" : "302", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_big_to_fp_1_fu_3592.dadd_64ns_64ns_64_2_full_dsp_1_U271", "Parent" : "299"},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_big_to_fp_1_fu_3592.dmul_64ns_64ns_64_2_max_dsp_1_U272", "Parent" : "299"},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_mul_fft_1_fu_3613", "Parent" : "109", "Child" : ["305", "306", "307", "308", "309", "310"],
		"CDFG" : "poly_mul_fft_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "817",
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
			{"Name" : "logn", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_511_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_mul_fft_1_fu_3613.dsub_64ns_64ns_64_2_full_dsp_1_U279", "Parent" : "304"},
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_mul_fft_1_fu_3613.dadd_64ns_64ns_64_2_full_dsp_1_U280", "Parent" : "304"},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_mul_fft_1_fu_3613.dmul_64ns_64ns_64_2_max_dsp_1_U281", "Parent" : "304"},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_mul_fft_1_fu_3613.dmul_64ns_64ns_64_2_max_dsp_1_U282", "Parent" : "304"},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_mul_fft_1_fu_3613.dmul_64ns_64ns_64_2_max_dsp_1_U283", "Parent" : "304"},
	{"ID" : "310", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_mul_fft_1_fu_3613.dmul_64ns_64ns_64_2_max_dsp_1_U284", "Parent" : "304"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626", "Parent" : "109", "Child" : ["312", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344"],
		"CDFG" : "zint_bezout_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2915067", "EstimateLatencyMax" : "2915067",
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
					{"ID" : "312", "SubInstance" : "grp_zint_co_reduce_mod_1_fu_674", "Port" : "vla18", "Inst_start_state" : "28", "Inst_end_state" : "29"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state8_blk"}},
			{"Name" : "Loop 4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state9_blk"}},
			{"Name" : "Loop 5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state12", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state11"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2066_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state17", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state18"], "PreState" : ["ap_ST_fsm_state16"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2107_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state19"], "PostState" : ["ap_ST_fsm_state21"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state20_blk"}},
			{"Name" : "VITIS_LOOP_1749_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state21", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state21"], "PreState" : ["ap_ST_fsm_state20"], "PostState" : ["ap_ST_fsm_state23"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1716_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state23", "LastState" : ["ap_ST_fsm_state24"], "QuitState" : ["ap_ST_fsm_state23"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1716_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state25", "LastState" : ["ap_ST_fsm_state26"], "QuitState" : ["ap_ST_fsm_state25"], "PreState" : ["ap_ST_fsm_state23"], "PostState" : ["ap_ST_fsm_state27"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2043_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state16", "LastState" : ["ap_ST_fsm_state29"], "QuitState" : ["ap_ST_fsm_state16"], "PreState" : ["ap_ST_fsm_state15"], "PostState" : ["ap_ST_fsm_state30"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2193_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state31", "LastState" : ["ap_ST_fsm_state32"], "QuitState" : ["ap_ST_fsm_state31"], "PreState" : ["ap_ST_fsm_state30"], "PostState" : ["ap_ST_fsm_state33"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674", "Parent" : "311", "Child" : ["313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324"],
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
	{"ID" : "313", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U321", "Parent" : "312"},
	{"ID" : "314", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U322", "Parent" : "312"},
	{"ID" : "315", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U323", "Parent" : "312"},
	{"ID" : "316", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U324", "Parent" : "312"},
	{"ID" : "317", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U325", "Parent" : "312"},
	{"ID" : "318", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U326", "Parent" : "312"},
	{"ID" : "319", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_64s_64_1_1_U327", "Parent" : "312"},
	{"ID" : "320", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_64s_64_1_1_U328", "Parent" : "312"},
	{"ID" : "321", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_64s_64_1_1_U329", "Parent" : "312"},
	{"ID" : "322", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_31ns_63_1_1_U330", "Parent" : "312"},
	{"ID" : "323", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_64s_64_1_1_U331", "Parent" : "312"},
	{"ID" : "324", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_31ns_63_1_1_U332", "Parent" : "312"},
	{"ID" : "325", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U343", "Parent" : "311"},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U344", "Parent" : "311"},
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U345", "Parent" : "311"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U346", "Parent" : "311"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U347", "Parent" : "311"},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U348", "Parent" : "311"},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U349", "Parent" : "311"},
	{"ID" : "332", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U350", "Parent" : "311"},
	{"ID" : "333", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U351", "Parent" : "311"},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U352", "Parent" : "311"},
	{"ID" : "335", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U353", "Parent" : "311"},
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U354", "Parent" : "311"},
	{"ID" : "337", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U355", "Parent" : "311"},
	{"ID" : "338", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U356", "Parent" : "311"},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U357", "Parent" : "311"},
	{"ID" : "340", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U358", "Parent" : "311"},
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_64s_32ns_64_1_1_U359", "Parent" : "311"},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_64s_32ns_64_1_1_U360", "Parent" : "311"},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_64s_32ns_64_1_1_U361", "Parent" : "311"},
	{"ID" : "344", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_64s_32ns_64_1_1_U362", "Parent" : "311"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_1_fu_3632", "Parent" : "109", "Child" : ["346"],
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
	{"ID" : "346", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_1_fu_3632.mul_31ns_32s_63_1_1_U365", "Parent" : "345"},
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649", "Parent" : "109", "Child" : ["348", "349", "353", "374", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390"],
		"CDFG" : "poly_sub_scaled_ntt_1",
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
					{"ID" : "374", "SubInstance" : "grp_modp_NTT2_ext_1_fu_1171", "Port" : "vla18", "Inst_start_state" : "22", "Inst_end_state" : "26"},
					{"ID" : "353", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_1154", "Port" : "vla18", "Inst_start_state" : "2", "Inst_end_state" : "40"}]},
			{"Name" : "F", "Type" : "None", "Direction" : "I"},
			{"Name" : "Flen", "Type" : "None", "Direction" : "I"},
			{"Name" : "Fstride", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "flen_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "fstride_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "sch", "Type" : "None", "Direction" : "I"},
			{"Name" : "scl", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_1154", "Port" : "PRIMES_p", "Inst_start_state" : "2", "Inst_end_state" : "40"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_1154", "Port" : "PRIMES_s", "Inst_start_state" : "2", "Inst_end_state" : "40"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_779_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_954_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state12", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state12"], "PreState" : ["ap_ST_fsm_state11"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state12_blk"}},
			{"Name" : "VITIS_LOOP_808_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state12"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_962_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state16", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state16"], "PreState" : ["ap_ST_fsm_state15"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2485_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state16"], "PostState" : ["ap_ST_fsm_state21"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1520_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state23", "LastState" : ["ap_ST_fsm_state24"], "QuitState" : ["ap_ST_fsm_state24"], "PreState" : ["ap_ST_fsm_state22"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2490_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state22", "LastState" : ["ap_ST_fsm_state25"], "QuitState" : ["ap_ST_fsm_state22"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state26"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2497_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state27", "LastState" : ["ap_ST_fsm_state29"], "QuitState" : ["ap_ST_fsm_state27"], "PreState" : ["ap_ST_fsm_state26"], "PostState" : ["ap_ST_fsm_state30"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "iNTT_loop3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state35", "LastState" : ["ap_ST_fsm_state37"], "QuitState" : ["ap_ST_fsm_state35"], "PreState" : ["ap_ST_fsm_state34"], "PostState" : ["ap_ST_fsm_state31"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "iNTT_loop2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state31", "LastState" : ["ap_ST_fsm_state35"], "QuitState" : ["ap_ST_fsm_state31"], "PreState" : ["ap_ST_fsm_state30"], "PostState" : ["ap_ST_fsm_state30"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "iNTT_loop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state30", "LastState" : ["ap_ST_fsm_state31"], "QuitState" : ["ap_ST_fsm_state30"], "PreState" : ["ap_ST_fsm_state27"], "PostState" : ["ap_ST_fsm_state38"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1373_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state38", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state38"], "PreState" : ["ap_ST_fsm_state30"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2474_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state38"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state40"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2284_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state43", "LastState" : ["ap_ST_fsm_state44"], "QuitState" : ["ap_ST_fsm_state43"], "PreState" : ["ap_ST_fsm_state42"], "PostState" : ["ap_ST_fsm_state41"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2513_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state41", "LastState" : ["ap_ST_fsm_state43"], "QuitState" : ["ap_ST_fsm_state41"], "PreState" : ["ap_ST_fsm_state40"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.REV10_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_montymul_fu_800", "Parent" : "347", "Child" : ["350", "351", "352"],
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
	{"ID" : "350", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_montymul_fu_800.mul_32ns_32ns_63_1_1_U169", "Parent" : "349"},
	{"ID" : "351", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_montymul_fu_800.mul_31s_31s_31_1_1_U170", "Parent" : "349"},
	{"ID" : "352", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_montymul_fu_800.mul_31ns_32ns_62_1_1_U171", "Parent" : "349"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154", "Parent" : "347", "Child" : ["354", "355", "356", "360", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373"],
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
	{"ID" : "354", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.PRIMES_p_U", "Parent" : "353"},
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.PRIMES_s_U", "Parent" : "353"},
	{"ID" : "356", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_442", "Parent" : "353", "Child" : ["357", "358", "359"],
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
	{"ID" : "357", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_442.mul_32ns_32ns_63_1_1_U169", "Parent" : "356"},
	{"ID" : "358", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_442.mul_31s_31s_31_1_1_U170", "Parent" : "356"},
	{"ID" : "359", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_442.mul_31ns_32ns_62_1_1_U171", "Parent" : "356"},
	{"ID" : "360", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_450", "Parent" : "353", "Child" : ["361", "362", "363"],
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
	{"ID" : "361", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_450.mul_32ns_32ns_63_1_1_U169", "Parent" : "360"},
	{"ID" : "362", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_450.mul_31s_31s_31_1_1_U170", "Parent" : "360"},
	{"ID" : "363", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_450.mul_31ns_32ns_62_1_1_U171", "Parent" : "360"},
	{"ID" : "364", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_25s_24ns_31_1_1_U248", "Parent" : "353"},
	{"ID" : "365", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_31s_24ns_31_1_1_U249", "Parent" : "353"},
	{"ID" : "366", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_25s_31s_31_1_1_U250", "Parent" : "353"},
	{"ID" : "367", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_31s_31s_31_1_1_U251", "Parent" : "353"},
	{"ID" : "368", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_25s_31s_31_1_1_U252", "Parent" : "353"},
	{"ID" : "369", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_31s_31s_31_1_1_U253", "Parent" : "353"},
	{"ID" : "370", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_25s_31s_31_1_1_U254", "Parent" : "353"},
	{"ID" : "371", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_31s_31s_31_1_1_U255", "Parent" : "353"},
	{"ID" : "372", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_32ns_32ns_63_1_1_U256", "Parent" : "353"},
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_32ns_31ns_63_1_1_U257", "Parent" : "353"},
	{"ID" : "374", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171", "Parent" : "347", "Child" : ["375", "379", "380"],
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
	{"ID" : "375", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.y_modp_montymul_fu_200", "Parent" : "374", "Child" : ["376", "377", "378"],
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
	{"ID" : "376", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "375"},
	{"ID" : "377", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "375"},
	{"ID" : "378", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "375"},
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "374"},
	{"ID" : "380", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "374"},
	{"ID" : "381", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_25s_24ns_31_1_1_U378", "Parent" : "347"},
	{"ID" : "382", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_31s_24ns_31_1_1_U379", "Parent" : "347"},
	{"ID" : "383", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_25s_31s_31_1_1_U380", "Parent" : "347"},
	{"ID" : "384", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_31s_31s_31_1_1_U381", "Parent" : "347"},
	{"ID" : "385", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_25s_31s_31_1_1_U382", "Parent" : "347"},
	{"ID" : "386", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_31s_31s_31_1_1_U383", "Parent" : "347"},
	{"ID" : "387", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_25s_31s_31_1_1_U384", "Parent" : "347"},
	{"ID" : "388", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_31s_31s_31_1_1_U385", "Parent" : "347"},
	{"ID" : "389", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mac_muladd_13s_8ns_12ns_13_4_1_U386", "Parent" : "347"},
	{"ID" : "390", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.ama_addmuladd_13s_13ns_8ns_12ns_13_4_1_U387", "Parent" : "347"},
	{"ID" : "391", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.dadddsub_64ns_64ns_64_2_full_dsp_1_U404", "Parent" : "109"},
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.dadd_64ns_64ns_64_2_full_dsp_1_U405", "Parent" : "109"},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.dmul_64ns_64ns_64_2_max_dsp_1_U406", "Parent" : "109"},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.dmul_64ns_64ns_64_2_max_dsp_1_U407", "Parent" : "109"},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.dmul_64ns_64ns_64_2_max_dsp_1_U408", "Parent" : "109"},
	{"ID" : "396", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.dmul_64ns_64ns_64_2_max_dsp_1_U409", "Parent" : "109"},
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.ddiv_64ns_64ns_64_6_no_dsp_1_U410", "Parent" : "109"},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.dcmp_64ns_64ns_1_1_no_dsp_1_U411", "Parent" : "109"},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.dcmp_64ns_64ns_1_1_no_dsp_1_U412", "Parent" : "109"},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_24ns_31_1_1_U413", "Parent" : "109"},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_24ns_31_1_1_U414", "Parent" : "109"},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U415", "Parent" : "109"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U416", "Parent" : "109"},
	{"ID" : "404", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U417", "Parent" : "109"},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U418", "Parent" : "109"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U419", "Parent" : "109"},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U420", "Parent" : "109"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_24ns_31_1_1_U421", "Parent" : "109"},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_24ns_31_1_1_U422", "Parent" : "109"},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U423", "Parent" : "109"},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U424", "Parent" : "109"},
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U425", "Parent" : "109"},
	{"ID" : "413", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U426", "Parent" : "109"},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U427", "Parent" : "109"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U428", "Parent" : "109"},
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_32ns_15ns_46_1_1_U429", "Parent" : "109"},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_32ns_15ns_46_1_1_U430", "Parent" : "109"},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_8ns_61s_61_1_1_U431", "Parent" : "109"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_8ns_64s_64_1_1_U432", "Parent" : "109"},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_24ns_31_1_1_U433", "Parent" : "109"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_24ns_31_1_1_U434", "Parent" : "109"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U435", "Parent" : "109"},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U436", "Parent" : "109"},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U437", "Parent" : "109"},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U438", "Parent" : "109"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U439", "Parent" : "109"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U440", "Parent" : "109"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_24ns_31_1_1_U441", "Parent" : "109"},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_24ns_31_1_1_U442", "Parent" : "109"},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U443", "Parent" : "109"},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U444", "Parent" : "109"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U445", "Parent" : "109"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U446", "Parent" : "109"},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U447", "Parent" : "109"},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U448", "Parent" : "109"},
	{"ID" : "436", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.mul_32s_34ns_65_1_1_U449", "Parent" : "109"},
	{"ID" : "437", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_solve_NTRU_all_1_fu_478.srem_32s_6ns_6_36_seq_1_U450", "Parent" : "109"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_montymul_fu_514", "Parent" : "106", "Child" : ["439", "440", "441"],
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
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_montymul_fu_514.mul_32ns_32ns_63_1_1_U169", "Parent" : "438"},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_montymul_fu_514.mul_31s_31s_31_1_1_U170", "Parent" : "438"},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_montymul_fu_514.mul_31ns_32ns_62_1_1_U171", "Parent" : "438"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_montymul_fu_524", "Parent" : "106", "Child" : ["443", "444", "445"],
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
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_montymul_fu_524.mul_32ns_32ns_63_1_1_U169", "Parent" : "442"},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_montymul_fu_524.mul_31s_31s_31_1_1_U170", "Parent" : "442"},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_montymul_fu_524.mul_31ns_32ns_62_1_1_U171", "Parent" : "442"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_NTT2_ext_1_fu_542", "Parent" : "106", "Child" : ["447", "451", "452"],
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
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_NTT2_ext_1_fu_542.y_modp_montymul_fu_200", "Parent" : "446", "Child" : ["448", "449", "450"],
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
	{"ID" : "448", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_NTT2_ext_1_fu_542.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "447"},
	{"ID" : "449", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_NTT2_ext_1_fu_542.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "447"},
	{"ID" : "450", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_NTT2_ext_1_fu_542.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "447"},
	{"ID" : "451", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_NTT2_ext_1_fu_542.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "446"},
	{"ID" : "452", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_fu_1364.grp_modp_NTT2_ext_1_fu_542.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "446"},
	{"ID" : "453", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "454", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "455", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_full_dsp_1_U471", "Parent" : "0"},
	{"ID" : "456", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_full_dsp_1_U472", "Parent" : "0"},
	{"ID" : "457", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_full_dsp_1_U473", "Parent" : "0"},
	{"ID" : "458", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_full_dsp_1_U474", "Parent" : "0"},
	{"ID" : "459", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_max_dsp_1_U475", "Parent" : "0"},
	{"ID" : "460", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_max_dsp_1_U476", "Parent" : "0"},
	{"ID" : "461", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_max_dsp_1_U477", "Parent" : "0"},
	{"ID" : "462", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_max_dsp_1_U478", "Parent" : "0"},
	{"ID" : "463", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_6_no_dsp_1_U479", "Parent" : "0"},
	{"ID" : "464", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_1_no_dsp_1_U480", "Parent" : "0"},
	{"ID" : "465", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_63_64_1_1_U481", "Parent" : "0"},
	{"ID" : "466", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_26s_26_4_1_U482", "Parent" : "0"},
	{"ID" : "467", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_26s_26_4_1_U483", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	keygen {
		gmem0 {Type IO LastRead 40 FirstWrite 29}
		f_out {Type I LastRead 0 FirstWrite -1}
		g_out {Type I LastRead 0 FirstWrite -1}
		F_upper_out {Type I LastRead 0 FirstWrite -1}
		G_upper_out {Type I LastRead 0 FirstWrite -1}
		h_out {Type I LastRead 0 FirstWrite -1}
		seed {Type I LastRead 0 FirstWrite -1}
		RC {Type I LastRead -1 FirstWrite -1}
		gauss_1024_12289 {Type I LastRead -1 FirstWrite -1}
		fpr_gm_tab {Type I LastRead -1 FirstWrite -1}
		GMb {Type I LastRead -1 FirstWrite -1}
		iGMb {Type I LastRead -1 FirstWrite -1}
		REV10 {Type I LastRead -1 FirstWrite -1}
		MAX_BL_SMALL {Type I LastRead -1 FirstWrite -1}
		PRIMES_p {Type I LastRead -1 FirstWrite -1}
		PRIMES_g {Type I LastRead -1 FirstWrite -1}
		PRIMES_s {Type I LastRead -1 FirstWrite -1}
		fpr_p2_tab {Type I LastRead -1 FirstWrite -1}
		MAX_BL_LARGE {Type I LastRead -1 FirstWrite -1}
		BITLENGTH_avg {Type I LastRead -1 FirstWrite -1}
		BITLENGTH_std {Type I LastRead -1 FirstWrite -1}}
	poly_small_mkgauss {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		f {Type O LastRead -1 FirstWrite 5}
		RC {Type I LastRead -1 FirstWrite -1}
		gauss_1024_12289 {Type I LastRead -1 FirstWrite -1}}
	get_rng_u64_82_101 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		rng_dptr_read {Type I LastRead 0 FirstWrite -1}
		RC {Type I LastRead -1 FirstWrite -1}}
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
		RC {Type I LastRead -1 FirstWrite -1}}
	fpr_of {
		i {Type I LastRead 0 FirstWrite -1}}
	FFT {
		f {Type IO LastRead 7 FirstWrite 8}
		fpr_gm_tab {Type I LastRead -1 FirstWrite -1}}
	FFT {
		f {Type IO LastRead 7 FirstWrite 8}
		fpr_gm_tab {Type I LastRead -1 FirstWrite -1}}
	iFFT {
		f {Type IO LastRead 6 FirstWrite 4}
		fpr_gm_tab {Type I LastRead -1 FirstWrite -1}}
	iFFT {
		f {Type IO LastRead 6 FirstWrite 4}
		fpr_gm_tab {Type I LastRead -1 FirstWrite -1}}
	compute_public_1 {
		h {Type IO LastRead 84 FirstWrite 2}
		f {Type I LastRead 1 FirstWrite -1}
		g {Type I LastRead 1 FirstWrite -1}
		tmp2108 {Type IO LastRead 13 FirstWrite 2}
		GMb {Type I LastRead -1 FirstWrite -1}
		iGMb {Type I LastRead -1 FirstWrite -1}}
	mq_NTT {
		a {Type IO LastRead 13 FirstWrite 14}
		GMb {Type I LastRead -1 FirstWrite -1}}
	mq_NTT_1 {
		tmp2108 {Type IO LastRead 13 FirstWrite 14}
		GMb {Type I LastRead -1 FirstWrite -1}}
	mq_montysqr {
		x {Type I LastRead 0 FirstWrite -1}}
	solve_NTRU {
		F_upper {Type IO LastRead 13 FirstWrite 9}
		G_upper {Type IO LastRead 12 FirstWrite 10}
		f {Type I LastRead 50 FirstWrite -1}
		g {Type I LastRead 50 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		REV10 {Type I LastRead -1 FirstWrite -1}
		MAX_BL_SMALL {Type I LastRead -1 FirstWrite -1}
		PRIMES_p {Type I LastRead -1 FirstWrite -1}
		PRIMES_g {Type I LastRead -1 FirstWrite -1}
		PRIMES_s {Type I LastRead -1 FirstWrite -1}
		fpr_gm_tab {Type I LastRead -1 FirstWrite -1}
		fpr_p2_tab {Type I LastRead -1 FirstWrite -1}
		MAX_BL_LARGE {Type I LastRead -1 FirstWrite -1}
		BITLENGTH_avg {Type I LastRead -1 FirstWrite -1}
		BITLENGTH_std {Type I LastRead -1 FirstWrite -1}}
	solve_NTRU_all_1 {
		f {Type I LastRead 50 FirstWrite -1}
		g {Type I LastRead 50 FirstWrite -1}
		depth_offset {Type I LastRead 0 FirstWrite -1}
		vla18 {Type IO LastRead 81 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		REV10 {Type I LastRead -1 FirstWrite -1}
		MAX_BL_SMALL {Type I LastRead -1 FirstWrite -1}
		PRIMES_p {Type I LastRead -1 FirstWrite -1}
		PRIMES_g {Type I LastRead -1 FirstWrite -1}
		PRIMES_s {Type I LastRead -1 FirstWrite -1}
		fpr_gm_tab {Type I LastRead -1 FirstWrite -1}
		fpr_p2_tab {Type I LastRead -1 FirstWrite -1}
		MAX_BL_LARGE {Type I LastRead -1 FirstWrite -1}
		BITLENGTH_avg {Type I LastRead -1 FirstWrite -1}
		BITLENGTH_std {Type I LastRead -1 FirstWrite -1}}
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
	make_fg_1 {
		vla18 {Type IO LastRead 22 FirstWrite 0}
		data {Type I LastRead 0 FirstWrite -1}
		f {Type I LastRead 1 FirstWrite -1}
		g {Type I LastRead 1 FirstWrite -1}
		depth {Type I LastRead 0 FirstWrite -1}
		out_ntt_offset {Type I LastRead 0 FirstWrite -1}
		REV10 {Type I LastRead -1 FirstWrite -1}
		MAX_BL_SMALL {Type I LastRead -1 FirstWrite -1}
		PRIMES_p {Type I LastRead -1 FirstWrite -1}
		PRIMES_g {Type I LastRead -1 FirstWrite -1}
		PRIMES_s {Type I LastRead -1 FirstWrite -1}}
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
		p0i {Type I LastRead 0 FirstWrite -1}}
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
		p0i {Type I LastRead 0 FirstWrite -1}}
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
	FFT_1 {
		vla18 {Type IO LastRead 9 FirstWrite 9}
		f {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}
		fpr_gm_tab {Type I LastRead -1 FirstWrite -1}}
	fpr_of {
		i {Type I LastRead 0 FirstWrite -1}}
	iFFT_1 {
		vla18 {Type IO LastRead 8 FirstWrite 5}
		f {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}
		fpr_gm_tab {Type I LastRead -1 FirstWrite -1}
		fpr_p2_tab {Type I LastRead -1 FirstWrite -1}}
	fpr_rint {
		x {Type I LastRead 0 FirstWrite -1}}
	zint_mod_small_signed_1 {
		vla18 {Type I LastRead 2 FirstWrite -1}
		d {Type I LastRead 0 FirstWrite -1}
		dlen {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}
		R2 {Type I LastRead 0 FirstWrite -1}
		Rx {Type I LastRead 0 FirstWrite -1}}
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
	poly_big_to_fp_1 {
		vla18 {Type IO LastRead 3 FirstWrite 1}
		d {Type I LastRead 0 FirstWrite -1}
		f {Type I LastRead 0 FirstWrite -1}
		flen {Type I LastRead 0 FirstWrite -1}
		fstride {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}}
	fpr_of {
		i {Type I LastRead 0 FirstWrite -1}}
	poly_mul_fft_1 {
		vla18 {Type IO LastRead 5 FirstWrite 7}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}}
	zint_bezout_1 {
		vla18 {Type IO LastRead 23 FirstWrite 2}}
	zint_co_reduce_mod_1 {
		vla18 {Type IO LastRead 8 FirstWrite 2}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 1 FirstWrite -1}
		m0i {Type I LastRead 1 FirstWrite -1}
		xa {Type I LastRead 1 FirstWrite -1}
		xb {Type I LastRead 1 FirstWrite -1}
		ya {Type I LastRead 1 FirstWrite -1}
		yb {Type I LastRead 1 FirstWrite -1}}
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
		logn {Type I LastRead 0 FirstWrite -1}}
	poly_sub_scaled_ntt_1 {
		vla18 {Type IO LastRead 25 FirstWrite 0}
		F {Type I LastRead 0 FirstWrite -1}
		Flen {Type I LastRead 0 FirstWrite -1}
		Fstride {Type I LastRead 0 FirstWrite -1}
		f_r {Type I LastRead 0 FirstWrite -1}
		flen_r {Type I LastRead 0 FirstWrite -1}
		fstride_r {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		sch {Type I LastRead 0 FirstWrite -1}
		scl {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		PRIMES_p {Type I LastRead 1 FirstWrite -1}
		PRIMES_g {Type I LastRead 8 FirstWrite -1}
		REV10 {Type I LastRead -1 FirstWrite -1}
		PRIMES_s {Type I LastRead -1 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
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
		p0i {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
