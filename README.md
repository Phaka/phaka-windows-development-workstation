# Development Workstation

I often reinstall my development workstation due to the entrophy that sets in after a while.  This repository contains the scripts used to install and update the software on my computer. 

## Getting Started

### Requirements

- A supported version of Windows (Windows Server 2012 R2, Windows Server 2016 and Windows 10)
- WMF 5.1 when running on Windows Server 2012 R2

### Usage

The following command will download the script and execute it.

```
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/Phaka/phaka-windows-development-workstation/initial/scripts/bootstrap.ps1'))
```

Start a new PowerShell credentials

```
Import-Module Boxstarter.Chocolatey
$credentials = Get-Credential
Install-BoxstarterPackage -Credential $credentials -PackageName "https://raw.githubusercontent.com/Phaka/phaka-windows-development-workstation/initial/scripts/development.txt"
```
