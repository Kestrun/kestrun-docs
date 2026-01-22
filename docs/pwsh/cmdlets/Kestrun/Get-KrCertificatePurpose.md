---
layout: default
parent: PowerShell Cmdlets
nav_order: 97
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Get-KrCertificatePurpose
---

# Get-KrCertificatePurpose

## SYNOPSIS

Lists the Enhanced Key Usage values on a certificate.
This function is designed to be used in the context of Kestrun's certificate management.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrCertificatePurpose [-Certificate] <X509Certificate2> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Retrieves the Enhanced Key Usage (EKU) OIDs from a given X509Certificate2 object.
The EKU values indicate the intended purposes of the certificate.

## EXAMPLES

### EXAMPLE 1

Get-KrCertificatePurpose -Certificate $cert
This will return the Enhanced Key Usage values for the specified certificate.

## PARAMETERS

### -Certificate

The X509Certificate2 object to retrieve the EKU values from.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509Certificate2
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Collections.Generic.IEnumerable`1[[System.String

{{ Fill in the Description }}

### System.Collections.Generic.IEnumerable`1[[System.String, System.Private.CoreLib, Version=8.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun module.


## RELATED LINKS

{{ Fill in the related links here }}
