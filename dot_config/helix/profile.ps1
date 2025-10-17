Write-Host "Initialising helix..." -ForegroundColor Magenta

Function Start-Helix ([string[]]$arguments) { hx -c "$env:XDG_CONFIG_HOME\helix\config.toml" (-join $arguments) }
Set-Alias -Name hlx -Value Start-Helix

Write-Host "Initialised" -ForegroundColor Green
