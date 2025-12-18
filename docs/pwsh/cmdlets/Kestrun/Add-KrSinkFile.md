---
layout: default
parent: PowerShell Cmdlets
nav_order: 62
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Add-KrSinkFile
---

# Add-KrSinkFile

## SYNOPSIS

Adds a file-based logging sink to the logging system.

## SYNTAX

### Default (Default)

```powershell
Add-KrSinkFile -LoggerConfig <LoggerConfiguration> -Path <string>
 [-RestrictedToMinimumLevel <LogEventLevel>] [-OutputTemplate <string>]
 [-FormatProvider <IFormatProvider>] [-FileSizeLimitBytes <long>]
 [-LevelSwitch <LoggingLevelSwitch>] [-Buffered] [-Shared] [-FlushToDiskInterval <timespan>]
 [-RollingInterval <RollingInterval>] [-RollOnFileSizeLimit] [-RetainedFileCountLimit <int>]
 [-Encoding <Encoding>] [-Hooks <FileLifecycleHooks>] [<CommonParameters>]
```

### Formatter

```powershell
Add-KrSinkFile -LoggerConfig <LoggerConfiguration> -Path <string> -Formatter <ITextFormatter>
 [-RestrictedToMinimumLevel <LogEventLevel>] [-OutputTemplate <string>] [-FileSizeLimitBytes <long>]
 [-LevelSwitch <LoggingLevelSwitch>] [-Buffered] [-Shared] [-FlushToDiskInterval <timespan>]
 [-RollingInterval <RollingInterval>] [-RollOnFileSizeLimit] [-RetainedFileCountLimit <int>]
 [-Encoding <Encoding>] [-Hooks <FileLifecycleHooks>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Add-KrSinkFile function configures a logging sink that writes log events to a specified file.
It supports various options for file management, such as rolling intervals, file size limits, and custom output templates.

## EXAMPLES

### EXAMPLE 1

Add-KrSinkFile -LoggerConfig $config -Path "C:\Logs\app-.txt"
Adds a file sink to the logging system that writes log events to "C:\Logs\app-.txt". The file name will roll over based on the specified rolling interval.

### EXAMPLE 2

Add-KrSinkFile -LoggerConfig $config -Path "C:\Logs\app-.txt" -Formatter $formatter
Adds a file sink to the logging system that writes log events to "C:\Logs\app-.txt" using the specified text formatter.

### EXAMPLE 3

Add-KrSinkFile -LoggerConfig $config -Path "C:\Logs\app-.txt" -RollingInterval Day -RetainedFileCountLimit 7
Adds a file sink that rolls over daily and retains the last 7 log files.

## PARAMETERS

### -Buffered

If set, log events are buffered before being written to the file.
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

### -Encoding

The encoding used for the log file.
Defaults to null (system default).

```yaml
Type: System.Text.Encoding
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

### -FileSizeLimitBytes

The maximum size of the log file in bytes before it rolls over.
Defaults to 1 GB.

```yaml
Type: System.Nullable`1[System.Int64]
DefaultValue: 1073741824
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

### -FlushToDiskInterval

The interval at which the log file is flushed to disk.
Defaults to null (no periodic flushing).

```yaml
Type: System.Nullable`1[System.TimeSpan]
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

### -FormatProvider

An optional format provider for customizing message formatting.

```yaml
Type: System.IFormatProvider
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Default
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

An optional text formatter for custom log message formatting.

```yaml
Type: Serilog.Formatting.ITextFormatter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Formatter
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Hooks

Lifecycle hooks for managing the log file lifecycle.
Defaults to null (no hooks).

```yaml
Type: Serilog.Sinks.File.FileLifecycleHooks
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

The Serilog LoggerConfiguration object to which the file sink will be added.

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
Defaults to '{Timestamp:yyyy-MM-dd HH:mm:ss.fff zzz} [{Level:u3}] {Message:lj}{NewLine}{ErrorRecord}{Exception}'.

```yaml
Type: System.String
DefaultValue: '{Timestamp:yyyy-MM-dd HH:mm:ss.fff zzz} [{Level:u3}] {Message:lj}{NewLine}{Exception}'
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

### -Path

The file path where log events will be written.
This can include rolling file names.

```yaml
Type: System.String
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

### -RestrictedToMinimumLevel

The minimum log event level required to write to the file sink.
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

### -RetainedFileCountLimit

The maximum number of rolled log files to retain.
Defaults to 31.

```yaml
Type: System.Nullable`1[System.Int32]
DefaultValue: 31
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

### -RollingInterval

The rolling interval for the log file.
Defaults to Infinite (no rolling).

```yaml
Type: Serilog.RollingInterval
DefaultValue: Infinite
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

### -RollOnFileSizeLimit

If set, the log file will roll over when it reaches the size limit, regardless of the rolling interval.
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

### -Shared

If set, allows multiple processes to write to the same log file.
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

This function is part of the Kestrun logging infrastructure and should be used to enable file     logging.


## RELATED LINKS

{{ Fill in the related links here }}
