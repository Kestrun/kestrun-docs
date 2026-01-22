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
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Add-KrSinkEventLog
---

# Add-KrSinkEventLog

## SYNOPSIS

Adds an Event Log sink to the Serilog logger configuration.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrSinkEventLog [-LoggerConfig] <LoggerConfiguration> [-Source] <string> [[-LogName] <string>]
 [[-MachineName] <string>] [[-OutputTemplate] <string>] [[-FormatProvider] <IFormatProvider>]
 [[-RestrictedToMinimumLevel] <LogEventLevel>] [[-EventIdProvider] <IEventIdProvider>]
 [-ManageEventSource] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Add-KrSinkEventLog function configures a logging sink that writes log events to the Windows Event Log.
It allows customization of log source, log name, output template, and other parameters.

## EXAMPLES

### EXAMPLE 1

Add-KrSinkEventLog -LoggerConfig $config -Source "MyApp" -LogName "Application"
Adds an Event Log sink to the logging system that writes log events to the 'Application' log with the source 'MyApp'.

### EXAMPLE 2

Add-KrSinkEventLog -LoggerConfig $config -Source "MyApp" -LogName "CustomLog"
Adds an Event Log sink to the logging system that writes log events to the 'CustomLog' log with the source 'MyApp'.

### EXAMPLE 3

Add-KrSinkEventLog -LoggerConfig $config -Source "MyApp" -LogName "Application" -ManageEventSource $true
Adds an Event Log sink that manages the event source, creating it if it does not exist.

## PARAMETERS

### -EventIdProvider

An optional IEventIdProvider to provide custom event IDs for log events.

```yaml
Type: Serilog.Sinks.EventLog.IEventIdProvider
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

### -FormatProvider

An optional format provider for customizing message formatting.

```yaml
Type: System.IFormatProvider
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

### -LoggerConfig

The Serilog LoggerConfiguration object to which the Event Log sink will be added.

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

### -LogName

The name of the Event Log to write to.
If not specified, defaults to 'Application'.

```yaml
Type: System.String
DefaultValue: ''
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

### -MachineName

The name of the machine hosting the Event Log.
The local machine by default.

```yaml
Type: System.String
DefaultValue: .
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

### -ManageEventSource

If set to true, the function will attempt to create the event source if it does not exist.
Defaults to false.

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

### -OutputTemplate

The output template string for formatting log messages.
Defaults to '{Message}{NewLine}{Exception}{ErrorRecord}'.

```yaml
Type: System.String
DefaultValue: '{Message}{NewLine}{Exception}{ErrorRecord}'
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

### -RestrictedToMinimumLevel

The minimum log event level required to write to the Event Log sink.
Defaults to Verbose.

```yaml
Type: Serilog.Events.LogEventLevel
DefaultValue: Verbose
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

### -Source

The source name for the Event Log.
This is used to identify the application or service that is writing to the log.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
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

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## OUTPUTS

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun logging infrastructure and should be used to enable Event Log logging.


## RELATED LINKS

{{ Fill in the related links here }}
