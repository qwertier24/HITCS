@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 691a3a2640fb4ee1b71a08a6717d3221 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot sim_ram_behav xil_defaultlib.sim_ram -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
