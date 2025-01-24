# let env_vars = (open $"($env.FILE_PWD)/.env" | from toml )

# if ($env_vars.path? != null) {
#  $env.path = ($env.path | append $env_vars.PATH)
#  $env_vars | reject path | load-env
#} else {
#  $env_vars | load-env
#}

$env.STARSHIP_CONFIG = $'($env.XDG_CONFIG_HOME)\starship\starship.toml'
