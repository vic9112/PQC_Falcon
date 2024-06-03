# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
s2m_buf_sts { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 16
	offset_end 23
}
s2m_len { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
s2m_enb_clrsts { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
s2mbuf { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 48
	offset_end 59
}
s2m_err { 
	dir O
	width 2
	depth 1
	mode ap_vld
	offset 60
	offset_end 67
}
m2sbuf { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
m2s_buf_sts { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 88
	offset_end 95
}
m2s_len { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
m2s_enb_clrsts { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


