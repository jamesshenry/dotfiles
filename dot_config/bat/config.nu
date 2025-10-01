$env.BAT_CONFIG_PATH = "~/.config/bat/bat.conf" | path expand
# $env.BAT_PAGER = "ov"

alias cat = bat --paging=never
