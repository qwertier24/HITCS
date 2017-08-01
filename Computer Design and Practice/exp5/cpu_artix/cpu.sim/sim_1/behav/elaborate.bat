@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 9716ed82fff442898a6e4980f8bf1f8b -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_cpu_behav xil_defaultlib.tb_cpu -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
