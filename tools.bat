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
set input=
set /p input= Choice:
if %input%==1 goto:1

:1
echo hit 1
set input=
if %input%==2 goto:2
:2
echo hit 2
exit
