<#
    Sample Kestrun Server demonstrating basic logging.
    Creates a logger with file + console sinks, registers it by name, then maps simple routes.
    Use -SetAsDefault on Register-KrLogger or pass -Logger/-LoggerName to New-KrServer to enable framework logs.
    FileName: 5.1-Simple-Logging.ps1
#>

param(
    [int]$Port = 5000,
    [IPAddress]$IPAddress = [IPAddress]::Loopback
)

$myLogger = New-KrLogger |
    Set-KrLoggerLevel -Value Debug |
    Add-KrSinkFile -Path '.\logs\sample.log' -RollingInterval Hour |
    Add-KrSinkConsole |
    Register-KrLogger -Name 'myLogger' -PassThru

# Create a new Kestrun server
New-KrServer -Name "Simple Server"

# Add a listener using provided parameters
Add-KrEndpoint -Port $Port -IPAddress $IPAddress

# Add the PowerShell runtime


Write-KrLog -Level Information -Logger $myLogger -Message "Kestrun server created and listener added."
# Enable Kestrun configuration
Enable-KrConfiguration

# Map the route with PowerShell
Add-KrMapRoute -Verbs Get -Path "/hello-powershell" -ScriptBlock {
    $response = "Hello, World!"
    Write-KrLog -Logger $myLogger -Level Debug -Message "Handling /hello-powershell response {response}" -Values $response
    Write-KrTextResponse -InputObject $response -StatusCode 200
}

# Map the route with CSharp
Add-KrMapRoute -Verbs Get -Path "/hello-csharp" -Code @"
    var response = "Hello, World!";
    // Log the response using the provided logger instance 'myLogger' (shared from PowerShell)
    myLogger.Debug("Handling /hello-csharp response {response}", response);
    Context.Response.WriteTextResponse( response, 200);
"@ -Language CSharp



# Start the server asynchronously
Start-KrServer

# Clean up and close the logger when the server stops
Close-KrLogger -Logger $myLogger
