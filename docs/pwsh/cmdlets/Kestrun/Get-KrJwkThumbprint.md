---
layout: default
parent: PowerShell Cmdlets
nav_order: 101
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Get-KrJwkThumbprint
---

# Get-KrJwkThumbprint

## SYNOPSIS

Computes an RFC 7638 JWK thumbprint for an RSA key.

## SYNTAX

### Certificate (Default)

```powershell
Get-KrJwkThumbprint [-Certificate] <X509Certificate2> [<CommonParameters>]
```

### Jwk

```powershell
Get-KrJwkThumbprint [-Jwk] <hashtable> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Returns the Base64Url-encoded SHA-256 hash of the canonical JWK (RSA) built from the key's n and e values.
You can provide either an X509Certificate2 (preferred) or a JWK hashtable with kty='RSA', n and e.

## EXAMPLES

### EXAMPLE 1

Get-KrJwkThumbprint -Certificate $cert

### EXAMPLE 2

Get-KrJwkThumbprint -Jwk @{ kty='RSA'; n=$n; e=$e }

## PARAMETERS

### -Certificate

X.509 certificate containing an RSA public key.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509Certificate2
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Certificate
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Jwk

Hashtable representing an RSA JWK with keys: kty, n, e.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Jwk
  Position: 0
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

## RELATED LINKS

{{ Fill in the related links here }}
