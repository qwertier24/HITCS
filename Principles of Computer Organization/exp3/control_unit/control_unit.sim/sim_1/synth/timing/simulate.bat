@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim tb_cu_time_synth -key {Post-Synthesis:sim_1:Timing:tb_cu} -tclbatch tb_cu.tcl -view E:/principles-of-computer-organization/exp3/control_unit/tb_cu_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
