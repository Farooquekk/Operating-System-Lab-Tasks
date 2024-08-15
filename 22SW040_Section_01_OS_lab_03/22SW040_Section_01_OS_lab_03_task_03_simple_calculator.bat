@echo off

:menu
echo Simple Calculator
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division
echo 5. Exit
set /p choice=Enter your choice:

if %choice%==1 goto add
if %choice%==2 goto sub
if %choice%==3 goto mul
if %choice%==4 goto div
if %choice%==5 goto exit

:add
set /p n1=Enter first number:
set /p n2=Enter second number:
set /a result=%n1%+%n2%
echo Result: %result%
pause
goto menu

:sub
set /p n1=Enter first number:
set /p n2=Enter second number:
set /a result=%n1%-%n2%
echo Result: %result%
pause
goto menu

:mul
set /p n1=Enter first number:
set /p n2=Enter second number:
set /a result=%n1%*%n2%
echo Result: %result%
pause
goto menu

:div
set /p n1=Enter first number:
set /p n2=Enter second number:
set /a result=%n1%/%n2%
echo Result: %result%
pause
goto menu

:exit
exit
