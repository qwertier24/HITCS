# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/HITCS/principles-of-computer-organization/exp2/ram2114/ram2114.cache/wt [current_project]
set_property parent.project_path E:/HITCS/principles-of-computer-organization/exp2/ram2114/ram2114.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo e:/HITCS/principles-of-computer-organization/exp2/ram2114/ram2114.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib E:/HITCS/principles-of-computer-organization/exp2/ram2114/ram2114.srcs/sources_1/new/ram2114.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/HITCS/principles-of-computer-organization/exp2/ram2114/ram2114.srcs/constrs_1/imports/other/Nexys4DDR_Master.xdc
set_property used_in_implementation false [get_files E:/HITCS/principles-of-computer-organization/exp2/ram2114/ram2114.srcs/constrs_1/imports/other/Nexys4DDR_Master.xdc]


synth_design -top ram2114 -part xc7a100tcsg324-1


write_checkpoint -force -noxdef ram2114.dcp

catch { report_utilization -file ram2114_utilization_synth.rpt -pb ram2114_utilization_synth.pb }
