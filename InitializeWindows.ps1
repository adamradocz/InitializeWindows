#Requires -RunAsAdministrator

# Info: https://github.com/SimonCropp/WinDebloat
winget uninstall --exact --name "Clipchamp"
winget uninstall --exact --name "Feedback Hub"
#winget uninstall --exact --name "Game Bar"
#winget uninstall --exact --name "Game Speech Window"
winget uninstall --exact --name "Get Help"
winget uninstall --exact --name "MSN Weather"
winget uninstall --exact --name "Microsoft News"
winget uninstall --exact --name "Microsoft Photos"
winget uninstall --exact --name "Microsoft Solitaire Collection"
winget uninstall --exact --name "Microsoft Sticky Notes"
#winget uninstall --exact --name "Microsoft Teams"
winget uninstall --exact --name "Microsoft Tips"
winget uninstall --exact --name "Microsoft To Do"
winget uninstall --exact --name "Movies & TV"
winget uninstall --exact --name "Quick Assist"
winget uninstall --exact --name "Windows Camera"
winget uninstall --exact --name "Windows Maps"
winget uninstall --exact --name "Windows Media Player"
winget uninstall --exact --name "Xbox Accessories"
winget uninstall --exact --name "Xbox Console Companion"
winget uninstall --exact --name "Xbox Game Bar Plugin"
winget uninstall --exact --name "Xbox Game Bar"
winget uninstall --exact --name "Xbox Game Speech Window"
winget uninstall --exact --name "Xbox Identity Provider"
winget uninstall --exact --name "Xbox TCUI"
winget uninstall --exact --name "Xbox"

winget source update
winget upgrade --all
winget install --exact --id Ghisler.TotalCommander
winget install --exact --id Google.Chrome
winget install --exact --id Gyan.FFmpeg
winget install --exact --id Microsoft.PowerShell
winget install --exact --location $Env:LOCALAPPDATA\Microsoft\WinGet\Packages\TorProject.TorBrowser --id TorProject.TorBrowser
winget install --exact --id UCBerkeley.BOINC
winget install --exact --id VideoLAN.VLC
winget install --exact --id 9NKSQGP7F2NH # WhatsApp
winget install --exact --id WireGuard.WireGuard
winget install --exact --id XnSoft.XnViewMP

# Hardware specific
winget install --exact --id Intel.IntelDriverAndSupportAssistant
winget install --exact --id Logitech.OptionsPlus 
#winget install --exact --id Nvidia.GeForceExperience
