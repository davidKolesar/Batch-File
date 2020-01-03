@echo off
title System Information

cls
echo ***********************************************************
echo Collect Computer System Information
echo David Kolesar
echo ***********************************************************
:Program Options
echo .  
echo Select Option By Number:
echo.
echo 1) Generate System and Network Information File
echo 2) Exit

:Start
set /p choice= 
if %choice%==1 GOTO Option 1
if %choice%==2 GOTO Exit

:Option 1
echo Generating File
>systemInformation.txt (
echo Computer Name :
hostname
echo System Information:
systeminfo 
echo Network Properties : 
ipconfig /all
echo Network Connections : 
netstat
echo Date:
echo %DATE%
echo Time: 
echo %TIME%
)
cls
goto :Program Options

:Exit
echo Goodbye
exit
