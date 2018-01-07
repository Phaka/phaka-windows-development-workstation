iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 
choco install -y BoxStarter

# Configure WinRM for the DSC Script
winrm quickconfig -quiet
Set-Item -Path WSMan:\localhost\MaxEnvelopeSizeKb -Value 8192

# DSC Modules
Install-Module -Name cChoco -Force

# Get the party started
# Import-Module Boxstarter.Chocolatey
# $credentials = Get-Credential
# Install-BoxstarterPackage -Credential $credentials -PackageName "https://raw.githubusercontent.com/Phaka/phaka-windows-development-workstation/initial/scripts/development.txt"
