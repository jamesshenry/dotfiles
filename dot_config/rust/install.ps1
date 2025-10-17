$rustupHome = "RUSTUP_HOME"
$cargoHome = "CARGO_HOME"
Write-Host "Setting $rustupHome"
[Environment]::SetEnvironmentVariable($rustupHome, "$HOME\.config\rust\.rustup", 'User')
Write-Host "Setting $cargoHome"
[Environment]::SetEnvironmentVariable($cargoHome, "$HOME\.config\rust\.cargo", 'User')
Write-Host "Installing Rustup..."

if ($IsWindows) {
    winget install --id Rustlang.Rustup
}