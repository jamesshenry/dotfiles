if ($IsLinux -or $IsMacOS) {
    $script = $(Invoke-WebRequest https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh).Content
    /bin/bash -c $script
}
else {
    Write-Host "Use winget for your packages!"
}