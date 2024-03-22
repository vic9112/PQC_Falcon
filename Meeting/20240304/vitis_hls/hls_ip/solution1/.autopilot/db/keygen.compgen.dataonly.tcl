# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
f_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
g_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
F_upper_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
G_upper_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
h_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
seed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


