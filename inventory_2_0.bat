@echo off
title Wolf Inventory 2.0
color 3

:intro
echo ============================================
echo ============================================
echo =====Wolfie World Entertainment=============
echo ============Presents========================
echo =============Wolf Inventory 2.0=============
echo ============================================
echo ============================================
TIMEOUT /T 5

:home
cls
echo.
echo Your Company Name Here
echo ======================
echo.
echo [1] Log In
echo [2] Sign Up
echo [3] Exit
echo.
set /p op=
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
goto error

:2
cls
echo Sign Up
echo ======================================
echo.
set /p newname="Enter new username:"
if "%newname%"=="%newname%" goto inputname

:inputname
cd "%userprofile%\documents"
if exist "cmdacoBin" goto skip
if not exist "cmdacoBin" goto noskip

:noskip
md "cmdacoBin"
goto skip

:skip
cd "%userprofile%\documents\cmdacoBin"
if exist "%newname%.bat" goto namexist
if not exist "%newname%.bat" goto skip2

:skip2
echo set realusername=%newname%> "%newname%.bat"
goto next

:next
echo.
set /p pswd=Enter new Password:
if "%pswd%"=="%pswd%" goto inputpass

:inputpass
cd "%userprofile%\documents\cmdacoBin"
echo set password=%pswd%>> "%newname%.bat"
goto next1

:namexist
echo.
echo The entered username already exists.
echo Press any key to return. . .
pause >nul
goto 2

:next1
cls
echo Cmd Accounts
echo ============
echo.
echo Your account has been successfully created!
echo.
pause
goto home

:1
color 07
cls
echo Cmd Accounts Log In
echo ================================
echo.
Set /p logname=Username:
if "%logname%"=="%logname%" goto 2.1

:2.1
echo.
set /p logpass="Password:"
if "%logpass%"=="%logpass%" goto login

:login
cd "%userprofile%\documents\cmdacoBin"
if exist "%logname%.bat" goto call
if not exist "%logname%.bat" goto errorlog

:call
call "%logname%.bat"
if "%password%"=="%logpass%" goto logdone
goto errorlog

:errorlog
color 0c
echo.
echo Username or Password incorrect.
echo Access denied.
pause >nul
goto home

:logdone
cls
echo Command Prompt
echo ==============
echo.
echo Successfully logged in!
echo.
pause
goto account

:account
cls

REM this is the section where I want the inventory system to start.

:cmd
cls
echo.
echo Inventory Main Menu
echo ===================
echo.
echo [1] Current Inventory
echo [2] Receive
echo [3] Ship
echo [4] Logoff
echo.
set /p mm=
if %mm%==1 goto 100
if %mm%==2 goto 200
if %mm%==3 goto 300
if %mm%==4 goto 400
goto error



REM this is the section above that sets up user accounts
REM i'm going to use it as the new sku number setup


REM :2
REM cls
REM echo Sign Up
REM echo ======================================
REM echo.
REM set /p newname="Enter new username:"
REM if "%newname%"=="%newname%" goto inputname

REM :inputname
REM cd "%userprofile%\documents"
REM if exist "cmdacoBin" goto skip
REM if not exist "cmdacoBin" goto noskip

REM :noskip
REM md "cmdacoBin"
REM goto skip

REM :skip
REM cd "%userprofile%\documents\cmdacoBin"
REM if exist "%newname%.bat" goto namexist
REM if not exist "%newname%.bat" goto skip2

REM :skip2
REM echo set realusername=%newname%> "%newname%.bat"
REM goto next

REM :next
REM echo.
REM set /p pswd=Enter new Password:
REM if "%pswd%"=="%pswd%" goto inputpass

REM :inputpass
REM cd "%userprofile%\documents\cmdacoBin"
REM echo set password=%pswd%>> "%newname%.bat"
REM goto next1

REM :namexist
REM echo.
REM echo The entered username already exists.
REM echo Press any key to return. . .
REM pause >nul
REM goto 2

REM :next1
REM cls
REM echo Cmd Accounts
REM echo ============
REM echo.
REM echo Your account has been successfully created!
REM echo.
REM pause
REM goto home