@echo off
set xv_path=E:\\Vivado\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 66643415cb834ef7ae00102a8737db74 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Test_M8Counter_behav xil_defaultlib.Test_M8Counter xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
