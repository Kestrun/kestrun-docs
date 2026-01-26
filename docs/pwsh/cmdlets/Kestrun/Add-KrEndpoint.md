---
layout: default
parent: PowerShell Cmdlets
nav_order: 17
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Add-KrEndpoint
---

# Add-KrEndpoint

## SYNOPSIS

Creates a new Kestrun server instance with specified options and listeners.

## SYNTAX

### NoCert (Default)

```powershell
Add-KrEndpoint [-Server <KestrunHost>] [-Port <int>] [-IPAddress <ipaddress>] [-HostName <string>]
 [-Uri <uri>] [-AddressFamily <AddressFamily[]>] [-UseConnectionLogging] [-PassThru]
 [<CommonParameters>]
```

### CertFile

```powershell
Add-KrEndpoint -CertPath <string> [-Server <KestrunHost>] [-Port <int>] [-IPAddress <ipaddress>]
 [-HostName <string>] [-Uri <uri>] [-AddressFamily <AddressFamily[]>] [-CertPassword <securestring>]
 [-Protocols <HttpProtocols>] [-UseConnectionLogging] [-PassThru] [<CommonParameters>]
```

### SelfSignedCert

```powershell
Add-KrEndpoint [-Server <KestrunHost>] [-Port <int>] [-IPAddress <ipaddress>] [-HostName <string>]
 [-Uri <uri>] [-AddressFamily <AddressFamily[]>] [-SelfSignedCert] [-Protocols <HttpProtocols>]
 [-UseConnectionLogging] [-PassThru] [<CommonParameters>]
```

### x509Certificate

```powershell
Add-KrEndpoint -X509Certificate <X509Certificate2> [-Server <KestrunHost>] [-Port <int>]
 [-IPAddress <ipaddress>] [-HostName <string>] [-Uri <uri>] [-AddressFamily <AddressFamily[]>]
 [-Protocols <HttpProtocols>] [-UseConnectionLogging] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function initializes a new Kestrun server instance, allowing configuration of various options and listeners.

## EXAMPLES

### EXAMPLE 1

New-KrServer -Name 'MyKestrunServer'
Creates a new Kestrun server instance with the specified name.

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
Defaults to [System.Net.IPAddress]::Any, which means it will listen on all available network interfaces.

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

If specified, the cmdlet will return the modified server instance after adding the listener.

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
The default is 0, which means a random available port will be assigned.

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

If specified, a self-signed certificate will be generated and used for HTTPS.
This parameter is optional.

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

### -Server

The Kestrun server instance to configure.
This parameter is Mandatory and must be a valid server object.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
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

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This function is designed to be used after the server has been configured with routes and listeners.


## RELATED LINKS

{{ Fill in the related links here }}
