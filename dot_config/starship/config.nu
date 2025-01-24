$env.STARSHIP_CONFIG = $'($env.XDG_CONFIG_HOME)\starship\starship.toml'

const initPath = "./"
const initFile = "init.nu"

#if ($initPath | path exists) {
#} else {
#  mkdir $initPath -v
#  if (($initPath | path join $initFile) | path exists) {
#  } else {
#    starship init nu | save -f ($initPath | path join $initFile)
#  }
#}

if ( ($initFile | path exists) != true ) {
  starship init nu | save -f $initFile
}
source ./init.nu
