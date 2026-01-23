---
layout: default
parent: PowerShell Cmdlets
nav_order: 69
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Add-KrSinkPowerShell
---

# Add-KrSinkPowerShell

## SYNOPSIS

Adds a PowerShell sink to the logger configuration.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrSinkPowerShell [-LoggerConfig] <LoggerConfiguration>
 [[-RestrictedToMinimumLevel] <LogEventLevel>] [[-OutputTemplate] <string>]
 [[-LevelSwitch] <LoggingLevelSwitch>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Add-KrSinkPowerShell function configures a logging sink that outputs log events to the PowerShell console.
It allows customization of log formatting and filtering based on log levels.

## EXAMPLES

### EXAMPLE 1

Add-KrSinkPowerShell -LoggerConfig $config

Adds a PowerShell sink to the logging system, allowing log messages to be output to the PowerShell console.

### EXAMPLE 2

Add-KrSinkPowerShell -LoggerConfig $config -RestrictedToMinimumLevel Information

Adds a PowerShell sink that only outputs log events at Information level or higher.

### EXAMPLE 3

Add-KrSinkPowerShell -LoggerConfig $config -OutputTemplate '{Timestamp:yyyy-MM-dd HH:mm:ss.fff zzz} [{Level:u3}] {Message:lj}{NewLine}{ErrorRecord}{Exception}'
Customizes the output template for PowerShell log messages.

### EXAMPLE 4

Add-KrSinkPowerShell -LoggerConfig $config -LevelSwitch $myLevelSwitch

Uses a custom LoggingLevelSwitch to control the logging level dynamically.

## PARAMETERS

### -LevelSwitch

An optional LoggingLevelSwitch to dynamically control the logging level.

```yaml
Type: Serilog.Core.LoggingLevelSwitch
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

### -LoggerConfig

The Serilog LoggerConfiguration object to which the PowerShell sink will be added.

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

### -OutputTemplate

The output template string for formatting log messages.
Defaults to '{Message:lj}{ErrorRecord}'.

```yaml
Type: System.String
DefaultValue: '{Message:lj}{ErrorRecord}'
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

### -RestrictedToMinimumLevel

The minimum log event level required to write to the PowerShell sink.
Defaults to Verbose.

```yaml
Type: Serilog.Events.LogEventLevel
DefaultValue: Verbose
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
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

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## OUTPUTS

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun logging infrastructure and should be used to enable PowerShell console logging.


## RELATED LINKS

{{ Fill in the related links here }}
