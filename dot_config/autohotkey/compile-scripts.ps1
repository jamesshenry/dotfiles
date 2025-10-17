Write-Host "Compiling ahk scripts..."

$scripts = Get-ChildItem "$PSScriptRoot\scripts"
$exesDir = "$PSScriptRoot\exes"
$compiler = "$PSScriptRoot\bin\Compiler\Ahk2Exe.exe"
$base = "$PSScriptRoot\bin\v2\AutoHotkey64.exe"
foreach ($script in $scripts) {
    <# $script is the current item #>
    $exePath = "$exesDir\$($script.BaseName).exe"
    if (-not (Test-Path $exePath)) {
        . $compiler /in $script /out $exePath /base $base
    }
    return Get-Item $exePath
}

Write-Host "Done"