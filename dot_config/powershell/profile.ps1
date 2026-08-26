# Force UTF-8 for console output and piping
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

if (Get-Module -ListAvailable PSReadLine) {
    Set-PSReadLineKeyHandler -Chord Ctrl+u -Function BackwardDeleteInput
}

# Invoke-Expression (& { (atuin init powershell | Out-String) })

Set-Alias -Name lg -Value lazygit

Invoke-Expression (& { (zoxide init powershell --cmd cd | Out-String) })

# Add to $PROFILE
function prompt {
    prmt --code $LASTEXITCODE '{path:cyan:s} {git:purple:s:on :} {ok:green}{fail:red} '
}
