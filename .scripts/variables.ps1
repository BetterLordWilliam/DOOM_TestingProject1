function Nix-Path {
  param([String]$path)
  $path -Replace "\\", "/"
}

function Nix-PSScriptRoot {
  ($PSScriptRoot | Split-Path -Parent) -Replace "\\", "/"
}

# ==============================================================================

$builds = "$(Nix-PSScriptRoot)/build/"
$source = "$(Nix-PSScriptRoot)/game/"

$gzdoom = "$(Nix-PSScriptRoot)/engine/gzdoom.exe"
$cbuild = "$(Nix-PSScriptRoot)/build/CurrentBuild.ipk3"

