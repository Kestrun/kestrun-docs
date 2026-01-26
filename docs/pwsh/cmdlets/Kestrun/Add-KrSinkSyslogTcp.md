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
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Add-KrSinkSyslogTcp
---

# Add-KrSinkSyslogTcp

## SYNOPSIS

Adds a Syslog TCP sink to the logging system.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrSinkSyslogTcp [-LoggerConfig] <LoggerConfiguration> [-Hostname] <string> [[-Port] <int>]
 [[-AppName] <string>] [[-FramingType] <FramingType>] [[-Format] <SyslogFormat>]
 [[-Facility] <Facility>] [[-CertProvider] <ICertificateProvider>]
 [[-CertValidationCallback] <RemoteCertificateValidationCallback>] [[-OutputTemplate] <string>]
 [[-RestrictedToMinimumLevel] <LogEventLevel>] [[-MessageIdPropertyName] <string>]
 [[-BatchSizeLimit] <int>] [[-PeriodSeconds] <int>] [[-QueueLimit] <int>] [[-SourceHost] <string>]
 [[-SeverityMapping] <Func`2[LogEventLevel,Severity]>] [[-Formatter] <ITextFormatter>]
 [[-LevelSwitch] <LoggingLevelSwitch>] [-UseTls] [-EagerlyEmitFirstEvent] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Configures a Serilog sink that sends log events to a Syslog server over TCP.
Supports hostname, port, app name, framing, format, facility, TLS, certificate options,
output template, minimum level, batching, severity mapping, and advanced syslog parameters.

## EXAMPLES

### EXAMPLE 1

# simplest: send logs over tcp with defaults
Add-KrSinkSyslogTcp -LoggerConfig $config -Hostname "syslog.example.com"

### EXAMPLE 2

# custom port, app name, and TLS enabled
Add-KrSinkSyslogTcp -LoggerConfig $config -Hostname "syslog.example.com" -Port 6514 -AppName "MyApp" -UseTls

### EXAMPLE 3

# use RFC3164 format and Local1 facility
Add-KrSinkSyslogTcp -LoggerConfig $config -Hostname "syslog.example.com" -Format RFC3164 -Facility Local1

### EXAMPLE 4

# add batching configuration
Add-KrSinkSyslogTcp -LoggerConfig $config -Hostname "syslog.example.com" `
    -BatchSizeLimit 50 -PeriodSeconds 1 -QueueLimit 5000 -EagerlyEmitFirstEvent

### EXAMPLE 5

# apply a custom severity mapping
$map = [System.Func[Serilog.Events.LogEventLevel,Serilog.Sinks.Syslog.Severity]]{
    param($level)
    switch ($level) {
        'Information' { [Serilog.Sinks.Syslog.Severity]::Notice }
        'Fatal'       { [Serilog.Sinks.Syslog.Severity]::Emergency }
        default       { [Serilog.Sinks.Syslog.Severity]::Informational }
    }
}
Add-KrSinkSyslogTcp -LoggerConfig $config -Hostname "syslog.example.com" -SeverityMapping $map

### EXAMPLE 6

# advanced: secure connection with certificate validation
$callback = [System.Net.Security.RemoteCertificateValidationCallback]{
    param($sender, $cert, $chain, $errors) $true
}
Add-KrSinkSyslogTcp -LoggerConfig $config -Hostname "syslog.example.com" -UseTls `
    -CertValidationCallback $callback -AppName "SecureApp"

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

Maximum number of events per batch (optional).

```yaml
Type: System.Int32
DefaultValue: 0
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

### -CertProvider

An optional certificate provider for secure connections.

```yaml
Type: Serilog.Sinks.Syslog.ICertificateProvider
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

### -CertValidationCallback

An optional callback for validating server certificates.

```yaml
Type: System.Net.Security.RemoteCertificateValidationCallback
DefaultValue: ''
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

### -EagerlyEmitFirstEvent

If specified, the first event is sent immediately without waiting for the batch period.

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
  Position: 6
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
Defaults to RFC5424.

```yaml
Type: Serilog.Sinks.Syslog.SyslogFormat
DefaultValue: RFC5424
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

### -Formatter

Optional custom ITextFormatter for full control over message formatting.

```yaml
Type: Serilog.Formatting.ITextFormatter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 17
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -FramingType

The framing type to use for the Syslog messages.
Defaults to OCTET_COUNTING.

```yaml
Type: Serilog.Sinks.Syslog.FramingType
DefaultValue: OCTET_COUNTING
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

Optional LoggingLevelSwitch to dynamically control the log level.

```yaml
Type: Serilog.Core.LoggingLevelSwitch
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 18
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LoggerConfig

The Serilog LoggerConfiguration object to which the Syslog TCP sink will be added.

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

The property name used for RFC5424 message ID.
Defaults to the sink’s built-in constant.

```yaml
Type: System.String
DefaultValue: '[Serilog.Sinks.Syslog.Rfc5424Formatter]::DefaultMessageIdPropertyName'
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

### -OutputTemplate

The output template string for formatting log messages.

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

### -PeriodSeconds

Flush period for batches in seconds (optional).

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

Maximum number of buffered events (optional).

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
  Position: 10
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SeverityMapping

Custom delegate to map Serilog log levels to syslog severities.

```yaml
Type: System.Func`2[Serilog.Events.LogEventLevel,Serilog.Sinks.Syslog.Severity]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 16
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SourceHost

Optional value for the `sourceHost` field in syslog messages.

```yaml
Type: System.String
DefaultValue: ''
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

### -UseTls

Switch to enable TLS encryption for the TCP connection.
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

This function is part of the Kestrun logging infrastructure and should be used to enable Syslog TCP logging.


## RELATED LINKS

{{ Fill in the related links here }}
