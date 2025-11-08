@REM run as Administrator
@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set PREFIX=%DOWNLOADS_DIR%
@REM set PREFIX=D:\Softwares

set SEVENZIP=C:\"Program Files"\7-Zip\7z.exe

set CMAKE_DIR=%PREFIX%\cmake-3.29.3-windows-x86_64
set CMAKE_EXE=%CMAKE_DIR%\bin\cmake.exe
if not exist %CMAKE_EXE% (
cd /d "%TEMP%" &&^
%SystemRoot%\System32\curl.exe "https://github.com/Kitware/CMake/releases/download/v3.29.3/cmake-3.29.3-windows-x86_64.zip" -L -O &&^
%SEVENZIP% x cmake-3.29.3-windows-x86_64.zip -o"%CMAKE_DIR%" &&^
del cmake-3.29.3-windows-x86_64.zip
)

if exist %CMAKE_EXE% (
    echo cmake %CMAKE_EXE% found
)

set GCC_DIR=%PREFIX%\x86_64-15.2.0-release-posix-seh-msvcrt-rt_v13-rev0
set GCC_EXE=%GCC_DIR%\mingw64\bin\gcc.exe
if not exist %GCC_EXE% (
cd /d "%TEMP%" &&^
%SystemRoot%\System32\curl.exe "https://github.com/niXman/mingw-builds-binaries/releases/download/15.2.0-rt_v13-rev0/x86_64-15.2.0-release-posix-seh-msvcrt-rt_v13-rev0.7z" -L -O &&^
%SEVENZIP% x x86_64-15.2.0-release-posix-seh-msvcrt-rt_v13-rev0.7z -o"%GCC_DIR%" &&^
del x86_64-15.2.0-release-posix-seh-msvcrt-rt_v13-rev0.7z
)

if exist %GCC_EXE% (
    echo gcc %GCC_EXE% found
)
