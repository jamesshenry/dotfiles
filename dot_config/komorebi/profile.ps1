Write-Host "Initialising komorebi..." -ForegroundColor Magenta

$env:KOMOREBI_CONFIG_HOME = "$home\.config\komorebi"
$env:KOMOREBI_AHK_EXE = "$home\.config\autohotkey\bin\v2\AutoHotkey64.exe"

Write-Host "Initialised" -ForegroundColor Green
