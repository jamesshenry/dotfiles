# Write-Host "Initialising autohotkey..." -ForegroundColor Magenta

# [FileInfo]$compiledScripts = . "$PSScriptRoot\compile-scripts.ps1"

# $shellStartupPath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\"
# $startupLinks = Get-ChildItem $shellStartupPath
# $exesPath = "$PSScriptRoot\exes\"

# foreach ($exe in $compiledScripts) {
#     $newLink = [System.IO.FileInfo]::new("$shellStartupPath$($exe.Name)")
#     if (-not $startupLinks.Name.Contains($newLink.Name)) {
#         Write-Host "New script found: $($newLink.Name)"
#         New-Item -Path $newLink -ItemType SymbolicLink -Value $exe
#     }

#     $process = Get-Process "$($exe.BaseName)" -ErrorAction SilentlyContinue
#     if ($null -eq $process) {
#         Write-Host "Starting $($exe.BaseName) script" -ForegroundColor Yellow
#         Start-Process $newLink
#     }
# }

# Write-Host "Initialised" -ForegroundColor Green
