function Nix-Path {
  param([String]$path)
  $path -Replace "\\", "/"
}

function Nix-PSScriptRoot {
  $PSScriptRoot -Replace "\\", "/"
} 

function Nix-ProjectPath {
  ($PSScriptRoot | Split-Path -Parent) -Replace "\\", "/"
}

# ==============================================================================

$builds = "$(Nix-ProjectPath)/build/"
$source = "$(Nix-ProjectPath)/game/"

$gzdoom = "$(Nix-ProjectPath)/engine/gzdoom.exe"
$cbuild = "$(Nix-ProjectPath)/build/CurrentBuild.ipk3"

