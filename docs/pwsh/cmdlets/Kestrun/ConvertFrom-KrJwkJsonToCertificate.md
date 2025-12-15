---
layout: default
parent: PowerShell Cmdlets
nav_order: 79
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: ConvertFrom-KrJwkJsonToCertificate
---

# ConvertFrom-KrJwkJsonToCertificate

## SYNOPSIS

Creates a self-signed X509 certificate from an RSA JWK.

## SYNTAX

### __AllParameterSets

```powershell
ConvertFrom-KrJwkJsonToCertificate [-Jwk] <Object> [[-SubjectName] <string>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function wraps
[Kestrun.Certificates.CertificateManager]::CreateSelfSignedCertificateFromJwk()
and converts an RSA JWK into a self-signed X509Certificate2 instance.

The input can be:
  - a JWK JSON string, or
  - a PowerShell hashtable/PSCustomObject that will be serialized
    to JSON via ConvertTo-Json -Compress.

Once you have the certificate, you can export it to PFX/PEM
using Export-KrCertificate.

## EXAMPLES

### EXAMPLE 1

$jwk = @{
    kty = 'RSA'
    n   = '...'
    e   = 'AQAB'
    d   = '...'
    p   = '...'
    q   = '...'
    dp  = '...'
    dq  = '...'
    qi  = '...'
}

$cert = ConvertFrom-KrJwkJsonToCertificate -Jwk $jwk

### EXAMPLE 2

$jwkJson = Get-Content './client.jwk.json' -Raw
$cert = ConvertFrom-KrJwkJsonToCertificate -Jwk $jwkJson -SubjectName 'CN=client-assertion'

### EXAMPLE 3

$jwk = Get-Content './client.jwk.json' -Raw
ConvertFrom-KrJwkJsonToCertificate -Jwk $jwk |
    Export-KrCertificate -FilePath './certs/client' -Format Pem -IncludePrivateKey

## PARAMETERS

### -Jwk

The JWK representation.
Can be:
  - a JSON string, or
  - a hashtable / PSCustomObject with JWK fields (kty, n, e, d, p, q, dp, dq, qi, kid).

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SubjectName

Subject name for the self-signed certificate (CN=...).
Defaults to "CN=client-jwt".

```yaml
Type: System.String
DefaultValue: CN=client-jwt
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
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

### System.Object

{{ Fill in the Description }}

## OUTPUTS

### [System.Security.Cryptography.X509Certificates.X509Certificate2]

{{ Fill in the Description }}

### System.Security.Cryptography.X509Certificates.X509Certificate2

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
