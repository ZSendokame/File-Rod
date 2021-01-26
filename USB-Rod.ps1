$Version = "1.0.4"
$actualPath = Get-Location


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



while($true) {


$Username = $env:Username
$actualPath = Get-Location



$Action = Read-Host "[$Username] ~ [Menu]>"



if($Action -eq ".flash") {

    $Path = Read-Host "[$Username] ~ [Flash]>"

    Remove-Item $Path -Force


} elseif($Action -eq ".backup") {

    $backUpPath = Read-Host "[$Username] ~ [Original Path]>"

    $receiverPath = Read-Host "[$Username] ~ [Receiver Path]>"

    Set-Location $backUpPath

    Copy-Item *.* $receiverPath

} elseif($Action -eq ".getPath"){

    $actualPath

} elseif($Action -eq ".help"){

    Write-Output ".help Shows this message", ".backup Backup your files", ".flash Delete files", ".getPath Shows the actual path"

} elseif($Action -eq ".rename") {

    $fName = Read-Host "[$User] ~ [File Path]>"

    Rename-Item $fName



} elseif ($Action -eq ".clear") {

    Clear-Host



} else {
    Write-Output "$Action is not recogniced"
}
}