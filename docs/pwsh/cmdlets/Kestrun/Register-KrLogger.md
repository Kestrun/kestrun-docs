---
layout: default
parent: PowerShell Cmdlets
nav_order: 149
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Register-KrLogger
---

# Register-KrLogger

## SYNOPSIS

Starts the Kestrun logger.

## SYNTAX

### __AllParameterSets

```powershell
Register-KrLogger [-Name] <string> [-LoggerConfig] <LoggerConfiguration> [-SetAsDefault] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function initializes the Kestrun logger with specified configurations.

## EXAMPLES

### EXAMPLE 1

Register-KrLogger -Name "MyLogger" -MinimumLevel Debug -Console -FilePath "C:\Logs\kestrun.log" -FileRollingInterval Day -SetAsDefault
Initializes the Kestrun logger with Debug level, adds console and file sinks, sets the logger as default, and returns the logger object.

### EXAMPLE 2

Register-KrLogger -Name "MyLogger" -LoggerConfig $myLoggerConfig -SetAsDefault
Initializes the Kestrun logger using a pre-configured Serilog logger configuration object and sets it as the default logger.

### EXAMPLE 3

Register-KrLogger -Name "MyLogger" -MinimumLevel Debug -Console -FilePath "C:\Logs\kestrun.log" -FileRollingInterval Day -SetAsDefault
Initializes the Kestrun logger with Debug level, adds console and file sinks, sets the logger as default, and returns the logger object.

### EXAMPLE 4

Register-KrLogger -Name "MyLogger" -MinimumLevel Debug -Console -FilePath "C:\Logs\kestrun.log" -FileRollingInterval Day -SetAsDefault
Initializes the Kestrun logger with Debug level, adds console and file sinks, sets the logger as default, and returns the logger object.

## PARAMETERS

### -LoggerConfig

A Serilog logger configuration object to set up the logger.

```yaml
Type: Serilog.LoggerConfiguration
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Name

The name of the logger instance.
This is mandatory.

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

### -PassThru

If specified, returns the created logger object.

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

### -SetAsDefault

If specified, sets the created logger as the default logger for Serilog.

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

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## OUTPUTS

### Serilog.ILogger

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
