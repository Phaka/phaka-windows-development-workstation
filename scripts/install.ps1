#Requires -Version 5

#Main-function
function main {
    $rc = Update-Chocolatey
}

#Helpers
function Update-Chocolatey {
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1?t="+ DateTime.Now.ToLocalTime()'))
}

#Entry point
main
