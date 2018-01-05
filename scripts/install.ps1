iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Tools
choco upgrade -y nmap

# Git
choco upgrade -y git
choco upgrade -y git-lfs

# GitKraken
choco upgrade -y gitkraken

# Web Platform Installer
choco upgrade -y webpi

# JDK
choco upgrade -y jre7 
choco upgrade -y jre8 
choco upgrade -y jre9 

# Browsers 
choco upgrade -y firefox 
choco upgrade -y googlechrome 
choco upgrade -y googlechrome.canary
choco upgrade -y opera

# Python
choco upgrade -y python2
choco upgrade -y python3

# Ruby
choco upgrade -y ruby
choco upgrade -y ruby2.devkit

# NodeJS
choco upgrade -y nodejs

# .NET Framework
choco upgrade -y netfx-4.0.3-devpack
choco upgrade -y netfx-4.5.2-devpack
choco upgrade -y netfx-4.6-devpack
choco upgrade -y netfx-4.6.1-devpack
choco upgrade -y netfx-4.6.2-devpack
choco upgrade -y netfx-4.7-devpack
choco upgrade -y netfx-4.7.1-devpack

# Windows SDKs
choco upgrade -y windows-sdk-7.0
choco upgrade -y windows-sdk-7.1
choco upgrade -y windows-sdk-8.0
choco upgrade -y windows-sdk-8.1
choco upgrade -y windows-sdk-10.0
choco upgrade -y windows-sdk-10.1

# Atom Editor
choco upgrade -y atom

# Visual Studio Code
choco upgrade -y visualstudiocode
choco upgrade -y vscode-powershell
choco upgrade -y vscode-csharp
choco upgrade -y vscode-docker
choco upgrade -y vscode-cake
choco upgrade -y vscode-gitattributes
choco upgrade -y vscode-gitlens

# Visual Studio 2012
# choco upgrade -y visualstudio2012ultimate
# choco upgrade -y ssdt12

# Visual Studio 2013
# choco install visualstudio2013premium

# Visual Studio 2015
choco upgrade -y visualstudio2015professional
# choco upgrade -y visualstudio2015enterprise
# choco upgrade -y ssdt15
# choco upgrade -y visualstudio2015-powershelltools
# choco upgrade -y poshtools-visualstudio2015


# Visual Studio 2017
choco upgrade -y visualstudio2017professional
# choco upgrade -y visualstudio2017enterprise


# JetBrains
choco upgrade -y jetbrainstoolbox
choco upgrade -y resharper-cltchoco install clion-ide


# WiX Toolset
choco upgrade -y wixtoolset

# Packet
choco upgrade -y paket

# 1Password
choco upgrade -y 1password
choco upgrade -y op # 1Password CLI

# Remote Desktop Manager
choco upgrade -y rdm 
# choco upgrade -y rdmfree 
# choco upgrade -y rdmagent


