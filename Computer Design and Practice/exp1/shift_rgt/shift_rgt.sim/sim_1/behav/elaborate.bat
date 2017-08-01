@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 3a28f040708c4a879f8b1b1e16708741 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_shift_rgt_behav xil_defaultlib.tb_shift_rgt -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
