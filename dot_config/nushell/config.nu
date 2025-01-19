alias hlx = hx -c ~/.config/helix/config.toml
alias ll = ls -l
alias lzy = lazygit
source ~/.config/nushell/cmd_ext.nu
ls **/.env | each {
    |it| let a = $it.name | open | from toml;
    $a | reject PATH | load-env
    $env.path ++= $a.PATH
}

$env.config.buffer_editor = ["hx","-c", "~/.config/helix/config.toml"]
$env.config.show_banner = false

use ~/.local/share/starship/init.nu
