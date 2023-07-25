@echo off
SET compiler_dir="C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.31.31103\bin\Hostx64\x64\cl.exe"

SET RAYLIB_VERSION=raylib-4.5.0_win64_msvc16

SET raylib_include_dir="D:\libraries\%RAYLIB_VERSION%\include"
SET raylib_link_dir="D:\libraries\%RAYLIB_VERSION%\lib"

echo %raylib_include_dir%

%compiler_dir% /EHsc /Zi^
 src/main.cpp^
 /I%raylib_include_dir%^
 /LIBPATH:%raylib_link_dir%

