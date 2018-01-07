configuration DevelopmentMachine
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -Name WindowsFeature
    Import-DscResource -Name cChocoInstaller
    Import-DscResource -Name cChocoPackageInstaller
    
    Node localhost
    {
		LocalConfigurationManager
		{
			ConfigurationMode = "ApplyAndAutoCorrect"
			ConfigurationModeFrequencyMins = 30
		}

        #------------------------------------------------------------------------------------------------------------------
        # Windows Features
        #------------------------------------------------------------------------------------------------------------------           
        WindowsFeature IIS 
        { 
            Ensure = "Present" 
            Name = "Web-Server"                       
        } 
        
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
        
        cChocoPackageInstaller jupyter # Python3
        {
            Name = 'jupyter'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
            Source = 'python'
        } 
        
        # pip install mkdocs
        # pip install mkdocs-cinder
        
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
        # Fiddler4
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller fiddler4
        {
            Name = 'fiddler4'
            Ensure = 'Absent'
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
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller visualstudio2017-workload-webbuildtools
        {
            Name = 'visualstudio2017-workload-webbuildtools'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }       
        cChocoPackageInstaller visualstudio2017-workload-netcoretools
        {
            Name = 'visualstudio2017-workload-netcoretools'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }      
        cChocoPackageInstaller visualstudio2017-workload-manageddesktop
        {
            Name = 'visualstudio2017-workload-manageddesktop'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }        
        cChocoPackageInstaller visualstudio2017-workload-azure
        {
            Name = 'visualstudio2017-workload-azure'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller visualstudio2017-workload-data
        {
            Name = 'visualstudio2017-workload-data'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }      
        cChocoPackageInstaller visualstudio2017-workload-nativedesktop
        {
            Name = 'visualstudio2017-workload-nativedesktop'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }      
        cChocoPackageInstaller visualstudio2017-workload-vctools
        {
            Name = 'visualstudio2017-workload-vctools'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }    
        cChocoPackageInstaller visualstudio2017-workload-node
        {
            Name = 'visualstudio2017-workload-node'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }     
        cChocoPackageInstaller visualstudio2017-workload-universal
        {
            Name = 'visualstudio2017-workload-universal'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller visualstudio2017-workload-netcrossplat
        {
            Name = 'visualstudio2017-workload-netcrossplat'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }    
        cChocoPackageInstaller visualstudio2017-workload-office
        {
            Name = 'visualstudio2017-workload-office'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }     
        cChocoPackageInstaller visualstudio2017-workload-visualstudioextension
        {
            Name = 'visualstudio2017-workload-visualstudioextension'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller visualstudio2017-workload-webcrossplat
        {
            Name = 'visualstudio2017-workload-webcrossplat'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }        
        cChocoPackageInstaller visualstudio2017-workload-managedgame
        {
            Name = 'visualstudio2017-workload-managedgame'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
        cChocoPackageInstaller visualstudio2017-workload-nativecrossplat
        {
            Name = 'visualstudio2017-workload-nativecrossplat'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }      
        cChocoPackageInstaller visualstudio2017-workload-nativegame
        {
            Name = 'visualstudio2017-workload-nativegame'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }       
        cChocoPackageInstaller visualstudio2017-workload-nativemobile
        {
            Name = 'visualstudio2017-workload-nativemobile'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }          
        
        #------------------------------------------------------------------------------------------------------------------
        # Postman
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller Postman
        {
            Name = "postman"
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }

        #------------------------------------------------------------------------------------------------------------------
        # JetBrains
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller jetbrainstoolbox
        {
            Name = "jetbrainstoolbox"
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller resharper-ultimate-all
        {
            Name = "resharper-ultimate-all"
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller resharper-clt
        {
            Name = "resharper-clt"
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }        
        cChocoPackageInstaller clion-ide
        {
            Name = "clion-ide"
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller phpstorm
        {
            Name = "phpstorm"
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }          
        cChocoPackageInstaller datagrip
        {
            Name = "datagrip"
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }    
        cChocoPackageInstaller webstorm
        {
            Name = "webstorm"
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller pycharm-community 
        {
            Name = "pycharm-community "
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }          
        cChocoPackageInstaller pycharm
        {
            Name = "pycharm"
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }   
        cChocoPackageInstaller kotlinc
        {
            Name = "kotlinc"
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }             
        cChocoPackageInstaller intellijidea-ultimate
        {
            Name = "intellijidea-ultimate"
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }     
        cChocoPackageInstaller intellijidea-community
        {
            Name = "intellijidea-community"
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }     
        #cChocoPackageInstaller resharper
        #{
        #    Name = "resharper"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #}         
        #cChocoPackageInstaller dotpeek
        #{
        #    Name = "dotpeek"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #}    
        #cChocoPackageInstaller dotcover
        #{
        #    Name = "dotcover"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #}     
        #cChocoPackageInstaller dottrace
        #{
        #    Name = "dottrace"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #} 
        #cChocoPackageInstaller dotmemory
        #{
        #    Name = "dotmemory"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #}    
        #cChocoPackageInstaller resharpercpp
        #{
        #    Name = "resharpercpp"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #}          
        cChocoPackageInstaller dotcover-cli
        {
            Name = "dotcover-cli"
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }       
        cChocoPackageInstaller teamcityaddin
        {
            Name = "teamcityaddin"
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }               

        #------------------------------------------------------------------------------------------------------------------
        # SpecFlow
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller specflow
        {
            Name = "specflow"
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         

        #------------------------------------------------------------------------------------------------------------------
        # WiX toolset
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller wixtoolset
        {
            Name = "wixtoolset"
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        
        #------------------------------------------------------------------------------------------------------------------
        # Web Deploy
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller WebDeploy
        {
            Name = "webdeploy"
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
        
        #------------------------------------------------------------------------------------------------------------------
        # PowerShell
        #------------------------------------------------------------------------------------------------------------------
        #cChocoPackageInstaller pester
        #{
        #    Name = "pester"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #} 
        #cChocoPackageInstaller pscx
        #{
        #    Name = "pscx"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #}  
        #cChocoPackageInstaller psake
        #{
        #    Name = "psake"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #} 
        #cChocoPackageInstaller powershell
        #{
        #    Name = "powershell"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #}   

        #------------------------------------------------------------------------------------------------------------------
        # Documentation
        #------------------------------------------------------------------------------------------------------------------
        #cChocoPackageInstaller miktex
        #{
        #    Name = "miktex"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #} 
        #cChocoPackageInstaller pandoc
        #{
        #    Name = "pandoc"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #}        
        #cChocoPackageInstaller mkdocs
        #{
        #    Name = "mkdocs"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #}  
        #cChocoPackageInstaller mkdocs-material
        #{
        #    Name = "mkdocs-material"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #}       
        #cChocoPackageInstaller sandcastle
        #{
        #    Name = "sandcastle"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #}        
        #cChocoPackageInstaller hugo
        #{
        #    Name = "hugo"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #}      
        #cChocoPackageInstaller sphinx
        #{
        #    Name = "sphinx"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #    Source = 'python'
        #}          
        #cChocoPackageInstaller pickles
        #{
        #    Name = "pickles"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #    Source = 'python'
        #}         
        #cChocoPackageInstaller picklesui
        #{
        #    Name = "picklesui"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True
        #    Source = 'python'
        #}          
        
        #------------------------------------------------------------------------------------------------------------------
        # Azure
        #------------------------------------------------------------------------------------------------------------------
        #cChocoPackageInstaller azurepowershell
        #{
        #    Name = "azurepowershell"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $False    
        #    Version = 0.9.3
        #}
        #cChocoPackageInstaller azurepowershell
        #{
        #    Name = "azurepowershell"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True 
        #} 
        #cChocoPackageInstaller azure-cli
        #{
        #    Name = "azure-cli"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True 
        #} 
        #cChocoPackageInstaller azurestorageexplorer
        #{
        #    Name = "azurestorageexplorer" # microsoftazurestorageexplorer?
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True 
        #}    
        #cChocoPackageInstaller servicebusexplorer
        #{
        #    Name = "servicebusexplorer"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True 
        #}   
        #cChocoPackageInstaller azuredatafactorytools15
        #{
        #    Name = "azuredatafactorytools15"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True 
        #}        
        #cChocoPackageInstaller azure-documentdb-emulator
        #{
        #    Name = "azure-documentdb-emulator"
        #    Ensure = 'Present'
        #    DependsOn = '[cChocoInstaller]Chocolatey'
        #    AutoUpgrade = $True 
        #}          
        
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
        
        cChocoPackageInstaller UrlRewrite2
        {
            Name = 'UrlRewrite2'
            Ensure = 'Absent'
            DependsOn = '[cChocoPackageInstaller]WebPI'
            AutoUpgrade = $True
            Source = 'webpi'
        }
        
        cChocoPackageInstaller ARRv3_0
        {
            Name = 'ARRv3_0'
            Ensure = 'Absent'
            DependsOn = '[cChocoPackageInstaller]WebPI'
            AutoUpgrade = $True
            Source = 'webpi'
        }
        
        cChocoPackageInstaller AzureNodeSDK
        {
            Name = 'AzureNodeSDK'
            Ensure = 'Absent'
            DependsOn = '[cChocoPackageInstaller]WebPI'
            AutoUpgrade = $True
            Source = 'webpi'
        }
        
        cChocoPackageInstaller AzurePHPSDK
        {
            Name = 'AzurePHPSDK'
            Ensure = 'Absent'
            DependsOn = '[cChocoPackageInstaller]WebPI'
            AutoUpgrade = $True
            Source = 'webpi'
        }
        
        cChocoPackageInstaller AzurePython27SDK
        {
            Name = 'AzurePython27SDK'
            Ensure = 'Absent'
            DependsOn = '[cChocoPackageInstaller]WebPI'
            AutoUpgrade = $True
            Source = 'webpi'
        }
        
        cChocoPackageInstaller AzurePython34SDK
        {
            Name = 'AzurePython34SDK'
            Ensure = 'Absent'
            DependsOn = '[cChocoPackageInstaller]WebPI'
            AutoUpgrade = $True
            Source = 'webpi'
        }   
        cChocoPackageInstaller AzureQuickStarts_1_6_0
        {
            Name = 'AzureQuickStarts_1_6_0'
            Ensure = 'Absent'
            DependsOn = '[cChocoPackageInstaller]WebPI'
            AutoUpgrade = $True
            Source = 'webpi'
        }         
        cChocoPackageInstaller AzureRubySDK
        {
            Name = 'AzureRubySDK'
            Ensure = 'Absent'
            DependsOn = '[cChocoPackageInstaller]WebPI'
            AutoUpgrade = $True
            Source = 'webpi'
        }  
        cChocoPackageInstaller WindowsAzurePowershellGet
        {
            Name = 'WindowsAzurePowershellGet'
            Ensure = 'Absent'
            DependsOn = '[cChocoPackageInstaller]WebPI'
            AutoUpgrade = $True
            Source = 'webpi'
        }         
        cChocoPackageInstaller WindowsAzurePowershellGet
        {
            Name = 'WindowsAzurePowershellGet'
            Ensure = 'Absent'
            DependsOn = '[cChocoPackageInstaller]WebPI'
            AutoUpgrade = $True
            Source = 'webpi'
        }  
        
        #------------------------------------------------------------------------------------------------------------------
        # VMware Workstation
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller vmwareworkstation
        {
            Name = 'vmwareworkstation'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
            Version = 12.5
        }
        cChocoPackageInstaller vmwareplayer
        {
            Name = 'vmwareworkstation'
            Ensure = 'Absent'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }        
        
        #------------------------------------------------------------------------------------------------------------------
        # Hashicorp
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller packer
        {
            Name = 'packer'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller vagrant
        {
            Name = 'vagrant'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }    
        cChocoPackageInstaller vault
        {
            Name = 'vault'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller terraform
        {
            Name = 'terraform'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
    }
}

# winrm quickconfig
# Set-Item -Path WSMan:\localhost\MaxEnvelopeSizeKb -Value 8192
# Install-Module -Name cChoco
DevelopmentMachine
Start-DscConfiguration -Path ./DevelopmentMachine -Wait -Force -Verbose
