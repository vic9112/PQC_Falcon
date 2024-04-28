
set TopModule "keygen"
set ClockPeriod 100
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
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
set RtlSubPrefix keygen_
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
set TargetInfo xc7z020:-clg400:-1
set SourceFiles {sc {} c {../../../FalconHLS/code_hls/vrfy.c ../../../FalconHLS/code_hls/sign.c ../../../FalconHLS/code_hls/shake.c ../../../FalconHLS/code_hls/rng.c ../../../FalconHLS/code_hls/keygen.c ../../../FalconHLS/code_hls/fpr.c ../../../FalconHLS/code_hls/fft.c ../../../FalconHLS/code_hls/common.c ../../../FalconHLS/code_hls/codec.c}}
set SourceFlags {sc {} c {{} {} {} {} {} {} {} {} {}}}
set DirectiveFile /home/ubuntu/falconlab/hls_ip/solution1/solution1.directive
set TBFiles {verilog {../../../FalconHLS/code_hls/tb_data.h ../../../FalconHLS/code_hls/tb.c} bc {../../../FalconHLS/code_hls/tb_data.h ../../../FalconHLS/code_hls/tb.c} sc {../../../FalconHLS/code_hls/tb_data.h ../../../FalconHLS/code_hls/tb.c} vhdl {../../../FalconHLS/code_hls/tb_data.h ../../../FalconHLS/code_hls/tb.c} c {} cas {../../../FalconHLS/code_hls/tb_data.h ../../../FalconHLS/code_hls/tb.c}}
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
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq}}}
set HPFPO 0
