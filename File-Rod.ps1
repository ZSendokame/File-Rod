$Version = "1.0.5"
$actualPath = Get-Location


Clear-Host



function Logo {

    Write-Output "    ___________ .__.__                  __________           .___ "
    Write-Output "    \_   _____/ |__|  |   ____          \______   \ ____   __| _/ "
    Write-Output "      |    __)  |  |  | _/ __ \   ______ |       _//  _ \ / __ |  "
    Write-Output "      |     \   |  |  |_\  ___/  /_____/ |    |   (  <_> ) /_/ |  "
    Write-Output "      \___  /   |__|____/\___  >         |____|_  /\____/\____ |  "
    Write-Output "          \/                 \/                 \/            \/  "
    Write-Output " Ver: $Version                                       ZSendokame   "

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

    Write-Output ".help Shows this message", ".backup Backup your files", ".flash Delete files", ".getPath Shows the actual path", ".clear Clean Terminal", ".rename Rename a File", ".getContent Shows Items", ".exit Exit", ".create Create Files", ".location Go to a Path"

} elseif($Action -eq ".rename") {

    $fName = Read-Host "[$Username] ~ [File Path]>"

    Rename-Item $fName



} elseif($Action -eq ".clear") {

    Clear-Host



} elseif($Action -eq ".getContent") {

    Get-ChildItem

} elseif($Action -eq ".exit"){

    exit
} elseif($Action -eq ".create") {


    $fName = Read-Host "File Name"


    "" > $fName


} elseif($Action -eq ".location") {

    $pName = Read-Host "Path Name"

    Set-Location $pName


} elseif ($Action -eq ".editor") {
    Clear-Host



$title = Read-Host "File Name"



Clear-Host




for ($i = 0; $i -lt 99999; $i++) {
    



$txt = Read-Host "$i"


"$txt" >> $title

if ($txt -eq ".#") {
    exit
}

}


}
}