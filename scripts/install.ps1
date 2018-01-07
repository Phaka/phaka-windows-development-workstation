configuration DevelopmentMachine
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -Name WindowsFeature
    Import-DscResource -Name cChocoInstaller
    Import-DscResource -Name cChocoPackageInstaller
    
    Node localhost
    {
        #------------------------------------------------------------------------------------------------------------------
        # Chocolatey
        #------------------------------------------------------------------------------------------------------------------           
        cChocoInstaller Chocolatey
        {
            InstallDir = "$env:ALLUSERSPROFILE\Chocolatey"
        }
        
        Environment ChocolateyPath
        {
            Ensure = 'Present'
            Name = 'PATH'
            Value = '$env:ALLUSERSPROFILE\Chocolatey\bin'
            Path = $true
            DependsOn = '[cChocoInstaller]Chocolatey'
        }

        #------------------------------------------------------------------------------------------------------------------
        # Browsers
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller Firefox
        {
            Name = 'firefox'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        
        cChocoPackageInstaller GoogleChrome
        {
            Name = 'googlechrome'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
 
        cChocoPackageInstaller GoogleChromeCanary
        {
            Name = 'googlechrome.canary'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller Opera
        {
            Name = 'opera'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }     
        
        #------------------------------------------------------------------------------------------------------------------
        # Fonts
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller UbuntuFont
        {
            Name = 'ubuntu.font'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
        cChocoPackageInstaller sourcecodepro
        {
            Name = 'sourcecodepro'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller anonymouspro
        {
            Name = 'anonymouspro'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }   
        cChocoPackageInstaller bitstreamverafonts
        {
            Name = 'bitstreamverafonts'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller robotofonts
        {
            Name = 'robotofonts'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }    
        cChocoPackageInstaller opensans
        {
            Name = 'opensans'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller FontAwesomeFont
        {
            Name = 'font-awesome-font'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller oxygenmono
        {
            Name = 'oxygenmono'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller hackfont
        {
            Name = 'hackfont'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }    
       

        #------------------------------------------------------------------------------------------------------------------
        # File Sharing
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller dropbox
        {
            Name = 'dropbox'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller onedrive
        {
            Name = 'onedrive'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller googledrive
        {
            Name = 'googledrive'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }          

        #------------------------------------------------------------------------------------------------------------------
        # Messenging Tools
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller Slack
        {
            Name = 'slack'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller MicrosoftTeams
        {
            Name = 'microsoft-teams'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller Gitter
        {
            Name = 'gitter'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }        
        cChocoPackageInstaller Skype
        {
            Name = 'skype'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }        
        cChocoPackageInstaller SkypeForBusiness
        {
            Name = 'skypeforbusiness'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 

        #------------------------------------------------------------------------------------------------------------------
        # Utilities
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller 7zip
        {
            Name = '7zip'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller Grammarly
        {
            Name = 'grammarly'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
            
        #------------------------------------------------------------------------------------------------------------------
        # Password Managers
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller _1Password
        {
            Name = '1password'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller _1PasswordCli
        {
            Name = 'op'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        
        #------------------------------------------------------------------------------------------------------------------
        # Remote Desktop Manager
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller RemoteDesktopManager
        {
            Name = 'rdm'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        
        cChocoPackageInstaller RemoteDesktopManagerFree
        {
            Name = 'rdmfree'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        
        cChocoPackageInstaller RemoteDesktopManagerAgent
        {
            Name = 'rdmagent'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }

        #------------------------------------------------------------------------------------------------------------------
        # Royal TS
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller RoyalTS
        {
            Name = 'royalts'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        
        #------------------------------------------------------------------------------------------------------------------
        # SSH Tools
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller winscp
        {
            Name = 'winscp'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller putty
        {
            Name = 'putty'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller BitviseSshClient
        {
            Name = 'bitvise-ssh-client'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller BitviseSshServer
        {
            Name = 'bitvise-ssh-server'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }   
        cChocoPackageInstaller OpenSSH
        {
            Name = 'openssh'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }           
        
        #------------------------------------------------------------------------------------------------------------------
        # Networking
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller WinPCAP
        {
            Name = 'winpcap'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller Wireshark
        {
            Name = 'wireshark'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller MicrosoftMessageAnalyzer
        {
            Name = 'microsoft-message-analyzer'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller nmap
        {
            Name = 'nmap'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        
        #------------------------------------------------------------------------------------------------------------------
        # System Tools
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller LogParserStudio
        {
            Name = 'logparserstudio'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }        
        cChocoPackageInstaller SysInternals
        {
            Name = 'sysinternals'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }      
        
        #------------------------------------------------------------------------------------------------------------------
        # NuGet
        #------------------------------------------------------------------------------------------------------------------        
        cChocoPackageInstaller nugetpackageexplorer
        {
            Name = 'nugetpackageexplorer'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller NugetCommandLine
        {
            Name = 'Nuget.CommandLine'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
       
        #------------------------------------------------------------------------------------------------------------------
        # Yubico
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller YubicoAuthenticator
        {
            Name = 'yubico-authenticator'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller YubikeyNeoManager
        {
            Name = 'yubikey-neo-manager'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller YubikeyPersonalizationTool
        {
            Name = 'yubikey-personalization-tool'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }

        #------------------------------------------------------------------------------------------------------------------
        # Comparison Tools
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller WinMerge
        {
            Name = 'winmerge'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller BeyondCompare
        {
            Name = 'beyondcompare'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        #------------------------------------------------------------------------------------------------------------------
        # Git
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller Git
        {
            Name = 'git.install'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        
        #------------------------------------------------------------------------------------------------------------------
        # Git Clients
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller GitKraken
        {
            Name = 'gitkraken'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller TortoiseGit
        {
            Name = 'tortoisegit'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller SmartGit
        {
            Name = 'smartgit'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller SourceTree
        {
            Name = 'sourcetree'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }        

        #------------------------------------------------------------------------------------------------------------------
        # Mercurial
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller Mercurial
        {
            Name = 'hg'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller TortoiseHG
        {
            Name = 'tortoisehg'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        
        #------------------------------------------------------------------------------------------------------------------
        # Subversion
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller Subversion
        {
            Name = 'svn'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller TortoiseSVN
        {
            Name = 'tortoisesvn'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        
        #------------------------------------------------------------------------------------------------------------------
        # Bazaar
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller Bazaar
        {
            Name = 'bzr'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }        
        
        #------------------------------------------------------------------------------------------------------------------
        # .NET Core
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller DotNetCore
        {
            Name = 'dotnetcore-sdk'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }   

        #------------------------------------------------------------------------------------------------------------------
        # .NET Framework Versions
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller dotnet35
        {
            Name = 'dotnet3.5'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller dotnet45
        {
            Name = 'dotnet4.5'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
        cChocoPackageInstaller dotnet451
        {
            Name = 'dotnet4.5.1'
            Ensure = 'Present' 
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller dotnet452
        {
            Name = 'dotnet4.5.2'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller dotnet46
        {
            Name = 'dotnet4.6'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller dotnet461
        {
            Name = 'dotnet4.6.1'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
        cChocoPackageInstaller dotnet462
        {
            Name = 'dotnet4.6.2'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }      
        cChocoPackageInstaller dotnet47
        {
            Name = 'dotnet4.7'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }   
        cChocoPackageInstaller dotnet471
        {
            Name = 'dotnet4.7.1'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }          
        
        #------------------------------------------------------------------------------------------------------------------
        # .NET Framework Development Packs
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller NetFx452devpack
        {
            Name = 'netfx-4.5.2-devpack'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]dotnet452'
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller Netfx46devpack
        {
            Name = 'netfx-4.6-devpack'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]dotnet46'
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller Netfx461devpack
        {
            Name = 'netfx-4.6.1-devpack'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]dotnet461'
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller Netfx462devpack
        {
            Name = 'netfx-4.6.2-devpack'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]dotnet462'
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller Netfx47devpack
        {
            Name = 'netfx-4.7-devpack'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]dotnet47'
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller Netfx471devpack
        {
            Name = 'netfx-4.7.1-devpack'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]dotnet471'
            AutoUpgrade = $True
        } 

        #------------------------------------------------------------------------------------------------------------------
        # Windows SDKs
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller WindowsSDK60
        {
            Name = 'windows-sdk-6.0'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller WindowsSDK61
        {
            Name = 'windows-sdk-6.1'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }      
        cChocoPackageInstaller WindowsSDK70
        {
            Name = 'windows-sdk-7.0'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
        cChocoPackageInstaller WindowsSDK71
        {
            Name = 'windows-sdk-7.1'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller WindowsSDK80
        {
            Name = 'windows-sdk-8.0'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
        cChocoPackageInstaller WindowsSDK81
        {
            Name = 'windows-sdk-8.1'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller WindowsSDK10
        {
            Name = 'windows-sdk-10.0'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller WindowsSDK101
        {
            Name = 'windows-sdk-10.1'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        
        #------------------------------------------------------------------------------------------------------------------
        # msys2
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller MSys2
        {
            Name = 'msys2'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        
        #------------------------------------------------------------------------------------------------------------------
        # Java Development Kits
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller JDK8
        {
            Name = 'jdk8'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller JDK9
        {
            Name = 'jdk9'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 

        #------------------------------------------------------------------------------------------------------------------
        # SBT and Scala
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller SBT
        {
            Name = "sbt"
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        
        cChocoPackageInstaller Scala
        {
            Name = "scala.install"
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }

        #------------------------------------------------------------------------------------------------------------------
        # Python
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller Python2
        {
            Name = 'python2'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller Python # Python3
        {
            Name = 'python'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        
        #------------------------------------------------------------------------------------------------------------------
        # Go Language
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller GoLang
        {
            Name = 'golang'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         

        #------------------------------------------------------------------------------------------------------------------
        # Haskell
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller Haskell
        {
            Name = 'haskell-stack'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         

        #------------------------------------------------------------------------------------------------------------------
        # Clojure
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller Clojure
        {
            Name = 'clojure'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]JDK8'
            AutoUpgrade = $True
        }     
        
        #------------------------------------------------------------------------------------------------------------------
        # Ruby
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller Ruby
        {
            Name = 'ruby'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }     
        cChocoPackageInstaller RubyDevKit
        {
            Name = 'ruby2.devkit'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]Ruby'
            AutoUpgrade = $True
        } 

        #------------------------------------------------------------------------------------------------------------------
        # NodeJS
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller NodeJS
        {
            Name = 'nodejs'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        
        #------------------------------------------------------------------------------------------------------------------
        # JavaScript Development
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller Yarn
        {
            Name = 'yarn'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]NodeJS'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller Bower
        {
            Name = 'yarn'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]NodeJS'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller Gulp
        {
            Name = 'gulp-cli'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]NodeJS'
            AutoUpgrade = $True
        }  
        
        #------------------------------------------------------------------------------------------------------------------
        # Java Development
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller Gradle
        {
            Name = 'gradle'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]JDK8'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller Maven
        {
            Name = 'maven'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]JDK8'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller Ant
        {
            Name = 'ant'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]JDK8'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller IVY
        {
            Name = 'ivy'
            Ensure = 'Present'
            DependsOn = '[cChocoPackageInstaller]JDK8'
            AutoUpgrade = $True
        }                  
        
        #------------------------------------------------------------------------------------------------------------------
        # Java IDEs
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller SpringToolSuite
        {
            Name = 'springtoolsuite'
            Ensure = 'Absent'
            DependsOn = '[cChocoPackageInstaller]JDK8'
            AutoUpgrade = $True
        }
        
        cChocoPackageInstaller Netbeans
        {
            Name = 'netbeans'
            Ensure = 'Absent'
            DependsOn = '[cChocoPackageInstaller]JDK8'
            AutoUpgrade = $True
        }
        
        cChocoPackageInstaller Eclipse
        {
            Name = 'eclipse'
            Ensure = 'Absent'
            DependsOn = '[cChocoPackageInstaller]JDK8'
            AutoUpgrade = $True
        }  

        #------------------------------------------------------------------------------------------------------------------
        # Web Platform Installer
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller WebPI
        {
            Name = 'webpi'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller WebPICommandLine
        {
            Name = 'webpicmd'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        
        #------------------------------------------------------------------------------------------------------------------
        # Visual Studio Code
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller VisualStudioCode
        {
            Name = 'visualstudiocode'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller vscode-powershell
        {
            Name = 'vscode-powershell'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }        
        cChocoPackageInstaller vscode-csharp
        {
            Name = 'vscode-csharp'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller vscode-docker
        {
            Name = 'vscode-docker'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
        cChocoPackageInstaller vscode-cake
        {
            Name = 'vscode-cake'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller vscode-gitattributes
        {
            Name = 'vscode-gitattributes'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }     
        cChocoPackageInstaller vscode-gitlens
        {
            Name = 'vscode-gitlens'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }          
        
        #------------------------------------------------------------------------------------------------------------------
        # Visual Studio 2012
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller visualstudio2012professional
        {
            Name = 'visualstudio2012professional'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }    
        cChocoPackageInstaller visualstudio2012premium
        {
            Name = 'visualstudio2012premium'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller visualstudio2012ultimate
        {
            Name = 'visualstudio2012ultimate'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }          
        cChocoPackageInstaller powershell-visualstudio2012
        {
            Name = 'poshtools-visualstudio2012'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }        
        cChocoPackageInstaller ssdt12
        {
            Name = 'ssdt12'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }     
        
        #------------------------------------------------------------------------------------------------------------------
        # Visual Studio 2013
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller visualstudio2013premium
        {
            Name = 'visualstudio2013premium'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }             
         cChocoPackageInstaller visualstudio2013professional
        {
            Name = 'visualstudio2013professional'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }          
         cChocoPackageInstaller powershell-visualstudio2013
        {
            Name = 'poshtools-visualstudio2013'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }       
        
        #------------------------------------------------------------------------------------------------------------------
        # Visual Studio 2015
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller visualstudio2015community
        {
            Name = 'visualstudio2015community'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller visualstudio2015professional
        {
            Name = 'visualstudio2015professional'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller visualstudio2015enterprise
        {
            Name = 'visualstudio2015enterprise'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller ssdt15
        {
            Name = 'ssdt15'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }   
        cChocoPackageInstaller visualstudio2015-powershelltools
        {
            Name = 'visualstudio2015-powershelltools'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller poshtools-visualstudio2015
        {
            Name = 'poshtools-visualstudio2015'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller azuredatafactorytools15
        {
            Name = 'azuredatafactorytools15'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller visualstudio2015-nugetpackagemanager
        {
            Name = 'visualstudio2015-nugetpackagemanager'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
        
        #------------------------------------------------------------------------------------------------------------------
        # Visual Studio 2017
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller visualstudio2017community
        {
            Name = 'visualstudio2017community'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller visualstudio2017professional
        {
            Name = 'visualstudio2017professional'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }    
        cChocoPackageInstaller visualstudio2017enterprise
        {
            Name = 'visualstudio2017enterprise'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
         cChocoPackageInstaller visualstudio2017buildtools
        {
            Name = 'visualstudio2017buildtools'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }        
        cChocoPackageInstaller visualstudio2017-workload-netweb
        {
            Name = 'visualstudio2017-workload-netweb'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller visualstudio2017-workload-webbuildtools
        {
            Name = 'visualstudio2017-workload-webbuildtools'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }       
        cChocoPackageInstaller visualstudio2017-workload-netcoretools
        {
            Name = 'visualstudio2017-workload-netcoretools'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }      
        cChocoPackageInstaller visualstudio2017-workload-manageddesktop
        {
            Name = 'visualstudio2017-workload-manageddesktop'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }        
        cChocoPackageInstaller visualstudio2017-workload-azure
        {
            Name = 'visualstudio2017-workload-azure'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller visualstudio2017-workload-data
        {
            Name = 'visualstudio2017-workload-data'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }      
        cChocoPackageInstaller visualstudio2017-workload-nativedesktop
        {
            Name = 'visualstudio2017-workload-nativedesktop'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }      
        cChocoPackageInstaller visualstudio2017-workload-vctools
        {
            Name = 'visualstudio2017-workload-vctools'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }    
        cChocoPackageInstaller visualstudio2017-workload-node
        {
            Name = 'visualstudio2017-workload-node'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }     
        cChocoPackageInstaller visualstudio2017-workload-universal
        {
            Name = 'visualstudio2017-workload-universal'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller visualstudio2017-workload-netcrossplat
        {
            Name = 'visualstudio2017-workload-netcrossplat'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }    
        cChocoPackageInstaller visualstudio2017-workload-office
        {
            Name = 'visualstudio2017-workload-office'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }     
        cChocoPackageInstaller visualstudio2017-workload-visualstudioextension
        {
            Name = 'visualstudio2017-workload-visualstudioextension'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller visualstudio2017-workload-webcrossplat
        {
            Name = 'visualstudio2017-workload-webcrossplat'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }        
        cChocoPackageInstaller visualstudio2017-workload-managedgame
        {
            Name = 'visualstudio2017-workload-managedgame'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
        cChocoPackageInstaller visualstudio2017-workload-nativecrossplat
        {
            Name = 'visualstudio2017-workload-nativecrossplat'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }      
        cChocoPackageInstaller visualstudio2017-workload-nativegame
        {
            Name = 'visualstudio2017-workload-nativegame'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }       
        cChocoPackageInstaller visualstudio2017-workload-nativemobile
        {
            Name = 'visualstudio2017-workload-nativemobile'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }          
    }
}

# winrm set winrm/config @{MaxEnvelopeSizekb="1024"}
# Install-Module -Name cChoco
DevelopmentMachine
Start-DscConfiguration -Verbose -Path ./DevelopmentMachine -Wait -Force
