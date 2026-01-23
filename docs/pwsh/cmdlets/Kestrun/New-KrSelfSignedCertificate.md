---
layout: default
parent: PowerShell Cmdlets
nav_order: 152
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: New-KrSelfSignedCertificate
---

# New-KrSelfSignedCertificate

## SYNOPSIS

Creates a new self-signed certificate.

## SYNTAX

### __AllParameterSets

```powershell
New-KrSelfSignedCertificate [-DnsNames] <string[]> [[-KeyType] <string>] [[-KeyLength] <int>]
 [[-ValidDays] <int>] [-Ephemeral] [-Exportable] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The New-KrSelfSignedCertificate function generates a self-signed certificate for use in development or testing scenarios.
This certificate can be used for securing communications or authentication purposes.

## EXAMPLES

### EXAMPLE 1

New-KrSelfSignedCertificate -Subject "CN=MyCert" -CertStoreLocation "Cert:\LocalMachine\My"

This example creates a self-signed certificate with the subject "CN=MyCert" and stores it in the local machine's certificate store.

## PARAMETERS

### -DnsNames

The DNS name(s) for the certificate.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Ephemeral

Indicates whether the certificate is ephemeral (temporary).

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

### -Exportable

Indicates whether the private key is exportable.

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

### -KeyLength

The length of the key in bits (only applicable for RSA).

```yaml
Type: System.Int32
DefaultValue: 2048
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -KeyType

The type of key to use for the certificate (RSA or ECDSA).

```yaml
Type: System.String
DefaultValue: Rsa
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

### -ValidDays

The number of days the certificate will be valid.

```yaml
Type: System.Int32
DefaultValue: 365
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
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

## OUTPUTS

### System.Security.Cryptography.X509Certificates.X509Certificate2

{{ Fill in the Description }}

## NOTES

This function is intended for use in development and testing environments only.
Do not use self-signed certificates in production.


## RELATED LINKS

{{ Fill in the related links here }}
