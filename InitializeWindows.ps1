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
$appJsonPath = Join-Path -Path $profiles[$selectedIndex] "apps.json"

winget source update
winget upgrade --all
winget import -i $appJsonPath --accept-package-agreements --accept-source-agreements
