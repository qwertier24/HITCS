@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xsim sim_ram_behav -key {Behavioral:sim_1:Functional:sim_ram} -tclbatch sim_ram.tcl -view E:/HITCS/principles-of-computer-organization/exp2/ram/sim_ram_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
