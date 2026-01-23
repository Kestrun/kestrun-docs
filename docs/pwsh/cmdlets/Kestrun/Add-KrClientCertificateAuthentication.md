---
layout: default
parent: PowerShell Cmdlets
nav_order: 10
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://learn.microsoft.com/en-us/aspnet/core/security/authentication/certauth
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Add-KrClientCertificateAuthentication
---

# Add-KrClientCertificateAuthentication

## SYNOPSIS

Adds Client Certificate authentication to the Kestrun server.

## SYNTAX

### v1 (Default)

```powershell
Add-KrClientCertificateAuthentication [-Server <KestrunHost>] [-AuthenticationScheme <string>]
 [-DisplayName <string>] [-DocId <string[]>] [-Description <string>] [-Deprecated]
 [-AllowedCertificateTypes <CertificateTypes>] [-ValidateCertificateUse] [-ValidateValidityPeriod]
 [-RevocationMode <X509RevocationMode>] [-Logger <ILogger>] [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Add-KrClientCertificateAuthentication -Options <ClientCertificateAuthenticationOptions>
 [-Server <KestrunHost>] [-AuthenticationScheme <string>] [-DisplayName <string>]
 [-DocId <string[]>] [-Description <string>] [-Deprecated] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Configures the Kestrun server to use client certificate authentication for incoming requests.
This allows the server to authenticate users based on their X.509 client certificates.

## EXAMPLES

### EXAMPLE 1

Add-KrClientCertificateAuthentication -Server $server -PassThru
This example adds client certificate authentication to the specified Kestrun server instance and returns the modified instance.

### EXAMPLE 2

Add-KrClientCertificateAuthentication -Server $server -AllowedCertificateTypes Chained -ValidateCertificateUse -PassThru
This example adds client certificate authentication with strict validation to the Kestrun server.

## PARAMETERS

### -AllowedCertificateTypes

Specifies which certificate types are allowed (Chained, SelfSigned, or All).

```yaml
Type: Microsoft.AspNetCore.Authentication.Certificate.CertificateTypes
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: v1
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AuthenticationScheme

The name of the client certificate authentication scheme (default is 'Certificate').

```yaml
Type: System.String
DefaultValue: Certificate
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

### -Deprecated

If specified, marks the authentication scheme as deprecated in OpenAPI documentation.

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

### -Description

A description of the client certificate authentication scheme.

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

### -DisplayName

The display name for the authentication scheme.

```yaml
Type: System.String
DefaultValue: Client Certificate Authentication
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

### -DocId

The documentation IDs to associate with this authentication scheme.

```yaml
Type: System.String[]
DefaultValue: '[Kestrun.OpenApi.OpenApiDocDescriptor]::DefaultDocumentationIds'
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

### -Logger

A logger to use for logging authentication events.

```yaml
Type: Serilog.ILogger
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: v1
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

The Client Certificate authentication options to configure.
If not specified, default options are used.

```yaml
Type: Kestrun.Authentication.ClientCertificateAuthenticationOptions
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

If specified, returns the modified server instance after adding the authentication.

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

### -RevocationMode

The revocation mode to use when validating certificates (NoCheck, Online, Offline).

```yaml
Type: System.Security.Cryptography.X509Certificates.X509RevocationMode
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: v1
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
If not specified, the current server instance is used.

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

### -ValidateCertificateUse

If specified, validates that the certificate is valid for client authentication.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: v1
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ValidateValidityPeriod

If specified, validates that the certificate is within its validity period.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: v1
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

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This cmdlet is used to configure client certificate authentication for the Kestrun server,
allowing you to secure your APIs with X.509 certificates.
Maps to Kestrun.Hosting.KestrunHostAuthnExtensions.AddClientCertificateAuthentication


## RELATED LINKS

- [](https://learn.microsoft.com/en-us/aspnet/core/security/authentication/certauth)