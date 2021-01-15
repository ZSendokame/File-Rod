$Username = $env:Username
$Version = "1.0.3"


Clear-Host


function Logo {

Write-Output "   ____ ___  ___________________         __________           .___ "
Write-Output "  |    |   \/   _____/\______   \        \______   \ ____   __| _/ "
Write-Output "  |    |   /\_____  \  |    |  _/  ______ |       _//  _ \ / __ |  "
Write-Output "  |    |  / /        \ |    |   \ /_____/ |    |   (  <_> ) /_/ |  "
Write-Output "  |______/ /_______  / |______  /         |____|_  /\____/\____ |  "
Write-Output "                   \/         \/                 \/            \/  "
Write-Output " Ver: $Version                                       ZSendokame    "
}

Logo


$Action = Read-Host "[$Username] ~ [Menu]>"



if($Action -eq ".flash") {

    $Path = Read-Host "[$Username] ~ [Flash]>"

    Remove-Item $Path -Force


} elseif($Action -eq ".backup") {

    $backUpPath = Read-Host "[$Username] ~ [Backup Path]"

    $receiverPath = Read-Host "[$Username] ~ [Receiver Path]"

    Set-Location $backUpPath

    Copy-Item *.* $receiverPath

} elseif($Action -eq ".help") {
    Write-Output ".flash Delete Files and Folders", ".backup Backup files and folders"

} else {
    Write-Output "Error"
}
