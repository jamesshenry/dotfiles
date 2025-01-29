const path = "~/.local/share/atuin/init.nu"

if (false == ($path | path exists)) {
  mkdir "~/.local/share/atuin"
  atuin init nu | save -f $path
}
