
set TopModule "mq_iNTT"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 1
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix mq_iNTT_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xck26:-sfvc784:-2LV-c
set SourceFiles {sc {} c {../../hls_source/vrfy.c ../../hls_source/sign.c ../../hls_source/shake.c ../../hls_source/rng.c ../../hls_source/my_ntt.c ../../hls_source/my_intt.c ../../hls_source/keygen.c ../../hls_source/fpr.c ../../hls_source/fft.c ../../hls_source/common.c ../../hls_source/codec.c}}
set SourceFlags {sc {} c {{} {} {} {} {} {} {} {} {} {} {}}}
set DirectiveFile /home/ubuntu/Desktop/Vic_PQC_Falcon/falcon_hls_clean/solution1/solution1.directive
set TBFiles {verilog {../../hls_source/tb_data.h ../../hls_source/tb.c} bc {../../hls_source/tb_data.h ../../hls_source/tb.c} sc {../../hls_source/tb_data.h ../../hls_source/tb.c} vhdl {../../hls_source/tb_data.h ../../hls_source/tb.c} c {} cas {../../hls_source/tb_data.h ../../hls_source/tb.c}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynquplus/zynquplus}}}
set HPFPO 0
