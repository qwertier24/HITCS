@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 1a1ec4e374e74d6187706cacb730e259 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_fsm_behav xil_defaultlib.tb_fsm -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
