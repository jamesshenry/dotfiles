if ($IsWindows) {
    winget install JesseDuffield.lazygit
}
elseif ($IsLinux -or $IsMacOS) {
    brew tap jesseduffield/lazygit
    brew install lazygit
}