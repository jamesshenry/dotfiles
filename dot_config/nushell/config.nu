alias hlx = hx -c ~/.config/helix/config.toml
alias ll = ls -l
alias lzy = lazygit
use ~/.cache/starship/init.nu
source ~/.config/zoxide/init.nu
source ~/.config/nushell/cmd_ext.nu
source ~/.local/share/atuin/init.nu

$env.config.buffer_editor = ["hx","-c", "~/.config/helix/config.toml"]
$env.config.show_banner = false
