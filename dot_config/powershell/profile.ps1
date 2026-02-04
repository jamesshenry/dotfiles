Invoke-Expression (& { (zoxide init powershell --cmd cd | Out-String) })
Invoke-Expression (& { (atuin init powershell | Out-String) })
Invoke-Expression (& { (starship init powershell | Out-String) })

function Invoke-Starship-PreCommand {
    $loc = $executionContext.SessionState.Path.CurrentLocation;
    $prompt = "$([char]27)]9;12$([char]7)"
    if ($loc.Provider.Name -eq 'FileSystem') {
        $prompt += "$([char]27)]9;9;`"$($loc.ProviderPath)`"$([char]27)\"
    }
    $host.ui.Write($prompt)
}
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
# Set-PSReadLineOption -Colors @{ InlinePrediction = '#8A0303' }
Set-PSReadLineOption -PredictionViewStyle InlineView

Set-Alias -Name lg -Value lazygit
