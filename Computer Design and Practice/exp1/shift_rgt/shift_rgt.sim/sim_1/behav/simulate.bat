@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim tb_shift_rgt_behav -key {Behavioral:sim_1:Functional:tb_shift_rgt} -tclbatch tb_shift_rgt.tcl -view E:/HITCS/Computer Design and Practice/exp1/shift_rgt/tb_shift_rgt_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
