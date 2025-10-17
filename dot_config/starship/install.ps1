if ($IsWindows) {
    winget install --id Starship.Starship
}
elseif ($IsLinux) {
    curl -sS https://starship.rs/install.sh | sh
}
'
function Invoke-Starship-PreCommand {
    $loc = $executionContext.SessionState.Path.CurrentLocation;
    $prompt = "$([char]27)]9;12$([char]7)"
    if ($loc.Provider.Name -eq "FileSystem") {
        $prompt += "$([char]27)]9;9;`"$($loc.ProviderPath)`"$([char]27)\"
    }
    $host.ui.Write($prompt)
}

function Invoke-Starship-TransientFunction {
    &starship module character
}

Invoke-Expression (&starship init powershell)

Enable-TransientPrompt
Write-Host "Starship enabled"
' > $PSScriptRoot/../powershell/profile_scripts/starship.ps1