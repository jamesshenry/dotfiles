
$profileSetupList = Get-ChildItem "$PSScriptRoot\*\install.ps1" -Recurse -Depth 1

foreach ($item in $profileSetupList) {
    $moduleName = Split-Path (Split-Path $item) -Leaf
    Write-Host "Installing $moduleName..." -ForegroundColor Cyan
    . $item
}
