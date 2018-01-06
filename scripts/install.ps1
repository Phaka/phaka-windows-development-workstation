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
        cChocoPackageInstaller Netfx35
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
    }
}

# winrm set winrm/config @{MaxEnvelopeSizekb="1024"}
# Install-Module -Name cChoco
DevelopmentMachine
Start-DscConfiguration -Verbose -Path ./DevelopmentMachine -Wait -Force
