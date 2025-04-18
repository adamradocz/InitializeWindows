#Requires -RunAsAdministrator

# Info: https://github.com/SimonCropp/WinDebloat
winget uninstall --exact --name "Clipchamp"
winget uninstall --exact --name "Cortana"
winget uninstall --exact --name "Feedback Hub"
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
winget uninstall --exact --name "Phone Link"
winget uninstall --exact --name "Quick Assist"
winget uninstall --exact --name "Web Search from Microsoft Bing"
winget uninstall --exact --name "Windows Camera"
winget uninstall --exact --name "Windows Maps"
winget uninstall --exact --name "Windows Media Player"

winget source update
winget upgrade --all --include-unknown --verbose
winget install --exact --id Ghisler.TotalCommander
winget install --exact --id Google.Chrome
winget install --exact --id Gyan.FFmpeg

winget install --exact --id Microsoft.Office
winget pin add --id Microsoft.Office --verbose # Office upgrade does not work. Source: https://github.com/microsoft/winget-cli/issues/1728#issuecomment-2467854561

winget install --exact --id Microsoft.PowerShell
winget install --exact --id Microsoft.VisualStudioCode
#winget install --exact --location $Env:LOCALAPPDATA\Microsoft\WinGet\Packages\TorProject.TorBrowser --id TorProject.TorBrowser
winget install --exact --id Spotify.Spotify
winget install --exact --id TIDALMusicAS.TIDAL
winget install --exact --id UCBerkeley.BOINC
winget install --exact --id VideoLAN.VLC
winget install --exact --id 9NKSQGP7F2NH # WhatsApp
winget install --exact --id WireGuard.WireGuard
winget install --exact --id XnSoft.XnViewMP

# Hardware specific
winget install --exact --id Intel.IntelDriverAndSupportAssistant
winget install --exact --id 9WZDNCRFJ4MV # Lenovo Vantage / Lenovo Companion
winget install --exact --id Logitech.OptionsPlus
#winget install --exact --id Nvidia.GeForceExperience

winget configure .\configuration.winget
