$vcvarsall = "C:\Program Files\Microsoft Visual Studio\18\Community\VC\Auxiliary\Build\vcvarsall.bat"

Write-Host "Running vcvarsall.bat to set up environment..."
$cmdScript = @"
@echo off
call "$vcvarsall" x64
set
"@

$tempBat = "$env:TEMP\vcvars_$PID.bat"
$cmdScript | Out-File -FilePath $tempBat -Encoding ASCII

$pinfo = New-Object System.Diagnostics.ProcessStartInfo
$pinfo.FileName = "cmd.exe"
$pinfo.Arguments = "/c $tempBat"
$pinfo.RedirectStandardOutput = $true
$pinfo.RedirectStandardError = $true
$pinfo.UseShellExecute = $false
$pinfo.CreateNoWindow = $true

$p = New-Object System.Diagnostics.Process
$p.StartInfo = $pinfo
$p.Start() | Out-Null
$stdout = $p.StandardOutput.ReadToEnd()
$p.WaitForExit()

Remove-Item $tempBat -Force

Write-Host "Parsing environment variables..."
$lines = $stdout -split "`n"
foreach ($line in $lines) {
    if ($line -match "^([^=]+)=(.*)$") {
        $name = $matches[1].Trim()
        $value = $matches[2].Trim()
        if ($name -and $value) {
            if ($name -eq "Path") {
                $env:Path = $value
            } else {
                Set-Item -Path "env:$name" -Value $value -ErrorAction SilentlyContinue
            }
        }
    }
}

Write-Host "Testing cl.exe..."
& cl.exe /?

Write-Host "`nCompiling binary_search.c..."
& cl.exe /Fe:d:\v-c\Project8\binary_search.exe d:\v-c\Project8\binary_search.c 2>&1
