---
layout: default
parent: PowerShell Cmdlets
nav_order: 168
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Set-KrLoggerLevel
---

# Set-KrLoggerLevel

## SYNOPSIS

Sets the minimum log level for the logger configuration.

## SYNTAX

### Static (Default)

```powershell
Set-KrLoggerLevel -LoggerConfig <LoggerConfiguration> -Value <LogEventLevel> [<CommonParameters>]
```

### Dynamic

```powershell
Set-KrLoggerLevel -LoggerConfig <LoggerConfiguration> -Dynamic <LogEventLevel> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Sets the minimum log level for the logger configuration.
This cmdlet can be used to
set the minimum log level to a specific level or to the user's preference.

## EXAMPLES

### EXAMPLE 1

Set-KrLoggerLevel -LoggerConfig $myLoggerConfig -Values Warning
Sets the minimum log level of the specified logger configuration to Warning.

### EXAMPLE 2

Set-KrLoggerLevel -LoggerConfig $myLoggerConfig -ControlledBy $myLevelSwitch
Sets the minimum log level of the specified logger configuration to be controlled by the specified level switch.

### EXAMPLE 3

$myLoggerConfig | Set-KrLoggerLevel -Value Information -PassThru
Sets the minimum log level of the specified logger configuration to Information and outputs the LoggerConfiguration object into the pipeline.

## PARAMETERS

### -Dynamic

If specified, the minimum log level will be controlled by a level switch.

```yaml
Type: Serilog.Events.LogEventLevel
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Dynamic
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LoggerConfig

Instance of Serilog.LoggerConfiguration to set the minimum level for.

```yaml
Type: Serilog.LoggerConfiguration
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

### -Value

The minimum log level to set for the logger configuration.

```yaml
Type: Serilog.Events.LogEventLevel
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Level
ParameterSets:
- Name: Static
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

### Instance of Serilog.LoggerConfiguration

{{ Fill in the Description }}

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## OUTPUTS

### Instance of Serilog.LoggerConfiguration if the PassThru parameter is specified.

{{ Fill in the Description }}

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
