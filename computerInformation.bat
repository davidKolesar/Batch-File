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
echo 2) Generate System and Network Information to console
echo 3) Exit

:Start
set input=
set /p input= Choice:
if %input%==1 goto :Option 1
if %input%==2 goto :Option 2
if %input%==3 goto :Exit

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

:Option 2
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
goto :Program Options


:Exit
echo Goodbye
exit
