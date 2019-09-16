@echo off


if "%_ARM_BUILD_PLATFORM%" == "" set _ARM_BUILD_PLATFORM=Win32
set _ARM_BUILD_CONFIG=release
if not "%1" == "" set _ARM_BUILD_CONFIG=%1
set  _ARM_CURRENT_DIR=%CD%


rem ******* then build applications *******
call %_ARM_CURRENT_DIR%\build_dir.cmd aaaproj
rem call %_ARM_CURRENT_DIR%\build_dir.cmd src\bin\prnw_userui


rem ******* clean all source tree
call clean_all.cmd

set  _ARM_CURRENT_DIR=
set  _ARM_BUILD_PLATFORM=
set  _ARM_BUILD_CONFIG=
