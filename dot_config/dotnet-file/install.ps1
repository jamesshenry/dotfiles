$dotnet = Get-Command dotnet

if ($null -eq $dotnet) {
    Write-Host "Install dotnet cli first please";
    Exit;
}
Write-Host "Installing dotnet-file" -ForegroundColor Magenta
dotnet tool install --global dotnet-file

Write-Host "Tool installed" -ForegroundColor Green
