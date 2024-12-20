Write-Host "Checking .config folder for profile-setup.ps1 scripts..."

$profileSetupList = Get-ChildItem "$PSScriptRoot\*\profile-setup.ps1" -Recurse -Depth 1

foreach ($item in $profileSetupList) {
    . $item
}
