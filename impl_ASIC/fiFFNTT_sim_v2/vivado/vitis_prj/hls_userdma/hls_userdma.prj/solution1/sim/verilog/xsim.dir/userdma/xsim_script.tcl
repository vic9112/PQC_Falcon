set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {userdma} -view {{userdma_dataflow_ana.wcfg}} -tclbatch {userdma.tcl} -protoinst {userdma.protoinst}
