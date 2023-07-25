@echo off
SET compiler_dir="C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.31.31103\bin\Hostx64\x64\cl.exe"

SET RAYLIB_VERSION=raylib-4.5.0_win64_msvc16

SET raylib_include_dir="D:\libraries\%RAYLIB_VERSION%\include"
SET raylib_link_dir="D:\libraries\%RAYLIB_VERSION%\lib"

echo %raylib_include_dir%
echo %raylib_link_dir%

REM /Wall - disabling for now @TODO: make warning sensible
%compiler_dir% /EHsc /Zi^
 /Fe:"caravan-winds"^
 src/main.cpp^
 /I%raylib_include_dir%^
 /link /LIBPATH:%raylib_link_dir% /NODEFAULTLIB:libcmt^
 raylib.lib gdi32.lib User32.lib Shell32.lib winmm.lib kernel32.lib

