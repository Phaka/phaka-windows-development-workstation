iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# PowerShell
choco upgrade -y powershell
choco upgrade -y powershell-packagemanagement

# Background Information
choco upgrade -y bginfo

# Browsers 
choco upgrade -y firefox 
choco upgrade -y googlechrome 
choco upgrade -y googlechrome.canary
choco upgrade -y opera
# choco upgrade -y chromium
# choco upgrade -y vivaldi

# Fonts
choco upgrade -y ubuntu.font
choco upgrade -y sourcecodepro
# choco upgrade -y droidsansmono
# choco upgrade -y droidfonts
choco upgrade -y dejavufonts
choco upgrade -y anonymouspro
choco upgrade -y bitstreamverafonts
# choco upgrade -y firacode
choco upgrade -y hackfont
choco upgrade -y robotofonts
choco upgrade -y noto
choco upgrade -y oxygenmono
choco upgrade -y opensans
choco upgrade -y font-awesome-font

# Tools
choco upgrade -y nmap
choco upgrade -y sysinternals
choco upgrade -y 7zip
choco upgrade -y winimage
choco upgrade -y grammarly

# File Sharing
# choco upgrade -y dropbox
# choco upgrade -y onedrive
# choco upgrade -y googledrive

# WebEx
choco upgrade -y webexplayer

# SSH Tools
# choco upgrade -y winscp
choco upgrade -y bitvise-ssh-client
# choco upgrade -y bitvise-ssh-server
# choco upgrade -y openssh

# Adobe
choco upgrade -y adobereader
choco upgrade -y flashplayerplugin
choco upgrade -y adobeair
# choco upgrade -y adobeshockwaveplayer
# choco upgrade -y adobe-creative-cloud

# Comparing Documents
choco upgrade -y winmerge

# Git
choco upgrade -y git
choco upgrade -y git-lfs

# Mercurial
choco upgrade -y hg

# SVN
choco upgrade -y svn

# Bazaar
# bzr

# GitKraken
choco upgrade -y gitkraken
# choco upgrade -y smartgit
# choco upgrade -y sourcetree
# choco upgrade -y tortoisehg
# choco upgrade -y tortoisesvn
# choco upgrade -y tortoisegit

# Web Platform Installer
choco upgrade -y webpi

# Docker
choco upgrade -y docker

# Go Language
choco upgrade -y golang

# Haskel
choco upgrade -y haskell-stack

# JDK
choco upgrade -y jdk7 
choco upgrade -y jdk8 
choco upgrade -y jdk9 

# Eclipse
# choco upgrade -y eclipse

# Python
choco upgrade -y python2
choco upgrade -y python3

# Clojure 
# choco upgrade -y clojure

# VMware
choco upgrade -y vmwareworkstation --version 12.5.7
# choco upgrade -y vmwareplayer

# Vagrant 
choco upgrade -y vagrant

# Packer
choco upgrade -y packer
choco upgrade -y packer-post-processor-vagrant-vmware-ovf

# Ruby
# choco upgrade -y pik
choco upgrade -y ruby
choco upgrade -y ruby2.devkit

# NodeJS
choco upgrade -y nodejs
choco upgrade -y nodejs-lts
choco upgrade -y yarn
choco upgrade -y bower
choco upgrade -y gulp-cli

# Protocol Buffers
choco upgrade -y protoc

# .NET Core SDKs
choco upgrade -y dotnetcore-sdk --version 1.0
choco upgrade -y dotnetcore-sdk --version 1.1
choco upgrade -y dotnetcore-sdk --version 2.0
choco upgrade -y dotnetcore-sdk --version 2.1

# .NET Framework 
choco upgrade -y dotnet3.5
choco upgrade -y dotnet4.5
choco upgrade -y dotnet4.5.1
choco upgrade -y dotnet4.5.2
choco upgrade -y dotnet4.6.1
choco upgrade -y dotnet-4.6.2
choco upgrade -y dotnet4.6
choco upgrade -y dotnet4.6.2
choco upgrade -y dotnet4.7
choco upgrade -y dotnet4.7.1

