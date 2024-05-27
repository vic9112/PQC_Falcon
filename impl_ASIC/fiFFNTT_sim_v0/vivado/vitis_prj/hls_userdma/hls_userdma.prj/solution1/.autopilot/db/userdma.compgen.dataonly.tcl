# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
kernel_mode { 
	dir I
	width 2
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
s2m_buf_sts { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 24
	offset_end 31
}
m2s_buf_sts { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 40
	offset_end 47
}
s2mbuf { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 56
	offset_end 67
}
m2sbuf { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 68
	offset_end 79
}
s2m_err { 
	dir O
	width 2
	depth 1
	mode ap_vld
	offset 80
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


