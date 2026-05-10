---
layout: default
parent: PowerShell Cmdlets
nav_order: 17
render_with_liquid: false
title: Add-KrEndpoint
---

# Add-KrEndpoint

## SYNOPSIS

Adds a Kestrun endpoint using explicit parameters or environment-based binding.

## SYNTAX

### NoCert (Default)

```powershell
Add-KrEndpoint [-Port <int>] [-IPAddress <ipaddress>] [-HostName <string>] [-Uri <uri>]
 [-AddressFamily <AddressFamily[]>] [-UseConnectionLogging] [-PassThru] [<CommonParameters>]
```

### CertFile

```powershell
Add-KrEndpoint -CertPath <string> [-Port <int>] [-IPAddress <ipaddress>] [-HostName <string>]
 [-Uri <uri>] [-AddressFamily <AddressFamily[]>] [-CertPassword <securestring>]
 [-Protocols <HttpProtocols>] [-UseConnectionLogging] [-PassThru] [<CommonParameters>]
```

### SelfSignedCert

```powershell
Add-KrEndpoint [-Port <int>] [-IPAddress <ipaddress>] [-HostName <string>] [-Uri <uri>]
 [-AddressFamily <AddressFamily[]>] [-SelfSignedCert] [-Protocols <HttpProtocols>]
 [-UseConnectionLogging] [-PassThru] [<CommonParameters>]
```

### x509Certificate

```powershell
Add-KrEndpoint -X509Certificate <X509Certificate2> [-Port <int>] [-IPAddress <ipaddress>]
 [-HostName <string>] [-Uri <uri>] [-AddressFamily <AddressFamily[]>] [-Protocols <HttpProtocols>]
 [-UseConnectionLogging] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Adds an HTTP or HTTPS endpoint to the current Kestrun server definition.
The listener target can be supplied explicitly with -Uri, -HostName, -Port,
and/or -IPAddress, or resolved from environment variables when no explicit
binding target was provided.

Binding precedence:

1.
Explicit -Uri
2.
Explicit -HostName
3.
Explicit -Port / -IPAddress
4.
ASPNETCORE_URLS environment variable
5.
PORT environment variable
6.
Built-in defaults

ASPNETCORE_URLS supports ASP.NET Core style values such as
'http://localhost:5000', 'http://+:8080', or a semicolon-delimited list,
where the first non-empty entry is used.
When ASPNETCORE_URLS is not set,
PORT can be used to bind to 0.0.0.0 on the specified port.
When neither explicit parameters nor environment variables provide a
listener target, Add-KrEndpoint defaults to loopback binding
(`127.0.0.1` for IPv4, `::1` for IPv6-only).

## EXAMPLES

### EXAMPLE 1

New-KrServer -Name 'MyKestrunServer'
Add-KrEndpoint -Port 5000
Adds a default loopback listener on port 5000.

### EXAMPLE 2

New-KrServer -Name 'MyKestrunServer'
Add-KrEndpoint -Port 5000 -IPAddress ([System.Net.IPAddress]::Loopback)
Adds an explicit loopback listener on port 5000.

### EXAMPLE 3

$env:PORT = '8080'
New-KrServer -Name 'MyKestrunServer'
Add-KrEndpoint
Uses the PORT environment variable and binds to 0.0.0.0:8080.

### EXAMPLE 4

$env:ASPNETCORE_URLS = 'http://localhost:5000;http://127.0.0.1:5001'
New-KrServer -Name 'MyKestrunServer'
Add-KrEndpoint
Uses the first ASPNETCORE_URLS entry and binds to localhost:5000.

### EXAMPLE 5

$httpsEndpoint = Add-KrEndpoint -Port 5443 -CertPath .\devcert.pfx -CertPassword $pw -PassThru
Add-KrMapRoute -Pattern '/secure' -Endpoints $httpsEndpoint -ScriptBlock { Write-KrTextResponse 'Secure hello' }
Adds an HTTPS listener and returns route endpoint specs for endpoint-specific routing.

### EXAMPLE 6

Add-KrEndpoint -Port 5443 -SelfSignedCert
Creates an HTTPS listener using a localhost development certificate issued from a generated
development root CA.

## PARAMETERS

### -AddressFamily

An array of address families to filter resolved addresses (e.g., IPv4-only).
This parameter is optional.

```yaml
Type: System.Net.Sockets.AddressFamily[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CertPassword

The password for the SSL certificate, if applicable.
This parameter is optional.

```yaml
Type: System.Security.SecureString
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CertFile
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CertPath

The path to the SSL certificate file.
This parameter is Mandatory if using HTTPS.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CertFile
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -HostName

The hostname for the listener.
This parameter is Mandatory if using the 'HostName' parameter set.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IPAddress

The IP address on which the server will listen.
If omitted and no other
explicit binding target is supplied, Add-KrEndpoint may resolve the listener
from ASPNETCORE_URLS or PORT before falling back to the default loopback binding.

```yaml
Type: System.Net.IPAddress
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If specified, returns one or more endpoint spec strings that can be passed
directly to Add-KrMapRoute -Endpoints for listener-specific routing.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Port

The port on which the server will listen for incoming requests.
When no
explicit binding target is provided, this value may be resolved from the
PORT environment variable instead.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Protocols

The HTTP protocols to use (e.g., Http1, Http2).
Defaults to Http1 for HTTP listeners and Http1OrHttp2 for HTTPS listeners.

```yaml
Type: Microsoft.AspNetCore.Server.Kestrel.Core.HttpProtocols
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SelfSignedCert
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: CertFile
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: x509Certificate
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SelfSignedCert

If specified, a localhost development certificate will be generated and used for HTTPS.
The listener uses the issued leaf certificate while the generated development root remains
untrusted unless you trust it explicitly through New-KrSelfSignedCertificate -Development -TrustRoot.
This parameter
is optional.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- SelfSignedCertificate
- SelfSigned
ParameterSets:
- Name: SelfSignedCert
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Uri

The full URI for the listener.
This parameter is Mandatory if using the 'Uri' parameter set.

```yaml
Type: System.Uri
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UseConnectionLogging

If specified, enables connection logging for the listener.
This is useful for debugging and monitoring purposes.
This parameter is optional.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -X509Certificate

An X509Certificate2 object representing the SSL certificate.
This parameter is Mandatory if using HTTPS

```yaml
Type: System.Security.Cryptography.X509Certificates.X509Certificate2
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: x509Certificate
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String

{{ Fill in the Description }}

## NOTES

This function is designed to be used while staging server listeners before
Enable-KrConfiguration is called.


## RELATED LINKS

{{ Fill in the related links here }}
