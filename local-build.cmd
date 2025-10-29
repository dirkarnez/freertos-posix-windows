@echo off

@REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOADS_DIR=%USERPROFILE%\Downloads
@REM set PREFIX=%DOWNLOADS_DIR%
set PREFIX=D:\Softwares

set DOWNLOADS_DIR_LINUX=%DOWNLOADS_DIR:\=/%

set PATH=^
%PREFIX%\PortableGit\bin;^
%PREFIX%\x86_64-15.2.0-release-posix-seh-msvcrt-rt_v13-rev0\mingw64\bin;^
%PREFIX%\cmake-3.29.3-windows-x86_64\bin;

cmake.exe -G"MinGW Makefiles" ^
-DCMAKE_BUILD_TYPE=Debug ^
-B./cmake-build &&^
cd cmake-build &&^
cmake --build . &&^
echo "Successful build"

pause
