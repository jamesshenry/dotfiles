source "./env.nu"
let initPath = $"($env.XDG_DATA_HOME)/starship"
let initFile = "init.nu"

if ($initPath | path exists) {
} else {
  mkdir $initPath -v
  if (($initPath | path join $initFile) | path exists) {
  } else {
    starship init nu | save -f ($initPath | path join $initFile)
  }
}
