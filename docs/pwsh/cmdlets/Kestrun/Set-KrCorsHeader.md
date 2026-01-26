---
layout: default
parent: PowerShell Cmdlets
nav_order: 176
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Set-KrCorsHeader
---

# Set-KrCorsHeader

## SYNOPSIS

Set CORS headers for a given CORS policy builder.

## SYNTAX

### With (Default)

```powershell
Set-KrCorsHeader -Builder <CorsPolicyBuilder> -Headers <string[]> [<CommonParameters>]
```

### Any

```powershell
Set-KrCorsHeader -Builder <CorsPolicyBuilder> -Any [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function sets CORS headers for a given CORS policy builder.
It supports setting any header or specific headers based on the provided parameters.

## EXAMPLES

### EXAMPLE 1

New-KrCorsPolicyBuilder | Set-KrCorsHeader -Any
This example sets the CORS policy to allow any header.

### EXAMPLE 2

New-KrCorsPolicyBuilder | Set-KrCorsHeader -Headers @('Content-Type', 'Authorization')
This example sets the CORS policy to allow specific headers ('Content-Type' and 'Authorization').

## PARAMETERS

### -Any

A switch parameter to allow any header.
If this parameter is provided, the function will set the CORS policy to allow any header.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Any
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Builder

The CORS policy builder to set the headers for.
This parameter is mandatory and must be provided.

```yaml
Type: Microsoft.AspNetCore.Cors.Infrastructure.CorsPolicyBuilder
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Headers

An array of strings representing the specific headers to allow.
This parameter is mandatory when the 'Any' switch parameter is not provided.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: With
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

### Microsoft.AspNetCore.Cors.Infrastructure.CorsPolicyBuilder

{{ Fill in the Description }}

## OUTPUTS

### Microsoft.AspNetCore.Cors.Infrastructure.CorsPolicyBuilder

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun PowerShell module and is used to configure CORS policies in


## RELATED LINKS

{{ Fill in the related links here }}
