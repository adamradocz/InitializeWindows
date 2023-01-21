#Requires -RunAsAdministrator

$profiles = Get-ChildItem .\Profiles\

Write-Host
$index = 0
foreach($profile in $profiles)
{
    Write-Host $index")" $profile.Name
    $index++
}

Write-Host
$selectedIndex = Read-Host "Enter the index of the selected profile"
Write-Host "Selected profile:" $profiles[$selectedIndex] -ForegroundColor Green

Get-AppxPackage Clipchamp.Clipchamp* | Remove-AppxPackage
Get-AppxPackage Microsoft.BingNews* | Remove-AppxPackage
Get-AppxPackage Microsoft.GamingApp* | Remove-AppxPackage
Get-AppxPackage Microsoft.GetHelp* | Remove-AppxPackage
Get-AppxPackage Microsoft.Getstarted* | Remove-AppxPackage
Get-AppxPackage Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage
Get-AppxPackage Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage
Get-AppxPackage Microsoft.WindowsFeedbackHub* | Remove-AppxPackage
Get-AppxPackage Microsoft.YourPhone* | Remove-AppxPackage
Get-AppxPackage MicrosoftTeams* | Remove-AppxPackage

$appJsonPath = Join-Path -Path $profiles[$selectedIndex] "apps.json"

winget source update
winget upgrade --all
winget import -i $appJsonPath --accept-package-agreements --accept-source-agreements
