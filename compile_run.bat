@echo off
call "C:\Program Files\Microsoft Visual Studio\18\Community\VC\Auxiliary\Build\vcvarsall.bat" x64
echo.
echo ====== 编译 binary_search.c ======
cl /Fe:d:\v-c\Project8\binary_search.exe d:\v-c\Project8\binary_search.c
echo.
echo ====== 运行程序 ======
d:\v-c\Project8\binary_search.exe
echo.
pause
