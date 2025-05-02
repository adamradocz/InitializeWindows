# Terminal-Icons
# Reference: https://github.com/devblackops/Terminal-Icons
Import-Module -Name Terminal-Icons

# PSReadline
# Reference: https://www.hanselman.com/blog/adding-predictive-intellisense-to-my-windows-terminal-powershell-prompt-with-psreadline
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# Oh My Posh
# The following snippet should be the last line in the PowerShell profile script.
# Reference: https://ohmyposh.dev/docs/installation/prompt
#oh-my-posh init pwsh --config "https://raw.githubusercontent.com/adamradocz/InitializeWindows/refs/heads/main/Configs/PowerShell/my.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "C:\Users\Adam Radocz\OneDrive\Documents\PowerShell\my.omp.json" | Invoke-Expression