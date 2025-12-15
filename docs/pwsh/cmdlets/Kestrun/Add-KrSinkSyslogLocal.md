---
layout: default
parent: PowerShell Cmdlets
nav_order: 66
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Add-KrSinkSyslogLocal
---

# Add-KrSinkSyslogLocal

## SYNOPSIS

Adds a Syslog Local sink to the Serilog logger configuration.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrSinkSyslogLocal [-LoggerConfig] <LoggerConfiguration> [[-AppName] <string>]
 [[-Facility] <Facility>] [[-OutputTemplate] <string>] [[-RestrictedToMinimumLevel] <LogEventLevel>]
 [[-SeverityMapping] <Func`2[LogEventLevel,Severity]>] [[-Formatter] <ITextFormatter>]
 [[-LevelSwitch] <LoggingLevelSwitch>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Add-KrSinkSyslogLocal function configures a logging sink that sends log events to the local Syslog server.
It allows customization of the application name, Syslog facility, output template, and minimum log level.

## EXAMPLES

### EXAMPLE 1

Add-KrSinkSyslogLocal -LoggerConfig $config -AppName "MyApp" -Facility Local1 -OutputTemplate "{Message}{NewLine}{Exception}{ErrorRecord}" -RestrictedToMinimumLevel Information
Adds a Syslog Local sink to the logging system that sends log events with the specified application name, facility, output template, and minimum log level.

### EXAMPLE 2

Add-KrSinkSyslogLocal -LoggerConfig $config
Adds a Syslog Local sink to the logging system with default parameters.

### EXAMPLE 3

Add-KrSinkSyslogLocal -LoggerConfig $config -AppName "MyApp" -SeverityMapping { param($level) if ($level -eq 'Error') { return 'Alert' } else { return 'Info' } }
Adds a Syslog Local sink with a custom severity mapping function.

### EXAMPLE 4

Add-KrSinkSyslogLocal -LoggerConfig $config -LevelSwitch $levelSwitch
Adds a Syslog Local sink with a dynamic level switch to control the minimum log level.

## PARAMETERS

### -AppName

The application name to be included in the Syslog messages.
If not specified, defaults to null.

```yaml
Type: System.String
DefaultValue: ''
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

### -Facility

The Syslog facility to use for the log messages.
Defaults to Local0.

```yaml
Type: Serilog.Sinks.Syslog.Facility
DefaultValue: Local0
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

### -Formatter

An optional ITextFormatter for custom message formatting.

```yaml
Type: Serilog.Formatting.ITextFormatter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LevelSwitch

An optional LoggingLevelSwitch to dynamically control the minimum log level.

```yaml
Type: Serilog.Core.LoggingLevelSwitch
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LoggerConfig

The Serilog LoggerConfiguration object to which the Syslog Local sink will be added.

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
Defaults to '{Message}{NewLine}{Exception}{ErrorRecord}'.

```yaml
Type: System.String
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

### -RestrictedToMinimumLevel

The minimum log event level required to write to the Syslog sink.
Defaults to Verbose.

```yaml
Type: Serilog.Events.LogEventLevel
DefaultValue: Verbose
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SeverityMapping

An optional function to map Serilog log levels to Syslog severity levels.

```yaml
Type: System.Func`2[Serilog.Events.LogEventLevel,Serilog.Sinks.Syslog.Severity]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
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

This function is part of the Kestrun logging infrastructure and should be used to enable Syslog Local logging.


## RELATED LINKS

{{ Fill in the related links here }}
