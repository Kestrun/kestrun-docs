---
layout: default
parent: PowerShell Cmdlets
nav_order: 125
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Get-KrVersion
---

# Get-KrVersion

## SYNOPSIS

Retrieves the Kestrun module version information.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrVersion [-AsString] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function returns the version information of the Kestrun PowerShell module.
It can return either a formatted version string or a detailed object containing version components.

## EXAMPLES

### EXAMPLE 1

Get-KrVersion -AsString
Returns the Kestrun module version as a formatted string.

### EXAMPLE 2

Get-KrVersion
Returns a custom object with detailed version information.

## PARAMETERS

### -AsString

If specified, the function returns the version as a formatted string (e.g., "1.2.3-preview").
If not specified, the function returns a custom object with detailed version information.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String

{{ Fill in the Description }}

### System.Management.Automation.PSObject

{{ Fill in the Description }}

## NOTES

This function is useful for retrieving version information for logging, diagnostics, or display purposes.


## RELATED LINKS

{{ Fill in the related links here }}
