---
layout: default
parent: PowerShell Cmdlets
nav_order: 81
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: ConvertTo-KrJwkJson
---

# ConvertTo-KrJwkJson

## SYNOPSIS

Converts an X509 certificate or RSA private key PEM to an RSA JWK JSON string.

## SYNTAX

### ByCertificate (Default)

```powershell
ConvertTo-KrJwkJson -Certificate <X509Certificate2> [-IncludePrivateParameters] [<CommonParameters>]
```

### ByRsaPrivateKeyPem

```powershell
ConvertTo-KrJwkJson -RsaPrivateKeyPem <string> [-IncludePrivateParameters] [<CommonParameters>]
```

### ByRsaPrivateKeyPath

```powershell
ConvertTo-KrJwkJson -RsaPrivateKeyPath <string> [-IncludePrivateParameters] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function converts either:
  - an X509 certificate object, or
  - an RSA private key in PEM format
to a JSON Web Key (JWK) representation using the
Kestrun.Certificates.CertificateManager backend.

For certificates:
  - By default it exports only the public parameters (suitable for JWKS).
  - If -IncludePrivateParameters is specified, the private RSA parameters
    are included as well (for local/secure use only; never publish those).

For RSA private key PEM:
  - The output is always a full private JWK (public + private parameters),
    as the source is inherently private key material.

## EXAMPLES

### EXAMPLE 1

Import-KrCertificate -Path './certs/client.pfx' |
    ConvertTo-KrJwkJson

Imports a certificate and converts it to a public-only JWK JSON string.

### EXAMPLE 2

Import-KrCertificate -Path './certs/client.pfx' |
    ConvertTo-KrJwkJson -IncludePrivateParameters

Imports the certificate and returns a full private JWK JSON string.

### EXAMPLE 3

$pem = Get-Content './Assets/certs/private.pem' -Raw
ConvertTo-KrJwkJson -RsaPrivateKeyPem $pem

Converts the RSA private key PEM to a full private JWK JSON string.

### EXAMPLE 4

ConvertTo-KrJwkJson -RsaPrivateKeyPath './Assets/certs/private.pem'

Reads the RSA private key PEM from disk and converts it to a full private JWK JSON string.

## PARAMETERS

### -Certificate

The X509Certificate2 object to convert to JWK JSON.
Typically obtained from Import-KrCertificate and passed via the pipeline.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509Certificate2
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByCertificate
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IncludePrivateParameters

When converting from a certificate:
    If specified, includes private RSA parameters (d, p, q, dp, dq, qi) in the JWK JSON.
    Requires that the certificate has a private key.
When converting from RSA private key PEM:
    Ignored.
The output always contains private parameters because the source
    is a private key.

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

### -RsaPrivateKeyPath

Path to a file containing an RSA private key PEM.
The file is read as raw text
and passed to CertificateManager.CreateJwkJsonFromRsaPrivateKeyPem().

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByRsaPrivateKeyPath
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RsaPrivateKeyPem

A string containing an RSA private key in PEM format
(e.g.
"-----BEGIN RSA PRIVATE KEY----- ...").

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByRsaPrivateKeyPem
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

### System.Security.Cryptography.X509Certificates.X509Certificate2

{{ Fill in the Description }}

## OUTPUTS

### [string] – the JWK JSON string.

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## NOTES

Requires the Kestrun module and the Kestrun.Certificates assembly to be loaded.


## RELATED LINKS

{{ Fill in the related links here }}
