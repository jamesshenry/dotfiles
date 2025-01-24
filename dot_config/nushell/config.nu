$env.config.buffer_editor = ["hx","-c", "~/.config/helix/config.toml"]
$env.config.show_banner = false

alias hlx = hx -c ~/.config/helix/config.toml
alias ll = ls -l
alias lzy = lazygit
source ~/.config/nushell/cmd_ext.nu

source ~/.config/starship/config.nu
