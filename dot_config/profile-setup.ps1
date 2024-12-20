Write-Host "Checking .config folder for profile-setup.ps1 scripts..."

$profileSetupList = (Get-ChildItem "$PSScriptRoot\*\profile.ps1").FullName

foreach ($item in $profileSetupList) {
    . $item
}
