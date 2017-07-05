@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 3e440e62e3c14a2ea3ff4d04cf401099 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_cu_behav xil_defaultlib.tb_cu -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
