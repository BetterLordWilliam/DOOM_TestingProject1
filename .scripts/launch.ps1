param([bool]$bbfl=$false)

. "$PSScriptRoot\variables.ps1"

function Launch {
  Write-Host "Launching ..."
  Start-Process `
    -FilePath "$gzdoom" `
    -ArgumentList "-iwad $cbuild"
}

function Build-Launch {
  Write-Host "Building ..."
  . "$(Nix-PSScriptRoot)/build.ps1"   # Execute the build script
  Launch
}

if ($bbfl) {
  Build-Launch
} else {
  Launch
}

