#Requires -RunAsAdministrator

#Info: https://github.com/SimonCropp/WinDebloat
winget uninstall --exact --name "Windows Camera"
winget uninstall -e --name "Clipchamp"
winget uninstall -e --name "Feedback Hub"
winget uninstall -e --name "Films & TV"
winget uninstall -e --name "Solitaire & Casual Games"
winget uninstall -e --name "Microsoft Solitaire Collection"
winget uninstall -e --name "Get Help"
winget uninstall -e --name "Windows Maps"
winget uninstall -e --name "Windows Media Player"
winget uninstall -e --name "Mixed Reality Portal"
winget uninstall -e --name "Movies & TV"
winget uninstall -e --name "Microsoft News"
winget uninstall -e --name "News"
winget uninstall -e --name "Microsoft Photos"
winget uninstall -e --name "Print 3D"
winget uninstall -e --name "Skype"
winget uninstall -e --name "Microsoft Sticky Notes"
winget uninstall -e --name "Teams Machine-Wide Installer"
winget uninstall -e --name "Microsoft Tips"
winget uninstall -e --name "MSN Weather"
winget uninstall -e --name "Xbox TCUI"
winget uninstall -e --name "Xbox Console Companion"
winget uninstall -e --name "Xbox Game Bar Plugin"
winget uninstall -e --name "Xbox Game Speech Window"
winget uninstall -e --name "Xbox Game Bar"
winget uninstall -e --name "Xbox Accessories"
winget uninstall -e --name "Xbox"
winget uninstall -e --name "Phone Link"
winget uninstall -e --name "Quick Assist"
winget uninstall -e --name "Microsoft Teams"

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
