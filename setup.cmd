@REM run as Administrator
@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads
@REM set PREFIX=%DOWNLOADS_DIR%
set PREFIX=D:\Softwares

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

set GCC_DIR=%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1
set GCC_EXE=%GCC_DIR%\mingw64\bin\gcc.exe
if not exist %GCC_EXE% (
cd /d "%TEMP%" &&^
%SystemRoot%\System32\curl.exe "https://github.com/brechtsanders/winlibs_mingw/releases/download/11.2.0-12.0.1-9.0.0-r1/winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1.zip" -L -O &&^
%SEVENZIP% x winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1.zip -o"%GCC_DIR%" &&^
del winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1.zip
)

if exist %GCC_EXE% (
    echo gcc %GCC_EXE% found
)
