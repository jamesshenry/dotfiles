$env.LS_COLORS = $"(vivid generate solarized-light)"
$env.config.buffer_editor = ["hx","-c", "~/.config/helix/config.toml"]
$env.config.show_banner = true

alias hlx = hx -c ~/.config/helix/config.toml
alias ll = ls -l
alias lg = lazygit
alias ff = fastfetch
source ~/.config/nushell/cmd_ext.nu

source ~/.config/starship/config.nu
source ~/.config/zoxide/config.nu
source ~/.config/atuin/config.nu
source ~/.config/homebrew/config.nu
