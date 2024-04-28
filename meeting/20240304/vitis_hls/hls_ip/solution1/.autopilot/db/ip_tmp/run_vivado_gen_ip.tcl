create_project prj -part xc7z020-clg400-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/ubuntu/falconlab/hls_ip/solution1/syn/verilog/keygen_sitodp_64ns_64_2_no_dsp_1_ip.tcl"
source "/home/ubuntu/falconlab/hls_ip/solution1/syn/verilog/keygen_dsub_64ns_64ns_64_2_full_dsp_1_ip.tcl"
source "/home/ubuntu/falconlab/hls_ip/solution1/syn/verilog/keygen_dadd_64ns_64ns_64_2_full_dsp_1_ip.tcl"
source "/home/ubuntu/falconlab/hls_ip/solution1/syn/verilog/keygen_dadddsub_64ns_64ns_64_2_full_dsp_1_ip.tcl"
source "/home/ubuntu/falconlab/hls_ip/solution1/syn/verilog/keygen_dmul_64ns_64ns_64_2_max_dsp_1_ip.tcl"
source "/home/ubuntu/falconlab/hls_ip/solution1/syn/verilog/keygen_ddiv_64ns_64ns_64_6_no_dsp_1_ip.tcl"
source "/home/ubuntu/falconlab/hls_ip/solution1/syn/verilog/keygen_dcmp_64ns_64ns_1_1_no_dsp_1_ip.tcl"
