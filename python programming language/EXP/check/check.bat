@echo off
for /l %%i in (1,1,10) do python  >"data.in" gen.py & python 0<"data.in" 1>"data.ans" std.py  & python 0<"data.in" 1>"data.out" my.py  & fc "data.out" "data.ans"
pause
