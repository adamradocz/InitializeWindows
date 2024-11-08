#Requires -RunAsAdministrator

$basePath = "C:\Temp"

$isoPath = Join-Path -Path $basePath -ChildPath "WinISO"
If (!(Test-Path $isoPath))
{
    New-Item -ItemType Directory -path $isoPath | Out-Null
}

Read-Host -Prompt "Copy the contents of the Windows ISO to $isoPath then press any key to continue..."

$driversPath = Join-Path -Path $basePath -ChildPath "Drivers"
If (!(Test-Path $driversPath))
{
    New-Item -ItemType Directory -path $driversPath | Out-Null
}

$mountedImagePath = Join-Path -Path $basePath -ChildPath "MountedImage"
If (!(Test-Path $mountedImagePath))
{
    New-Item -ItemType Directory -path $mountedImagePath | Out-Null
}

# Back up all device drivers.
Export-WindowsDriver -Online -Destination $driversPath

# Mount a Windows image.
$imagePath = Join-Path -Path $isoPath -ChildPath "sources\install.wim"
Dism /Mount-Image /ImageFile:$imagePath /Index:1 /MountDir:$mountedImagePath

# Add a drivers to the image.

# To install a single driver package, specify the driver file:
#Dism /Image:$mountedImagePath /Add-Driver /Driver:C:\Temp\Drivers\mydriver.inf

# Caution: Using /Recurse can be handy, but it's easy to bloat your image with it. Some driver packages include multiple .inf driver packages, which often share payload files from the same folder. During installation, each .inf driver package is expanded into a separate folder. Each individual folder has a copy of the payload files.
Dism /Image:$mountedImagePath /Add-Driver /Driver:$driversPath /Recurse

# Commit the changes and unmount the image.
Dism /Unmount-Image /MountDir:$mountedImagePath /Commit

Write-Host "At this point, you need to replace the stock install.wim file with the updated one you just created under $isoPath\sources."
Read-Host -Prompt "Press any key to quite..."