# .NET Framework Development Packs
choco upgrade -y netfx-4.0.3-devpack
choco upgrade -y netfx-4.5.2-devpack
choco upgrade -y netfx-4.6-devpack
choco upgrade -y netfx-4.6.1-devpack
choco upgrade -y netfx-4.6.2-devpack
choco upgrade -y netfx-4.7-devpack
choco upgrade -y netfx-4.7.1-devpack

# Microsoft .NET Framework Repair Tool (https://support.microsoft.com/en-us/help/2698555/microsoft--net-framework-repair-tool-is-available)
choco upgrade -y dotnet-verification-tool

# Windows SDKs
choco upgrade -y windows-sdk-6.0
choco upgrade -y windows-sdk-6.1
choco upgrade -y windows-sdk-7.0
choco upgrade -y windows-sdk-7.1
choco upgrade -y windows-sdk-8.0
choco upgrade -y windows-sdk-8.1
choco upgrade -y windows-sdk-10.0
choco upgrade -y windows-sdk-10.1

# Editors
choco upgrade -y atom
choco upgrade -y notepadplusplus
choco upgrade -y sublimetext3

# Mono
choco upgrade -y mono
choco upgrade -y gtksharp
choco upgrade -y monodevelop

# NuGet
choco upgrade -y nuget.commandline
choco upgrade -y nugetpackageexplorer

# Octopus Deploy
# choco upgrade -y octopustools

# CMake

# Visual Studio Code
choco upgrade -y visualstudiocode
choco upgrade -y vscode-powershell
choco upgrade -y vscode-csharp
choco upgrade -y vscode-docker
choco upgrade -y vscode-cake
choco upgrade -y vscode-gitattributes
choco upgrade -y vscode-gitlens

choco upgrade -y cmake

# Visual Studio 2012
# choco upgrade -y visualstudio2012ultimate
# choco upgrade -y ssdt12

# Visual Studio 2013
# choco upgrade -y visualstudio2013premium

# Visual Studio 2015
choco upgrade -y visualstudio2015professional
# choco upgrade -y visualstudio2015enterprise
# choco upgrade -y ssdt15
# choco upgrade -y visualstudio2015-powershelltools
# choco upgrade -y poshtools-visualstudio2015

# Visual Studio 2017
choco upgrade -y visualstudio2017professional
# choco upgrade -y visualstudio2017enterprise

# GhostDoc Enterprise
choco upgrade -y ghostdoc-enterprise

# Java Development
choco upgrade -y gradle
choco upgrade -y maven
choco upgrade -y ant
choco upgrade -y ivy

# Spring Tool Suite
# choco upgrade -y springtoolsuite

# NetBeans
# choco upgrade -y netbeans

# C++
choco upgrade -y cmake
choco upgrade -y conan
choco upgrade -y doxygen.install

# PHP Development
choco upgrade -y php
choco upgrade -y composer

# C# Development
choco upgrade -y nswagstudio

# JetBrains
choco upgrade -y jetbrainstoolbox
choco upgrade -y resharper-clt
choco upgrade -y clion-ide
choco upgrade -y phpstorm
choco upgrade -y datagrip
choco upgrade -y webstorm
choco upgrade -y pycharm
choco upgrade -y kotlinc
# choco upgrade -y pycharm-community
choco upgrade -y intellijidea-ultimate
# choco upgrade -y intellijidea-community
choco upgrade -y resharper-ultimate-all
# choco upgrade -y resharper
# choco upgrade -y dotpeek
# choco upgrade -y dotcover
# choco upgrade -y dotcover-cli
# choco upgrade -y dottrace
# choco upgrade -y dotmemory
# choco upgrade -y resharpercpp
# choco upgrade -y teamcityaddin

