# Create a new instance of the WScript.Shell object
$newObject = New-Object -ComObject WScript.Shell

# Define the destination folder (Public Desktop)
$destination = $newObject.SpecialFolders.Item('AllUsersDesktop')

# Define shortcut path
$sourcePathCompligo = Join-Path -Path $destination -ChildPath '\\Compligo.lnk'
$sourcePathFacilities = Join-Path -Path $destination -ChildPath '\\Facilities Help Desk.lnk'
$sourcePathIT = Join-Path -Path $destination -ChildPath '\\NR Tech Team.lnk'
$sourcePathOffice = Join-Path -Path $destination -ChildPath '\\O365 Webmail.lnk'
$sourcePathWorkvivo = Join-Path -Path $destination -ChildPath '\\WorkVivo.lnk'
$sourcePathUKG = Join-Path -Path $destination -ChildPath '\\UKG Pro.lnk'
$sourcePathITold = Join-Path -Path $destination -ChildPath '\\IT Support.lnk'

#Remove Shortcuts
if (Test-Path -Path $sourcePathCompligo -PathType Leaf) {
    Remove-Item -Path $sourcePathCompligo
    }
if (Test-Path -Path $sourcePathFacilities -PathType Leaf) {
    Remove-Item -Path $sourcePathFacilities
    }
if (Test-Path -Path $sourcePathIT -PathType Leaf) {
    Remove-Item -Path $sourcePathIT
    }
if (Test-Path -Path $sourcePathOffice -PathType Leaf) {
    Remove-Item -Path $sourcePathOffice
    }
if (Test-Path -Path $sourcePathWorkvivo -PathType Leaf) {
    Remove-Item -Path $sourcePathWorkvivo
    }
if (Test-Path -Path $sourcePathUKG -PathType Leaf) {
    Remove-Item -Path $sourcePathUKG
    }
if (Test-Path -Path $sourcePathITold) {
    Remove-Item -Path $sourcePathITold
}

# Removes .ico files
if (Test-Path -Path C:\Windows\SysWOW64\images\Compligo.ico -PathType Leaf) {
    Remove-Item -Path C:\Windows\SysWOW64\images\Compligo.ico
}

if (Test-Path -Path C:\Windows\SysWOW64\images\Facilities.ico -PathType Leaf) {
    Remove-Item -Path C:\Windows\SysWOW64\images\Facilities.ico
}

if (Test-Path -Path C:\Windows\SysWOW64\images\NRTechTeam.ico -PathType Leaf) {
    Remove-Item -Path C:\Windows\SysWOW64\images\NRTechTeam.ico
}

if (Test-Path -Path C:\Windows\SysWOW64\images\Office365.ico -PathType Leaf) {
    Remove-Item -Path C:\Windows\SysWOW64\images\Office365.ico
}

if (Test-Path -Path C:\Windows\SysWOW64\images\WorkVivo.ico -PathType Leaf) {
    Remove-Item -Path C:\Windows\SysWOW64\images\WorkVivo.ico
}

if (Test-Path -Path C:\Windows\SysWOW64\images\UKG.ico -PathType Leaf) {
    Remove-Item -Path C:\Windows\SysWOW64\images\UKG.ico
}


