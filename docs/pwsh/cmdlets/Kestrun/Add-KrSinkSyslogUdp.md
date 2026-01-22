---
layout: default
parent: PowerShell Cmdlets
nav_order: 72
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Add-KrSinkSyslogUdp
---

# Add-KrSinkSyslogUdp

## SYNOPSIS

Adds a Syslog UDP sink to the Serilog logger configuration.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrSinkSyslogUdp [-LoggerConfig] <LoggerConfiguration> [-Hostname] <string> [[-Port] <int>]
 [[-AppName] <string>] [[-Format] <SyslogFormat>] [[-Facility] <Facility>]
 [[-OutputTemplate] <string>] [[-RestrictedToMinimumLevel] <LogEventLevel>]
 [[-MessageIdPropertyName] <string>] [[-SourceHost] <string>]
 [[-SeverityMapping] <Func`2[LogEventLevel,Severity]>] [[-Formatter] <ITextFormatter>]
 [[-LevelSwitch] <LoggingLevelSwitch>] [[-BatchSizeLimit] <int>] [[-PeriodSeconds] <int>]
 [[-QueueLimit] <int>] [-EagerlyEmitFirstEvent] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Configures a Serilog sink that sends log events to a Syslog server over UDP.
Supports hostname, port, app name, format, facility, output template, minimum level,
batching, message-id property name (RFC5424), source host, custom severity mapping,
custom formatter, dynamic level switch, and structured data ID.

## EXAMPLES

### EXAMPLE 1

# simplest: send logs over UDP with defaults
Add-KrSinkSyslogUdp -LoggerConfig $config -Hostname "syslog.example.com"

### EXAMPLE 2

# RFC5424 with Local1 facility and custom app name
Add-KrSinkSyslogUdp -LoggerConfig $config -Hostname "syslog.example.com" `
    -Format RFC5424 -Facility Local1 -AppName "Kestrun"

### EXAMPLE 3

# batching: 50 events, flush every 2s, queue up to 5000, emit first immediately
Add-KrSinkSyslogUdp -LoggerConfig $config -Hostname "syslog.example.com" `
    -BatchSizeLimit 50 -PeriodSeconds 2 -QueueLimit 5000 -EagerlyEmitFirstEvent

### EXAMPLE 4

# custom severity mapping (Information→Notice, Fatal→Emergency)
$map = [System.Func[Serilog.Events.LogEventLevel,Serilog.Sinks.Syslog.Severity]]{
    param($level)
    switch ($level) {
        'Information' { [Serilog.Sinks.Syslog.Severity]::Notice }
        'Fatal'       { [Serilog.Sinks.Syslog.Severity]::Emergency }
        'Warning'     { [Serilog.Sinks.Syslog.Severity]::Warning }
        'Error'       { [Serilog.Sinks.Syslog.Severity]::Error }
        'Debug'       { [Serilog.Sinks.Syslog.Severity]::Debug }
        'Verbose'     { [Serilog.Sinks.Syslog.Severity]::Debug }
        default       { [Serilog.Sinks.Syslog.Severity]::Informational }
    }
}
Add-KrSinkSyslogUdp -LoggerConfig $config -Hostname "syslog.example.com" -SeverityMapping $map

### EXAMPLE 5

# advanced: override message-id property name and source host (RFC5424)
Add-KrSinkSyslogUdp -LoggerConfig $config -Hostname "syslog.example.com" `
    -Format RFC5424 -MessageIdPropertyName "SourceContext" -SourceHost "api01"

## PARAMETERS

### -AppName

The application name to be included in the Syslog messages.
If not specified, defaults to the process name.

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

### -BatchSizeLimit

Maximum number of events per batch.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 13
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -EagerlyEmitFirstEvent

If specified, the first event is emitted immediately (no waiting for the first period).

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
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Format

The Syslog message format to use.
Defaults to RFC3164.

```yaml
Type: Serilog.Sinks.Syslog.SyslogFormat
DefaultValue: RFC3164
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

### -Formatter

Optional custom ITextFormatter for full control over message formatting.

```yaml
Type: Serilog.Formatting.ITextFormatter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 11
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Hostname

The hostname or IP address of the Syslog server to which log events will be sent.

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

### -LevelSwitch

Optional LoggingLevelSwitch to dynamically control the level.

# ---- Batching (optional; created only if you set any of these) ----

```yaml
Type: Serilog.Core.LoggingLevelSwitch
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 12
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LoggerConfig

The Serilog LoggerConfiguration object to which the Syslog UDP sink will be added.

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

### -MessageIdPropertyName

For RFC5424 only: property name used to derive the Message ID (default is the sink’s constant).

```yaml
Type: System.String
DefaultValue: '[Serilog.Sinks.Syslog.Rfc5424Formatter]::DefaultMessageIdPropertyName'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 8
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutputTemplate

The output template string for formatting log messages (used by the sink’s formatter).
If omitted, the sink’s default template/formatter is used.

```yaml
Type: System.String
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

### -PeriodSeconds

Flush period in seconds.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 14
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Port

The port number on which the Syslog server is listening.
Defaults to 514.

```yaml
Type: System.Int32
DefaultValue: 514
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

### -QueueLimit

Maximum queued events before dropping.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 15
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
Defaults to Minimum.

```yaml
Type: Serilog.Events.LogEventLevel
DefaultValue: Verbose
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

### -SeverityMapping

Custom delegate to map Serilog levels to syslog severities:
[System.Func``2[Serilog.Events.LogEventLevel,Serilog.Sinks.Syslog.Severity]]

```yaml
Type: System.Func`2[Serilog.Events.LogEventLevel,Serilog.Sinks.Syslog.Severity]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 10
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SourceHost

Optional override for the source host field written by the formatter.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 9
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

This function is part of the Kestrun logging infrastructure and enables Syslog UDP logging.


## RELATED LINKS

{{ Fill in the related links here }}
