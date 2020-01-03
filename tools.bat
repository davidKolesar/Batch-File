@echo off
title Scrub Tools

cls
echo ***********************************************************
echo WINDOWS 10 SCRUB
echo David Kolesar
echo ***********************************************************
echo .  
echo Select Option By Number:
echo.
echo 1) Option
echo 2) Exit

:Start
set input=
set /p input= Choice:
if %input%==1 goto :Option 1
if %input%==2 goto :Exit

:Option 1
echo Generating File
>information.txt (
echo Computer Name :
hostname
echo System Information:
systeminfo 
echo Network Properties : 
ipconfig /all
)
goto :Start


:Exit
echo Goodbye. 
exit
