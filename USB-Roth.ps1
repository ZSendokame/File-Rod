$Username = $env:Username
$Version = "1.0.0"


Clear-Host


function Logo {
Write-Output "___________.__                .__      __________        __  .__      "
Write-Output "\_   _____/|  | _____    _____|  |__   \______   \ _____/  |_|  |__   "
Write-Output " |    __)  |  | \__  \  /  ___/  |  \   |       _//  _ \   __\  |  \  "
Write-Output " \___  /   |____(____  /____  >___|  /  |____|_  /\____/|__| |___|  / "
Write-Output "     \/              \/     \/     \/          \/                 \/  "
Write-Output " Ver: $Version                                           ZSendokame"
}

Logo


$Path = Read-Host "Path"



Remove-Item $Path -Force
