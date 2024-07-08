if ($IsWindows) {
    winget install Microsoft.DotNet.SDK.8
} elseif ($IsLinux) {
    Write-Host "Run ``sudo apt install dotnet-sdk-8.0`` if running on Ubuntu"
}
