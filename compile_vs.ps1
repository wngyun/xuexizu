$ErrorActionPreference = "Continue"

Write-Host "===== 使用 Visual Studio 编译 C 程序 =====" -ForegroundColor Cyan
Write-Host ""

$batContent = @"
@echo off
call "C:\Program Files\Microsoft Visual Studio\18\Community\VC\Auxiliary\Build\vcvarsall.bat" x64 > nul 2>&1
echo PATH=%PATH%
echo INCLUDE=%INCLUDE%
echo LIB=%LIB%
cl /Fe:d:\v-c\Project8\binary_search.exe d:\v-c\Project8\binary_search.c
if exist d:\v-c\Project8\binary_search.exe (
    echo.
    echo ====== 运行程序 ======
    d:\v-c\Project8\binary_search.exe
)
"@

$tempBat = "$env:TEMP\compile_vs_$PID.bat"
$batContent | Out-File -FilePath $tempBat -Encoding ASCII

Write-Host "正在编译..." -ForegroundColor Yellow
& cmd.exe /c $tempBat

Remove-Item $tempBat -Force -ErrorAction SilentlyContinue
