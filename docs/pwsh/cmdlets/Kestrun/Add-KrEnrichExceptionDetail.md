---
layout: default
parent: PowerShell Cmdlets
nav_order: 19
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Add-KrEnrichExceptionDetail
---

# Add-KrEnrichExceptionDetail

## SYNOPSIS

Adds exception details to the log context.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrEnrichExceptionDetail [-LoggerConfig] <LoggerConfiguration> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Adds exception details to the log context, allowing them to be included in log events.

## EXAMPLES

### EXAMPLE 1

New-KrLogger | Add-KrEnrichExceptionDetail | Register-KrLogger

## PARAMETERS

### -LoggerConfig

Instance of LoggerConfiguration

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

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## OUTPUTS

### LoggerConfiguration object allowing method chaining

{{ Fill in the Description }}

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
