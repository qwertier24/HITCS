@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto f8ee90f779794ef8b335835f9040ed11 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot test_top_behav xil_defaultlib.test_top -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
