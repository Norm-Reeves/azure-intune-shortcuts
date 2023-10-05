# Step 1 - Make sure C:\Windows\SysWOW64\images exists (will put .ico files in there)
if (!(Test-Path -Path "C:\Windows\SysWOW64\images"  -PathType Leaf)) {
    New-Item -Path "C:\Windows\SysWOW64\" -Name "images" -ItemType Directory -Force  
}
else {}

# Check for UKG shortcut and remove
if (Test-Path -Path "C:\Temp\ukg.ico" -PathType Leaf) {
    Remove-Item -Path "C:\Temp\ukg.ico"
    }
if (Test-Path -Path "C:\Users\Public\Desktop\UKG.lnk" -PathType Leaf) {
    Remove-Item -Path "C:\Users\Public\Desktop\UKG.lnk"
    }

# Check for old IT Shortcut and remove
if (Test-Path -Path "C:\Users\Public\Desktop\IT Support.lnk") {
    Remove-Item -Path "C:\Users\Public\Desktop\IT Support.lnk"
}

# Step 2 - Download ICO files into previous created folder if they don't exist. *If a new image is wanted, we will incriment the names. I.E. adp2.ico.
if (!(Test-Path 'C:\Windows\SysWOW64\images\compligo.ico' -PathType Leaf)) {
	Invoke-WebRequest -Uri 'https://stnormreevespublic001.blob.core.windows.net/intune/compligo.ico' -Outfile C:\Windows\SysWOW64\images\compligo.ico
}
else {}

if (!(Test-Path 'C:\Windows\SysWOW64\images\facilities.ico' -PathType Leaf)) {
	Invoke-WebRequest -Uri 'https://stnormreevespublic001.blob.core.windows.net/intune/facilities.ico' -Outfile C:\Windows\SysWOW64\images\facilities.ico
}
else {}

if (!(Test-Path 'C:\Windows\SysWOW64\images\NRTechTeam.ico' -PathType Leaf)) {
	Invoke-WebRequest -Uri 'https://stnormreevespublic001.blob.core.windows.net/intune/NRTechTeam.ico' -Outfile C:\Windows\SysWOW64\images\NRTechTeam.ico
}
else {}

if (!(Test-Path 'C:\Windows\SysWOW64\images\Office365.ico' -PathType Leaf)) {
	Invoke-WebRequest -Uri 'https://stnormreevespublic001.blob.core.windows.net/intune/Office365.ico' -Outfile C:\Windows\SysWOW64\images\Office365.ico
}
else {}

if (!(Test-Path 'C:\Windows\SysWOW64\images\workvivo.ico' -PathType Leaf)) {
	Invoke-WebRequest -Uri 'https://stnormreevespublic001.blob.core.windows.net/intune/workvivo.ico' -Outfile C:\Windows\SysWOW64\images\workvivo.ico
}

if (!(Test-Path 'C:\Windows\SysWOW64\images\UKG.ico' -PathType Leaf)) {
    Invoke-WebRequest -Uri 'https://stnormreevespublic001.blob.core.windows.net/intune/ukg.ico' -Outfile C:\Windows\SysWOW64\images\UKG.ico
}

else {}

# Step 3 - Add the custom URL shortcut to your Desktop with custom icon. Recreating the public desktop icons is by design. If a new image is uploaded this will be set to change. Only disk IO so not an issue

# Create a new instance of the WScript.Shell object
$newObject = New-Object -ComObject WScript.Shell

# Define the destination folder (Public Desktop)
$destination = $newObject.SpecialFolders.Item('AllUsersDesktop')

# Create a shortcut for Compligo
$sourcePathCompligo = Join-Path -Path $destination -ChildPath '\\Compligo.lnk'
$sourceCompligo = $newObject.CreateShortcut($sourcePathCompligo)
$sourceCompligo.TargetPath = 'https://thecargroup.compligo.com/'
$sourceCompligo.IconLocation = 'C:\Windows\SysWOW64\images\compligo.ico'
$sourceCompligo.WorkingDirectory = $destination
$sourceCompligo.Save()

# Create a shortcut for Facilities
$sourcePathFacilities = Join-Path -Path $destination -ChildPath '\\Facilities Help Desk.lnk'
$sourceFacilities = $newObject.CreateShortcut($sourcePathFacilities)
$sourceFacilities.TargetPath = 'https://cargroup.sysaidit.com/servicePortal/submitIncident?populateSR_id=9858&sspTargetUrlLink=1'
$sourceFacilities.IconLocation = 'C:\Windows\SysWOW64\images\facilities.ico'
$sourceFacilities.WorkingDirectory = $destination
$sourceFacilities.Save()

# Create a shortcut for IT
$sourcePathIT = Join-Path -Path $destination -ChildPath '\\NR Tech Team.lnk'
$sourceIT = $newObject.CreateShortcut($sourcePathIT)
$sourceIT.TargetPath = 'https://cargroup.sysaidit.com/'
$sourceIT.IconLocation = 'C:\Windows\SysWOW64\images\NRTechTeam.ico'
$sourceIT.WorkingDirectory = $destination
$sourceIT.Save()

# Create a shortcut for Office
$sourcePathOffice = Join-Path -Path $destination -ChildPath '\\O365 Webmail.lnk'
$sourceOffice = $newObject.CreateShortcut($sourcePathOffice)
$sourceOffice.TargetPath = 'https://outlook.office.com'
$sourceOffice.IconLocation = 'C:\Windows\SysWOW64\images\Office365.ico'
$sourceOffice.WorkingDirectory = $destination
$sourceOffice.Save()

# Create a shortcut for WorkVivo
$sourcePathWorkvivo = Join-Path -Path $destination -ChildPath '\\WorkVivo.lnk'
$sourceWorkVivo = $newObject.CreateShortcut($sourcePathWorkvivo)
$sourceWorkVivo.TargetPath = 'https://normreeves.workvivo.com/'
$sourceWorkVivo.IconLocation = 'C:\Windows\SysWOW64\images\workvivo.ico'
$sourceWorkVivo.WorkingDirectory = $destination
$sourceWorkVivo.Save()

# Create a shortcut for UKG
$sourcePathUKG = Join-Path -Path $destination -ChildPath '\\UKG Pro.lnk'
$sourceUKG = $newObject.CreateShortcut($sourcePathUKG)
$sourceUKG.TargetPath = 'https://normreeves2u.ukg.net/'
$sourceUKG.IconLocation = 'C:\Windows\SysWOW64\images\UKG.ico'
$sourceUKG.WorkingDirectory = $destination
$sourceUKG.Save()
