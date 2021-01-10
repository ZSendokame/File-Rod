$Username = $env:Username
$Version = "1.0.0"


Clear-Host


function Logo {
Write-Output "____ ___  ___________________      __________               __  .__      "
Write-Output "|    |   \/   _____/\______   \    \______   \ ____   _____/  |_|  |__   "
Write-Output "|    |   /\_____  \  |    |  _/     |       _//  _ \ /  _ \   __\  |  \  "
Write-Output "|    |  / /        \ |    |   \     |    |   (  <_> |  <_> )  | |   Y  \ "
Write-Output "|______/ /_______  / |______  /     |____|_  /\____/ \____/|__| |___|  / "
Write-Output "                 \/         \/             \/                        \/  "
Write-Output " Ver: $Version                                           ZSendokame  "
}

Logo


$Action = Read-Host "$Username@ "



if($Action -eq "flash") {
    $Path = Read-Host "Path Name"

    Remove-Item $Path -Force


} elseif($Action -eq "backup") {
    $backUpPath = Read-Host "Backup Path"

    $receiverPath = Read-Host "Receiver Path"

    Set-Location $backUpPath

    Copy-Item *.* $receiverPath
}