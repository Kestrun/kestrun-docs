<#
    Sample: Text and JSON Responses
    Purpose: Demonstrate the use of text and JSON responses in a Kestrun server.
    File:    9.1-Text-Json.ps1
    Notes:   Shows basic text responses and structured JSON responses.
#>
param(
    [int]$Port = 5000,
    [IPAddress]$IPAddress = [IPAddress]::Loopback
)
# 1. Logging
New-KrLogger | Add-KrSinkConsole | Register-KrLogger -Name 'console' -SetAsDefault

# 2. Server
New-KrServer -Name 'Responses 9.1'

# 3. Listener
Add-KrEndpoint -IPAddress $IPAddress -Port $Port -SelfSignedCert

# 4. Finalize configuration
Enable-KrConfiguration

# 5. Add routes demonstrating text responses
Add-KrMapRoute -Pattern '/ping' -Verbs GET -ScriptBlock {
    Write-KrTextResponse 'pong'
}

# 6. Created text with custom content type
Add-KrMapRoute -Pattern '/created' -Verbs POST -ScriptBlock {
    Write-KrTextResponse -InputObject 'resource created' -StatusCode 201 -ContentType 'text/plain; charset=utf-8'
}

# 7. JSON basic
Add-KrMapRoute -Pattern '/time' -Verbs GET -ScriptBlock {
    @{ utc = (Get-Date).ToUniversalTime(); version = 1 } | Write-KrJsonResponse -Compress
}

# 8. JSON depth + pretty (no -Compress)
Add-KrMapRoute -Pattern '/config' -Verbs GET -ScriptBlock {
    $cfg = @{ name = 'demo'; nested = @{ a = 1; b = 2; c = @(1, 2, 3) } }
    $cfg | Write-KrJsonResponse -Depth 5
}

# 9. Start the server
Start-KrServer -CloseLogsOnExit
