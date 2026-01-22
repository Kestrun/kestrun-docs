---
layout: default
parent: PowerShell Cmdlets
nav_order: 180
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Set-KrLoggerLevelSwitch
---

# Set-KrLoggerLevelSwitch

## SYNOPSIS

Sets the minimum logging level for a level switch.

## SYNTAX

### LoggerName (Default)

```powershell
Set-KrLoggerLevelSwitch -MinimumLevel <LogEventLevel> [-LoggerName <string>] [<CommonParameters>]
```

### Logger

```powershell
Set-KrLoggerLevelSwitch -Logger <Logger> -MinimumLevel <LogEventLevel> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Sets the minimum logging level for a specified level switch.
If ToPreference is specified,
the logging level will be set to the user's preference.

## EXAMPLES

### EXAMPLE 1

Set-KrLoggerLevelSwitch -LoggerName "MyLogger" -MinimumLevel Warning
Sets the minimum logging level of the level switch for the logger named "MyLogger" to Warning.

### EXAMPLE 2

Set-KrLoggerLevelSwitch -Logger $myLogger -MinimumLevel Error
Sets the minimum logging level of the level switch for the specified logger instance to Error.

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

### -MinimumLevel

The minimum logging level to set for the switch.

```yaml
Type: Serilog.Events.LogEventLevel
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
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

## OUTPUTS

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
