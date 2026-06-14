# Force UTF-8 for console output and piping
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

Invoke-Expression (& { (atuin init powershell | Out-String) })
Invoke-Expression (& { (starship init powershell | Out-String) })

# function Invoke-Starship-PreCommand {
#     $loc = $executionContext.SessionState.Path.CurrentLocation;
#     $prompt = "$([char]27)]9;12$([char]7)"
#     if ($loc.Provider.Name -eq 'FileSystem') {
#         $prompt += "$([char]27)]9;9;`"$($loc.ProviderPath)`"$([char]27)\"
#     }
#     $host.ui.Write($prompt)
# }
Set-Alias -Name lg -Value lazygit
Invoke-Expression (& { (zoxide init powershell --cmd cd | Out-String) })


# Add to $PROFILE
function prompt {
    prmt --code $LASTEXITCODE '{path:cyan:s} {git:purple:s:on :} {ok:green}{fail:red} '
}
