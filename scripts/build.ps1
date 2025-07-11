. "$PSScriptRoot\variables.ps1"

# Move current build into old builds w/date
mkdir -Force -Path "$builds/old" `
  | Out-Null
mv `
  -Path "$builds/CurrentBuild.ipk3" `
  -Destination "$builds/old/$(Get-Date -Format "yyyy_MM_dd_HH_mm_ss")" `
  | Out-Null

# Create the new build archive
Compress-Archive `
  -Path "$source/*" `
  -DestinationPath "$builds/CurrentBuild.ipk3" `
  -Force
