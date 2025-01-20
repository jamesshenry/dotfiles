let env_vars = (open $"($env.FILE_PWD)/.env" | from toml )
$env_vars | reject PATH | load-env
$env.path | append $env_vars.PATH
