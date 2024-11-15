Write-Host "Initialising starship..." -ForegroundColor Magenta

$env:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
$env:STARSHIP_CACHE = "$HOME\.config\starship\cache"

function Invoke-Starship-PreCommand {
    $loc = $executionContext.SessionState.Path.CurrentLocation;
    $prompt = "$([char]27)]9;12$([char]7)"
    if ($loc.Provider.Name -eq "FileSystem") {
        $prompt += "$([char]27)]9;9;`"$($loc.ProviderPath)`"$([char]27)\"
    }
    $dir = $pwd.Path.Split('\')[-1]
    $host.ui.Write($prompt)
    $host.UI.RawUI.WindowTitle = "📂 = $dir `a"
}

function Invoke-Starship-TransientFunction {
    &starship module character
}

Invoke-Expression (&starship init powershell)

Enable-TransientPrompt
Write-Host "Initialised" -ForegroundColor Green
