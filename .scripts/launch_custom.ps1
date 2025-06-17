$gzdoom ="$PSScriptRoot/../engine/gzdoom.exe"
$game   ="$PSScriptRoot/../game/build/MyStandaloneGame.ipk3"

Start-Process `
  -FilePath $gzdoom `
  -ArgumentList "-iwad $game"
