#Requires -RunAsAdministrator

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

winget source update
winget upgrade --all
winget import -i $appJsonPath --accept-package-agreements --accept-source-agreements

winget install Ghisler.TotalCommander Google.Chrome Microsoft.PowerShell UCBerkeley.BOINC VideoLAN.VLC WireGuard.WireGuard
