---
layout: default
parent: PowerShell Cmdlets
nav_order: 182
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Set-KrServerHttpsOptions
---

# Set-KrServerHttpsOptions

## SYNOPSIS

Configures HTTPS options for a Kestrun server instance.

## SYNTAX

### Items (Default)

```powershell
Set-KrServerHttpsOptions [-Server <KestrunHost>] [-SslProtocols <SslProtocols>]
 [-ClientCertificateValidationCode <string>] [-ClientCertificateValidationCodePath <string>]
 [-ClientCertificateValidationLanguage <string>] [-ClientCertificateMode <ClientCertificateMode>]
 [-ClientCertificateValidation <Func`4[X509Certificate2,X509Chain,SslPolicyErrors,bool]>]
 [-CheckCertificateRevocation] [-ServerCertificate <X509Certificate2>]
 [-ServerCertificateChain <X509Certificate2Collection>] [-HandshakeTimeout <int>] [-PassThru]
 [<CommonParameters>]
```

### Options

```powershell
Set-KrServerHttpsOptions -Options <HttpsConnectionAdapterOptions> [-Server <KestrunHost>]
 [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function allows administrators to set or modify the HTTPS connection adapter options for a Kestrun
server instance, including SSL protocols, client certificate modes, and server certificates.

## EXAMPLES

### EXAMPLE 1

Set-KrServerHttpsOptions -Server $server -SslProtocols Tls12
This command sets the SSL protocols for the specified Kestrun server instance to use TLS 1.2.

### EXAMPLE 2

Set-KrServerHttpsOptions -Server $server -ClientCertificateMode RequireCertificate
This command sets the client certificate mode for the specified Kestrun server instance to require a client certificate.

### EXAMPLE 3

Set-KrServerHttpsOptions -Server $server -CheckCertificateRevocation
This command enables certificate revocation checking for the specified Kestrun server instance.

### EXAMPLE 4

Set-KrServerHttpsOptions -Server $server -ServerCertificate $cert
This command sets the server certificate for the specified Kestrun server instance.

### EXAMPLE 5

Set-KrServerHttpsOptions -Server $server -HandshakeTimeout 30
This command sets the handshake timeout for the specified Kestrun server instance to 30 seconds.

## PARAMETERS

### -CheckCertificateRevocation

If specified, enables certificate revocation checking for HTTPS connections.
This parameter is optional and can be left unset to use defaults.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ClientCertificateMode

Specifies the client certificate mode for HTTPS connections.
This parameter is optional and can be set to a specific mode or left unset to use defaults.

```yaml
Type: Microsoft.AspNetCore.Server.Kestrel.Https.ClientCertificateMode
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ClientCertificateValidation

A .NET delegate invoked by Kestrel during the TLS handshake to validate the presented client certificate.
The delegate signature is:
Func[X509Certificate2, X509Chain, SslPolicyErrors, bool].
Note: This delegate runs on Kestrel TLS threads (no PowerShell runspace), so it must be pure .NET, fast, and thread-safe.

```yaml
Type: System.Func`4[System.Security.Cryptography.X509Certificates.X509Certificate2,System.Security.Cryptography.X509Certificates.X509Chain,System.Net.Security.SslPolicyErrors,System.Boolean]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ClientCertificateValidationCode

A C# or VB.NET method-body snippet that will be compiled with Roslyn into the TLS client certificate validation delegate.
The generated method signature is:
  bool Validate(X509Certificate2 certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors)

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ClientCertificateValidationCodePath

Path to a .cs/.csx or .vb file containing a method-body snippet that will be compiled with Roslyn into the TLS client certificate validation delegate.
The language is inferred from the file extension.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ClientCertificateValidationLanguage

The language used for -ClientCertificateValidationCode.
Valid values are CSharp and VBNet.

```yaml
Type: System.String
DefaultValue: CSharp
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -HandshakeTimeout

Specifies the handshake timeout duration in seconds for HTTPS connections.
This parameter is optional and can be left unset to use defaults.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Options

The HttpsConnectionAdapterOptions object containing the desired HTTPS configuration settings.

```yaml
Type: Microsoft.AspNetCore.Server.Kestrel.Https.HttpsConnectionAdapterOptions
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Options
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If specified, the cmdlet will return the modified server instance after applying the HTTPS options.

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

### -Server

The Kestrun server instance to configure.
This parameter is mandatory and must be a valid server object.

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

### -ServerCertificate

Specifies the server certificate to be used for HTTPS connections.
This parameter is optional and can be left unset to use defaults.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509Certificate2
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ServerCertificateChain

Specifies the server certificate chain to be used for HTTPS connections.
This parameter is optional and can be left unset to use defaults.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509Certificate2Collection
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SslProtocols

Specifies the SSL protocols to be used for HTTPS connections.
This parameter is optional and can be set to a specific protocol or left unset to use defaults.

```yaml
Type: System.Security.Authentication.SslProtocols
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
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

### [Kestrun.Hosting.KestrunHost]
The modified Kestrun server instance with the applied HTTPS options.

{{ Fill in the Description }}

## NOTES

This function is designed to be used in the context of a Kestrun server setup and allows for flexible configuration of HTTPS options.
TLS callbacks (like client certificate validation) execute during the TLS handshake and must not rely on PowerShell runspaces.


## RELATED LINKS

{{ Fill in the related links here }}
