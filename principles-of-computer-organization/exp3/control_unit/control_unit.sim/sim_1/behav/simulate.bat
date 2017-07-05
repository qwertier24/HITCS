@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim tb_cu_behav -key {Behavioral:sim_1:Functional:tb_cu} -tclbatch tb_cu.tcl -view C:/Users/Yukun Ma/Desktop/exp3/control_unit/tb_cu_behav.wcfg -view C:/Users/Yukun Ma/Desktop/exp3/control_unit/tb_cu_behav1.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
