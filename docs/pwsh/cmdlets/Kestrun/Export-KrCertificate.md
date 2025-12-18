---
layout: default
parent: PowerShell Cmdlets
nav_order: 88
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Export-KrCertificate
---

# Export-KrCertificate

## SYNOPSIS

Exports an X509Certificate2 to PFX or PEM(+key).

## SYNTAX

### __AllParameterSets

```powershell
Export-KrCertificate [-Certificate] <X509Certificate2> [-FilePath] <string> [[-Format] <string>]
 [[-Password] <securestring>] [-IncludePrivateKey] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function exports a given X509Certificate2 object to a specified file path in either PFX or PEM format.
If the PEM format is chosen and the IncludePrivateKey switch is set, it will also export the private key.

## EXAMPLES

### EXAMPLE 1

Export-KrCertificate -Certificate $cert -FilePath 'C:\certs\my' `
    -Format Pem -Password 'p@ss' -IncludePrivateKey

## PARAMETERS

### -Certificate

The X509Certificate2 object to export.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509Certificate2
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

### -FilePath

The file path to export the certificate to (without extension).

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Format

The export format (Pfx or Pem).

```yaml
Type: System.String
DefaultValue: Pfx
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

### -IncludePrivateKey

Whether to include the private key in the export (only applicable for PEM format).

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

### -Password

The password to protect the exported PFX file (if applicable).

```yaml
Type: System.Security.SecureString
DefaultValue: ''
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

### System.Security.Cryptography.X509Certificates.X509Certificate2

{{ Fill in the Description }}

## OUTPUTS

## NOTES

This function requires the Kestrun module to be imported.


## RELATED LINKS

{{ Fill in the related links here }}
