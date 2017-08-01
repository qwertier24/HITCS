@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim tb_cpu_time_impl -key {Post-Implementation:sim_1:Timing:tb_cpu} -tclbatch tb_cpu.tcl -view E:/HITCS/exp5/cpu/tb_cpu_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
