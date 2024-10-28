#Requires -RunAsAdministrator

#Infos: https://github.com/SimonCropp/WinDebloat
winget uninstall --name "Windows Camera" --exact
winget uninstall --name "Clipchamp" --exact
winget uninstall --name "Feedback Hub" --exact
winget uninstall --name "Films & TV" --exact
winget uninstall --name "Solitaire & Casual Games" --exact
winget uninstall --name "Microsoft Solitaire Collection" --exact
winget uninstall --name "Get Help" --exact
winget uninstall --name "Windows Maps" --exact
winget uninstall --name "Windows Media Player" --exact
winget uninstall --name "Mixed Reality Portal" --exact
winget uninstall --name "Movies & TV" --exact
winget uninstall --name "Microsoft News" --exact
winget uninstall --name "News" --exact
winget uninstall --name "Microsoft Photos" --exact
winget uninstall --name "Print 3D" --exact
winget uninstall --name "Skype" --exact
winget uninstall --name "Microsoft Sticky Notes" --exact
winget uninstall --name "Teams Machine-Wide Installer" --exact
winget uninstall --name "Microsoft Tips" --exact
winget uninstall --name "MSN Weather" --exact
winget uninstall --name "Xbox TCUI" --exact
winget uninstall --name "Xbox Console Companion" --exact
winget uninstall --name "Xbox Game Bar Plugin" --exact
winget uninstall --name "Xbox Game Speech Window" --exact
winget uninstall --name "Xbox Game Bar" --exact
winget uninstall --name "Xbox Accessories" --exact
winget uninstall --name "Xbox" --exact
winget uninstall --name "Phone Link" --exact
winget uninstall --name "Quick Assist" --exact
winget uninstall --name "Microsoft Teams" --exact

winget source update
winget upgrade --all
winget install --exact --id TorProject.TorBrowser
winget install -e -id Ghisler.TotalCommander
winget install -e -id Google.Chrome
winget install -e -id Gyan.FFmpeg
winget install -e -id Microsoft.PowerShell
winget install -e -id UCBerkeley.BOINC
winget install -e -id VideoLAN.VLC
winget install -e -id WireGuard.WireGuard
winget install -e -id XnSoft.XnViewMP
