$vcvarsall = "C:\Program Files\Microsoft Visual Studio\18\Community\VC\Auxiliary\Build\vcvarsall.bat"
$scriptContent = @"
@echo off
call "$vcvarsall" x64
cl /Fe:d:\v-c\Project8\binary_search.exe d:\v-c\Project8\binary_search.c
d:\v-c\Project8\binary_search.exe
"@

$tempBat = "$env:TEMP\compile_run_$PID.bat"
$scriptContent | Out-File -FilePath $tempBat -Encoding ASCII
& cmd.exe /c $tempBat
Remove-Item $tempBat -Force
