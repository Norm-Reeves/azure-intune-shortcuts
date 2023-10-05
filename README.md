# azure-intune-shortcuts

PowerShell script that deploys shortcuts to company sites to the Public Desktop. 

Prerequisites:
=========
Before running this script, ensure the following prerequisities are met:

• **Windows Operating System:** This script is designed to run on Windows Systems.

• **PowerShell:** PowerShell is required to execute this script. Ensure that PowerShell is installed and enabled on your system.

Script Overview:
=========
This script performs the following tasks:

**Step 1: Ensure Directory Exists:**

• Checks if the directory **C:\Windows\SysWOW64\images** exists and creates it if it doesn't.

**Step 2: Download Custom Icons**

• Downloads custom icons from remote sources and saves them in the C:\Windows\SysWOW64\images directory if they do not already exist.

**Step 3: Create Desktop Shortcuts**

• Creates desktop shortcuts with custom icons and URLs for various applications. Existing shortcuts are removed and replaced.

Usage:
=========
1. Download the Script:

	Download the PowerShell script file to your Windows system.

2. Open PowerShell as Administrator:

	Right-click on the Windows Start button, select "Windows PowerShell (Admin)" or "Command Prompt (Admin)" to run PowerShell as an administrator.

3. Navigate to the Script Directory:

	Use the cd command to navigate to the directory where you saved the script.

4. Run the Script:

	Execute the script by running the following command:

	.\install.ps1

5. Desktop Shortcuts:

	After running the script, you should see updated desktop shortcuts with custom icons for various applications.

Download .exe:
============
https://github.com/Norm-Reeves/azure-intune-shortcuts/releases/download/v1.0/azure-intune-shortcuts.exe

Change Log:
============
1.0:

  • Created Initial Release.
