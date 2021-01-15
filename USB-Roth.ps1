$Username = $env:Username
$Version = "1.0.3"


Clear-Host


function Logo {
Write-Output "____ ___  ___________________      __________               __  .__      "
Write-Output "|    |   \/   _____/\______   \    \______   \ ____   _____/  |_|  |__   "
Write-Output "|    |   /\_____  \  |    |  _/     |       _//  _ \ /  _ \   __\  |  \  "
Write-Output "|    |  / /        \ |    |   \     |    |   (  <_> |  <_> )  | |   Y  \ "
Write-Output "|______/ /_______  / |______  /     |____|_  /\____/ \____/|__| |___|  / "
Write-Output "                 \/         \/             \/                        \/  "
Write-Output " Ver: $Version                                           ZSendokame      "
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