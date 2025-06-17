param([bool]$bbfl=$false)

. "$PSScriptRoot\variables.ps1"

function Launch {
  Start-Process `
    -FilePath "$gzdoom" `
    -ArgumentList "-iwad $cbuild"
}

function Build-Launch {
  Launch
}

# Write-Host $gzdoom
# Write-Host $cbuild

if ($bbfl) {
  Build-Launch
} else {
  Launch
}

