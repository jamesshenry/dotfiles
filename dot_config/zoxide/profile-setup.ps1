Write-Host "Initialising zoxide..." -ForegroundColor Magenta

# $env:_ZO_DATA_DIR = $data

# $data = "$PSScriptRoot\data"

# if ($false -eq (Test-Path $data)) {
#     Write-Host "Creating zoxide data dir"
#     mkdir $data
# }

Invoke-Expression (& { (zoxide init powershell --cmd cd | Out-String) })
Write-Host "Initialised" -ForegroundColor Green
