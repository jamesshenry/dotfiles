if ($IsWindows) {
    winget install dandavison.delta
}
elseif ($IsLinux) {
    brew install git-delta
}
