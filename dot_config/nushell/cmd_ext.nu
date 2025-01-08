def "touch pkgdef" [ --template ] {
  
  mut name = "pkg.toml"
  if ($template) {

  } else {
    $name += ".tmpl"
  }
  let pkg_def = {
    type: "pkg"
    name: "default"
    platform: {
      windows: {
        id: "default.id"
        cmd: ""
        shell: ""
      },
      linux: {
        id: ""
        cmd: ""
        shell: ""
      }
    }
  }

  $pkg_def | to toml | save $name -f
}
