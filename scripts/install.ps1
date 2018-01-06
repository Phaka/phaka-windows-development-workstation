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
        cChocoPackageInstaller DotNetCore10
        {
            Name = 'dotnetcore-sdk'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            Version = "1.0"
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller DotNetCore11
        {
            Name = 'dotnetcore-sdk'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            Version = "1.1"
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller DotNetCore20
        {
            Name = 'dotnetcore-sdk'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            Version = "2.0"
            AutoUpgrade = $True
        } 
        
        cChocoPackageInstaller DotNetCore21
        {
            Name = 'dotnetcore-sdk'
            Ensure = 'Present'
            DependsOn = '[cChocoInstaller]Chocolatey'
            Version = "2.1"
            AutoUpgrade = $True
        }         
        
    }
}

# winrm set winrm/config @{MaxEnvelopeSizekb="1024"}
# Install-Module -Name cChoco
DevelopmentMachine
Start-DscConfiguration -Verbose -Path ./DevelopmentMachine -Wait -Force
