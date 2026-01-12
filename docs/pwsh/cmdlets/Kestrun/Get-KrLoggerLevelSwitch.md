---
layout: default
parent: PowerShell Cmdlets
nav_order: 103
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Get-KrLoggerLevelSwitch
---

# Get-KrLoggerLevelSwitch

## SYNOPSIS

Gets the current logging level for a level switch.

## SYNTAX

### LoggerName (Default)

```powershell
Get-KrLoggerLevelSwitch [-LoggerName <string>] [<CommonParameters>]
```

### Logger

```powershell
Get-KrLoggerLevelSwitch -Logger <Logger> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Retrieves the current logging level for a specified level switch.
If the LoggerName is not provided,
it will be derived from the provided Logger instance.

## EXAMPLES

### EXAMPLE 1

Get-KrLoggerLevelSwitch -LoggerName "MyLogger"
Retrieves the current logging level of the level switch for the logger named "MyLogger".

### EXAMPLE 2

Get-KrLoggerLevelSwitch -Logger $myLogger
Retrieves the current logging level of the level switch for the specified logger instance.

## PARAMETERS

### -Logger

An instance of Serilog.Core.Logger to set the level switch for.
It's mutually exclusive with the LoggerName parameter.

```yaml
Type: Serilog.Core.Logger
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Logger
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LoggerName

The name of a registered logger to set the level switch for.
It's mutually exclusive with the Logger parameter.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: LoggerName
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

### Serilog.Events.LogEventLevel

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
