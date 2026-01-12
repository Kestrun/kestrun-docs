---
layout: default
parent: PowerShell Cmdlets
nav_order: 18
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Add-KrEnrichErrorRecord
---

# Add-KrEnrichErrorRecord

## SYNOPSIS

Enriches log events with ErrorRecord property if available.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrEnrichErrorRecord [-LoggerConfig] <LoggerConfiguration> [-DestructureObjects]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Enriches log events with ErrorRecord property if available.
Use -ErrorRecord parameter on Write-*Log cmdlets to add ErrorRecord.

## EXAMPLES

### EXAMPLE 1

New-KrLogger | Add-KrEnrichErrorRecord | Add-KrSinkPowerShell | Register-KrLogger

## PARAMETERS

### -DestructureObjects

If true, and the value is a non-primitive, non-array type, then the value will be converted to a structure; otherwise, unknown types will be converted to scalars, which are generally stored as strings.

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

### -LoggerConfig

Instance of LoggerConfiguration that is already setup.

```yaml
Type: Serilog.LoggerConfiguration
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Instance of LoggerConfiguration

{{ Fill in the Description }}

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## OUTPUTS

### Instance of LoggerConfiguration

{{ Fill in the Description }}

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
