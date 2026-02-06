---
layout: default
parent: PowerShell Cmdlets
nav_order: 105
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 02/06/2026
PlatyPS schema version: 2024-05-01
title: Get-KrFormOption
---

# Get-KrFormOption

## SYNOPSIS

Retrieves a form option from the Kestrun server.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrFormOption [-Name] <string> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Get-KrFormOption function retrieves a Kestrun form option by its name from the server's form options collection.

## EXAMPLES

### EXAMPLE 1

$formOption = Get-KrFormOption -Name 'MyFormOption'
This example retrieves the form option named 'MyFormOption' from the Kestrun server.

## PARAMETERS

### -Name

The name of the form option to retrieve.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Kestrun.Forms.KrFormOptions

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Forms module and is used to define form options.


## RELATED LINKS

{{ Fill in the related links here }}
