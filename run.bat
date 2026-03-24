@echo off
cd /d "d:\v-c\Project8"
call "C:\Program Files\Microsoft Visual Studio\18\Community\VC\Auxiliary\Build\vcvarsall.bat" x64
cl /Fe:binary_search.exe binary_search.c
if exist binary_search.exe (
    echo.
    echo ====== 程序运行结果 ======
    binary_search.exe
) else (
    echo 编译失败！
)
