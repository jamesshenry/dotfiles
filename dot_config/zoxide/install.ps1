$root = (Split-Path $PSScriptRoot -Parent)

Write-Host $root

if ($IsWindows) {
    winget install --id ajeetdsouza.zoxide
}

. $PSScriptRoot\profile-setup.ps1