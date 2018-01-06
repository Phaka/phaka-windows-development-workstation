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
        # Git
        #------------------------------------------------------------------------------------------------------------------       
        cChocoPackageInstaller Git
        {
            Name = 'git.install'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        
        cChocoPackageInstaller GitKraken
        {
            Name = 'gitkraken'
            Ensure = 'Present'
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
            DependsOn = '[cChocoInstaller]dotnet452'
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller Netfx46devpack
        {
            Name = 'netfx-4.6-devpack'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]dotnet46'
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller Netfx461devpack
        {
            Name = 'netfx-4.6.1-devpack'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]dotnet461'
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller Netfx462devpack
        {
            Name = 'netfx-4.6.2-devpack'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]dotnet462'
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller Netfx47devpack
        {
            Name = 'netfx-4.7-devpack'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]dotnet47'
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller Netfx471devpack
        {
            Name = 'netfx-4.7.1-devpack'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]dotnet471'
            AutoUpgrade = $True
        } 

        #------------------------------------------------------------------------------------------------------------------
        # Windows SDKs
        #------------------------------------------------------------------------------------------------------------------
        cChocoPackageInstaller WindowsSDK60
        {
            Name = 'windows-sdk-6.0'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }
        cChocoPackageInstaller WindowsSDK61
        {
            Name = 'windows-sdk-6.1'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }      
        cChocoPackageInstaller WindowsSDK70
        {
            Name = 'windows-sdk-7.0'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
        cChocoPackageInstaller WindowsSDK71
        {
            Name = 'windows-sdk-7.1'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller WindowsSDK80
        {
            Name = 'windows-sdk-8.0'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
        cChocoPackageInstaller WindowsSDK81
        {
            Name = 'windows-sdk-8.1'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller WindowsSDK10
        {
            Name = 'windows-sdk-10.0'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller WindowsSDK101
        {
            Name = 'windows-sdk-10.1'
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
            DependsOn = '[cChocoInstaller]Chocolatey'
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
            DependsOn = '[cChocoInstaller]Chocolatey'
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
        cChocoPackageInstaller Yarn
        {
            Name = 'yarn'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        } 
        cChocoPackageInstaller Bower
        {
            Name = 'yarn'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }  
        cChocoPackageInstaller Gulp
        {
            Name = 'gulp-cli'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            AutoUpgrade = $True
        }         
        
    }
}

# winrm set winrm/config @{MaxEnvelopeSizekb="1024"}
# Install-Module -Name cChoco
DevelopmentMachine
Start-DscConfiguration -Verbose -Path ./DevelopmentMachine -Wait -Force
