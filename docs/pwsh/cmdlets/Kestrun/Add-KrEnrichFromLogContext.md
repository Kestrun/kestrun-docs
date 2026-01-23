---
layout: default
parent: PowerShell Cmdlets
nav_order: 21
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Add-KrEnrichFromLogContext
---

# Add-KrEnrichFromLogContext

## SYNOPSIS

Enriches log events with properties from LogContext

## SYNTAX

### __AllParameterSets

```powershell
Add-KrEnrichFromLogContext [-LoggerConfig] <LoggerConfiguration> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Enriches log events with properties from LogContext.
Use Push-LogContextProp to add properties.

## EXAMPLES

### EXAMPLE 1

New-KrLogger | Add-KrEnrichFromLogContext | Add-KrSinkConsole | Register-KrLogger

## PARAMETERS

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
