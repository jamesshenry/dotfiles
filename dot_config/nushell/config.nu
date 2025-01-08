# config.nu
#
# Installed by:
# version = "0.101.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.
alias hlx = hx -c ~\.config\helix\config.toml
alias ll = ls -l
use ~/.cache/starship/init.nu
source ~/.config/zoxide/init.nu
source ~/.config/nushell/cmd_ext.nu

$env.config.buffer_editor = 'hx'
