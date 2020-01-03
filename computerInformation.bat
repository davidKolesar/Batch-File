@echo off
title Scrub Tools

cls
echo ***********************************************************
echo Generate System Information
echo David Kolesar
echo ***********************************************************
:Program Options
echo .  
echo Select Option By Number:
echo.
echo 1) Generate System Information File
echo 2)
echo 3) Exit

:Start
set input=
set /p input= Choice:
if %input%==1 goto :Option 1
if %input%==2 goto :Exit
if %input%==3 goto :Exit

:Option 1
echo Generating File
>information.txt (
echo Computer Name :
hostname
echo System Information:
systeminfo 
echo Network Properties : 
ipconfig /all
echo Date:
echo %DATE%
echo Time: 
echo %TIME%
)
goto :Program Options

:Option 2
goto :Program Options


:Exit
echo Goodbye
exit
