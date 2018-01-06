configuration DevelopmentWorkstation2
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

DevelopmentWorkstation2
Start-DscConfiguration -Path .\DevelopmentWorkstation2 -ComputerName localhost -Wait -Force -Verbose


