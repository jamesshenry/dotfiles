Write-Host "Installing ripgrep" -ForegroundColor Yellow
[Environment]::SetEnvironmentVariable('RIPGREP_CONFIG_PATH', "$HOME\.config\ripgrep\.ripgreprc", 'User')

if ($IsWindows) {
    winget install BurntSushi.ripgrep.MSVC
}
elseif ($IsLinux || $IsMacOS) {
    if ($null -eq (Get-Command brew)) {
        ..\homebrew\install.ps1
    }
    brew install ripgrep
}
