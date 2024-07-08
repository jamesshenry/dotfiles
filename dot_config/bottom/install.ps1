Write-Host "Installing bottom..." -ForegroundColor Yellow

if ($IsWindows) {
    winget install --id Clement.bottom
}
elseif ($IsLinux) {
    curl -LO https://github.com/ClementTsang/bottom/releases/download/0.9.6/bottom_0.9.6_amd64.deb
    sudo dpkg -i bottom_0.9.6_amd64.deb

}
