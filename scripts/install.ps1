#Requires -Version 5

#--------------------------------------------------------------------------
# Chocolatey
#--------------------------------------------------------------------------
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#--------------------------------------------------------------------------
# PowerShell
#--------------------------------------------------------------------------
choco upgrade -y boxstarter

Import-Module Boxstarter.Chocolatey

# Install-BoxstarterPackage -PackageName https://gist.github.com/mwrock/8066325/raw/e0c830528429cd68a8c71dbff6f48298576d8d20/gistfile1.txt
