let init_path = '~/.local/share/atuin/init.nu'
if ($init_path | path exists) {
  
} else {
  mkdir $init_path -v;
  atuin init nu | save $init_path
}
