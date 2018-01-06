configuration DevelopmentWorkstation
{
    node ("localhost")
    {
        File DirectoryCopy
        {
            Ensure = "Present"  
            Type = "File" 
            DestinationPath = "$env:temp\Hello.txt"    
            Contents = "Hello World"
        }
    }
}

DevelopmentWorkstation
Start-DscConfiguration -Path .\DevelopmentWorkstation –ComputerName localhost -Wait -Force -Verbose
