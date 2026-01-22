---
layout: default
parent: PowerShell Cmdlets
nav_order: 150
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: New-KrPrivateKeyJwt
---

# New-KrPrivateKeyJwt

## SYNOPSIS

Builds a Private Key JWT (client assertion) for OAuth2/OIDC client authentication.

## SYNTAX

### ByCertificate_Authority (Default)

```powershell
New-KrPrivateKeyJwt -Certificate <X509Certificate2> -ClientId <string> -Authority <string> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### ByCertificate_EndPoint

```powershell
New-KrPrivateKeyJwt -Certificate <X509Certificate2> -ClientId <string> -TokenEndpoint <string>
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ByJwkJson_EndPoint

```powershell
New-KrPrivateKeyJwt -JwkJson <string> -ClientId <string> -TokenEndpoint <string> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### ByJwkJson_Authority

```powershell
New-KrPrivateKeyJwt -JwkJson <string> -ClientId <string> -Authority <string> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function generates a signed JWT suitable for private_key_jwt client authentication
using either an X509 certificate or a JWK JSON string as the signing key.

It uses Kestrun.Certificates.CertificateManager.BuildPrivateKeyJwt[FromJwkJson]
under the hood, with:
  - iss = client_id
  - sub = client_id
  - aud = token endpoint
  - short lifetime (about 2 minutes) and a random jti.

## EXAMPLES

### EXAMPLE 1

$cert | New-KrPrivateKeyJwt -ClientId 'my-client' -TokenEndpoint 'https://idp.example.com/oauth2/token'

Builds a private_key_jwt client assertion using the certificate from the pipeline.

### EXAMPLE 2

New-KrPrivateKeyJwt -Path './certs/client.pfx' -ClientId 'my-client' `
    -TokenEndpoint 'https://idp.example.com/oauth2/token'

Imports the certificate from disk and generates a private_key_jwt.

### EXAMPLE 3

$jwk = ConvertTo-KrJwkJson -Certificate $cert -IncludePrivateParameters
New-KrPrivateKeyJwt -JwkJson $jwk -ClientId 'my-client' `
    -TokenEndpoint 'https://idp.example.com/oauth2/token'

Generates a private_key_jwt using a private RSA JWK JSON string.

### EXAMPLE 4

$cert | New-KrPrivateKeyJwt `
    -ClientId 'interactive.confidential' `
    -Authority 'https://demo.duendesoftware.com'

Uses discovery to resolve the token_endpoint from the authority.

## PARAMETERS

### -Authority

The authority (issuer) URL; used to discover the token endpoint via OIDC discovery.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByCertificate_Authority
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ByJwkJson_Authority
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Certificate

The X509Certificate2 object whose private key will be used to sign the JWT.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509Certificate2
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByCertificate_EndPoint
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ByCertificate_Authority
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ClientId

The client identifier; used as both issuer (iss) and subject (sub) in the JWT.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Confirm

Prompts you for confirmation before running the command.
The command is not run unless you respond
affirmatively.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- cf
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

### -JwkJson

A JWK JSON string representing the key (typically an RSA private key JWK).

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByJwkJson_EndPoint
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ByJwkJson_Authority
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TokenEndpoint

The token endpoint URL; used as the audience (aud) in the JWT.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByCertificate_EndPoint
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ByJwkJson_EndPoint
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -WhatIf

Shows what would happen if the command runs.
The command is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- wi
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Security.Cryptography.X509Certificates.X509Certificate2

{{ Fill in the Description }}

## OUTPUTS

### [string] – the signed JWT (client assertion).

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## NOTES

Requires the Kestrun module and the Kestrun.Certificates assembly to be loaded.


## RELATED LINKS

{{ Fill in the related links here }}
