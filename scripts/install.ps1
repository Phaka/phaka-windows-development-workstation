#Requires -Version 5

#Main-function
function main {
    $rc = Update-Chocolatey
    Test-Reboot
}

#Helpers
function Update-Chocolatey {
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1?t="+ DateTime.Now.ToLocalTime()'))
}

function Test-Reboot {
    $False
}

#Entry point
main
