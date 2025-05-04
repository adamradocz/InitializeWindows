#region Terminal-Icons
# Reference: https://github.com/devblackops/Terminal-Icons
#*********************************************************************
Import-Module -Name Terminal-Icons
#endregion

#region PSReadline
# Reference: https://www.hanselman.com/blog/adding-predictive-intellisense-to-my-windows-terminal-powershell-prompt-with-psreadline
#*********************************************************************
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# This will create a custom function.
Set-PSReadLineKeyHandler -Chord Ctrl+Shift+b `
                         -BriefDescription BuildCurrentDirectory `
                         -Description "Run: 'dotnet build'." `
                         -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert("dotnet build")
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}
#endregion

#region Oh My Posh
# The following snippet should be the last line in the PowerShell profile script.
# Reference: https://ohmyposh.dev/docs/installation/prompt
#*********************************************************************
#oh-my-posh init pwsh --config "https://raw.githubusercontent.com/adamradocz/InitializeWindows/refs/heads/main/Configs/PowerShell/my.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "C:\Users\Adam Radocz\OneDrive\Documents\PowerShell\my.omp.json" | Invoke-Expression
#endregion