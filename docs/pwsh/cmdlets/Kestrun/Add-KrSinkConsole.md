---
layout: default
parent: PowerShell Cmdlets
nav_order: 63
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Add-KrSinkConsole
---

# Add-KrSinkConsole

## SYNOPSIS

Adds a console logging sink to the Kestrun logging system.

## SYNTAX

### Default (Default)

```powershell
Add-KrSinkConsole -LoggerConfig <LoggerConfiguration> [-RestrictedToMinimumLevel <LogEventLevel>]
 [-OutputTemplate <string>] [-FormatProvider <IFormatProvider>] [-LevelSwitch <LoggingLevelSwitch>]
 [-StandardErrorFromLevel <LogEventLevel>] [-Theme <ConsoleTheme>] [<CommonParameters>]
```

### Formatter

```powershell
Add-KrSinkConsole -LoggerConfig <LoggerConfiguration> [-RestrictedToMinimumLevel <LogEventLevel>]
 [-OutputTemplate <string>] [-FormatProvider <IFormatProvider>] [-LevelSwitch <LoggingLevelSwitch>]
 [-StandardErrorFromLevel <LogEventLevel>] [-Theme <ConsoleTheme>] [-Formatter <ITextFormatter>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Add-KrSinkConsole function configures and adds a console output sink for logging messages within the Kestrun framework.
This enables log messages to be displayed directly in the PowerShell console.

## EXAMPLES

### EXAMPLE 1

Add-KrSinkConsole -LoggerConfig $config
Adds a console sink to the logging system, allowing log messages to be output to the console.

### EXAMPLE 2

Add-KrSinkConsole -LoggerConfig $config -RestrictedToMinimumLevel Information
Adds a console sink that only outputs log events at Information level or higher.

### EXAMPLE 3

Add-KrSinkConsole -LoggerConfig $config -OutputTemplate '[{Level}] {Message}{NewLine}'
Customizes the output template for console log messages.

### EXAMPLE 4

Add-KrSinkConsole -LoggerConfig $config -Formatter $customFormatter
Uses a custom text formatter for console log output.

## PARAMETERS

### -FormatProvider

An optional format provider for customizing message formatting.

```yaml
Type: System.IFormatProvider
DefaultValue: ''
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

### -Formatter

An optional text formatter for custom log message formatting (used in 'Formatter' parameter set).

```yaml
Type: Serilog.Formatting.ITextFormatter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Formatter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LevelSwitch

An optional LoggingLevelSwitch to dynamically control the logging level.

```yaml
Type: Serilog.Core.LoggingLevelSwitch
DefaultValue: ''
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

The Serilog LoggerConfiguration object to which the console sink will be added.

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

### -OutputTemplate

The output template string for formatting log messages.
Defaults to '[{Timestamp:HH:mm:ss} {Level:u3}] {Message:lj}{NewLine}{ErrorRecord}{Exception}'.

```yaml
Type: System.String
DefaultValue: '[{Timestamp:HH:mm:ss} {Level:u3}] {Message:lj}{NewLine}{ErrorRecord}{Exception}'
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

### -RestrictedToMinimumLevel

The minimum log event level required to write to the console sink.
Defaults to Verbose.

```yaml
Type: Serilog.Events.LogEventLevel
DefaultValue: Verbose
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

### -StandardErrorFromLevel

An optional log event level at which messages are written to standard error.

```yaml
Type: System.Nullable`1[Serilog.Events.LogEventLevel]
DefaultValue: ''
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

### -Theme

An optional console theme for customizing log output appearance.

```yaml
Type: Serilog.Sinks.SystemConsole.Themes.ConsoleTheme
DefaultValue: ''
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

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun logging infrastructure and should be used to enable console logging.


## RELATED LINKS

{{ Fill in the related links here }}
