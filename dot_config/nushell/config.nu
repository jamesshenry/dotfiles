$env.LS_COLORS = $"(vivid generate solarized-light)"
$env.config.buffer_editor = ["hx","-c", "~/.config/helix/config.toml"]
$env.config.show_banner = false

alias hlx = hx -c ~/.config/helix/config.toml
alias ll = ls -l
alias lzy = lazygit
alias ff = fastfetch
source ~/.config/nushell/cmd_ext.nu

source ~/.config/starship/config.nu
source ~/.config/zoxide/config.nu
source ~/.config/atuin/config.nu

let dotnet_completer = { |spans|
    {
        dotnet: { ||
            dotnet complete (
                $spans | skip 1 | str join " "
            ) | lines
        }
    } | get $spans.0 | each { || do $in }
}

# And then in the config record, find the completions section and add the
# external_completer that was defined earlier to external:

$env.config = {
    # your options here
    completions: {
        # your options here
        external: {
            # your options here
            completer: $dotnet_completer # add it here
        }
    }
}
fastfetch
