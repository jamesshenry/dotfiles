$env.STARSHIP_CONFIG = $'($env.XDG_CONFIG_HOME)\starship\starship.toml'

starship init nu | save -f ~/.config/starship/starship.nu