# SpecFlow
choco upgrade -y specflow

# WiX Toolset
choco upgrade -y wixtoolset

# WebDeploy
choco upgrade -y webdeploy

# PowerShell
choco upgrade -y pester
choco upgrade -y pscx # PowerShell Community Extensions 
choco upgrade -y psake
choco upgrade -y carbon

# AWS
choco upgrade -y awstools.powershell

# Packet
choco upgrade -y paket

# 1Password
choco upgrade -y 1password
choco upgrade -y op # 1Password CLI

# Remote Desktop Manager
choco upgrade -y rdm 
# choco upgrade -y rdmfree 
# choco upgrade -y rdmagent

# Royal TS
# choco upgrade -y royalts

# Slack
choco upgrade -y slack
# choco upgrade -y microsoft-teams
choco upgrade -y gitter

# SQL Server
# choco upgrade -y sql-server-express
# choco upgrade -y sql-server-management-studio
# choco upgrade -y sqlserver-odbcdriver
# choco upgrade -y sqlserverlocaldb
# choco upgrade -y sqljdbc
# choco upgrade -y vscode-mssql
# choco upgrade -y sqlserver-cmdlineutils

# SQLite
# choco upgrade -y sqlite

# PostgreSql
# choco upgrade -y postgresql
# choco upgrade -y pgadmin4

# MySQL
# choco upgrade -y mysql
# choco upgrade -y mysql.workbench

# Kindle
choco upgrade -y kindle
choco upgrade -y sendtokindle
choco upgrade -y kindlegen

# Apache
choco upgrade -y maven
choco upgrade -y ant
choco upgrade -y svn
# choco upgrade -y jmeter
# choco upgrade -y activemq

# Tools
choco upgrade -y linqpad
choco upgrade -y azcopy
choco upgrade -y microsoftsecurityessentials
choco upgrade -y mbca # Microsoft Baseline Configuration Analyze

# GNU Privacy Guard for Windows
# choco upgrade -y gpg4win-vanilla
# choco upgrade -y gpg4win 
# choco upgrade -y gpg4win-light

# Cygwin
# choco upgrade -y cygwin

# msys2
choco upgrade -y msys2

# mingw
# choco upgrade -y mingw

# Azure
# choco upgrade -y azurepowershell --version 0.9.3
choco upgrade -y windowsazurepowershell
choco upgrade -y azure-cli
choco upgrade -y zurestorageexplorer
choco upgrade -y servicebusexplorer
choco upgrade -y azuredatafactorytools15
choco upgrade -y azure-documentdb-emulator
choco upgrade -y vscode-azurerm-tools

# Antlr
# choco upgrade -y antlrworks2

# TeX
# choco upgrade -y miktex

# Documentation Generators
# choco upgrade -y pandoc
# choco upgrade -y mkdocs mkdocs-material
# choco upgrade -y sandcastle
# choco upgrade -y hugo

# The Open Source Living Documentation Generator
# choco upgrade -y pickles
# choco upgrade -y picklesui

# Microsoft Office
choco upgrade -y onenote

# R
# choco upgrade -y r.studio
# choco upgrade -y r.project

# Log Parser Studio
choco upgrade -y logparserstudio

# Snagit
choco upgrade -y snagit --version 13.1.1

# Networking
choco upgrade -y winpcap
choco upgrade -y wireshark
choco upgrade -y microsoft-message-analyzer

# yubico
choco upgrade -y yubico-authenticator
choco upgrade -y yubikey-neo-manager
choco upgrade -y yubikey-personalization-tool

# Objective-C for Windows
# choco upgrade -y upgrade winobjc-tools

# DevOps
# choco upgrade -y chefdk
# choco upgrade -y inspec
# choco upgrade -y picassio

# Puppet
choco upgrade -y puppet
choco upgrade -y geppetto

# Arduino IDE
choco upgrade -y arduino




