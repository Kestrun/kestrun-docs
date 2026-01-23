---
layout: default
parent: PowerShell Cmdlets
nav_order: 128
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Import-KrCertificate
---

# Import-KrCertificate

## SYNOPSIS

Imports a PFX/PEM certificate file and returns X509Certificate2.

## SYNTAX

### __AllParameterSets

```powershell
Import-KrCertificate [-FilePath] <string> [[-Password] <securestring>] [[-PrivateKeyPath] <string>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Import-KrCertificate function allows you to import a certificate into the Kestrun environment.
This may include loading a certificate from a file or other source and adding it to the appropriate certificate store or configuration.

## EXAMPLES

### EXAMPLE 1

Import-KrCertificate -Path "C:\certs\mycert.pfx" -Password (ConvertTo-SecureString "password" -AsPlainText -Force)
This example imports a certificate from the specified path using the provided password.

## PARAMETERS

### -FilePath

The path to the certificate file to import.

```yaml
Type: System.String
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

### -Password

The password for the certificate file, if applicable.

```yaml
Type: System.Security.SecureString
DefaultValue: ''
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

### -PrivateKeyPath

The path to the private key file, if applicable.

```yaml
Type: System.String
DefaultValue: ''
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

This function is part of the Kestrun PowerShell module.


## RELATED LINKS

{{ Fill in the related links here }}
