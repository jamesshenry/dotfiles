mkdir ($nu.data-dir | path join "vendor/autoload")
zoxide init nushell --cmd cd | save -f ($nu.data-dir | path join "vendor/autoload/zoxide.nu")

