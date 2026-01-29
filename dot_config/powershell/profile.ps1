Invoke-Expression (& { (zoxide init powershell | Out-String) })
Invoke-Expression (& { (atuin init powershell | Out-String) })
Invoke-Expression (& { (starship init powershell | Out-String) })

Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -Colors @{ InlinePrediction = '#8A0303' }
Set-PSReadLineOption -PredictionViewStyle ListView

# Aliases
New-Alias -Name grep -Value Select-String -Force

# Env vars

. "$PSScriptRoot\profile-setup-handler.ps1"
