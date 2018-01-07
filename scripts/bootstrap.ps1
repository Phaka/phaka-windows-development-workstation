iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 
winrm quickconfig -quiet
Set-Item -Path WSMan:\localhost\MaxEnvelopeSizeKb -Value 8192

Install-Module -Name cChoco -Force
Install-Module -Name xNetworking -Force
