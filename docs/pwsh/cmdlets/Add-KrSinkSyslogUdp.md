---
layout: default
parent: PowerShell Cmdlets
title: Add-KrSinkSyslogUdp
nav_order: 46
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrSinkSyslogUdp

## SYNOPSIS
Adds a Syslog UDP sink to the Serilog logger configuration.

## SYNTAX

```
Add-KrSinkSyslogUdp [-LoggerConfig] <LoggerConfiguration> [-Hostname] <String> [[-Port] <Int32>]
 [[-AppName] <String>] [[-Format] <SyslogFormat>] [[-Facility] <Facility>] [[-OutputTemplate] <String>]
 [[-RestrictedToMinimumLevel] <LogEventLevel>] [[-MessageIdPropertyName] <String>] [[-SourceHost] <String>]
 [[-SeverityMapping] <System.Func`2[Serilog.Events.LogEventLevel,Serilog.Sinks.Syslog.Severity]>]
 [[-Formatter] <ITextFormatter>] [[-LevelSwitch] <LoggingLevelSwitch>] [[-BatchSizeLimit] <Int32>]
 [[-PeriodSeconds] <Int32>] [[-QueueLimit] <Int32>] [-EagerlyEmitFirstEvent] [<CommonParameters>]
```

## DESCRIPTION
Configures a Serilog sink that sends log events to a Syslog server over UDP.
Supports hostname, port, app name, format, facility, output template, minimum level,
batching, message-id property name (RFC5424), source host, custom severity mapping,
custom formatter, dynamic level switch, and structured data ID.

## EXAMPLES

### EXAMPLE 1
```powershell
# simplest: send logs over UDP with defaults
Add-KrSinkSyslogUdp -LoggerConfig $config -Hostname "syslog.example.com"
```

### EXAMPLE 2
```powershell
# RFC5424 with Local1 facility and custom app name
Add-KrSinkSyslogUdp -LoggerConfig $config -Hostname "syslog.example.com" `
    -Format RFC5424 -Facility Local1 -AppName "Kestrun"
```

### EXAMPLE 3
```powershell
# batching: 50 events, flush every 2s, queue up to 5000, emit first immediately
Add-KrSinkSyslogUdp -LoggerConfig $config -Hostname "syslog.example.com" `
    -BatchSizeLimit 50 -PeriodSeconds 2 -QueueLimit 5000 -EagerlyEmitFirstEvent
```

### EXAMPLE 4
```powershell
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
```

### EXAMPLE 5
```powershell
# advanced: override message-id property name and source host (RFC5424)
Add-KrSinkSyslogUdp -LoggerConfig $config -Hostname "syslog.example.com" `
    -Format RFC5424 -MessageIdPropertyName "SourceContext" -SourceHost "api01"
```

## PARAMETERS

### -LoggerConfig
The Serilog LoggerConfiguration object to which the Syslog UDP sink will be added.

```yaml
Type: LoggerConfiguration
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Hostname
The hostname or IP address of the Syslog server to which log events will be sent.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Port
The port number on which the Syslog server is listening.
Defaults to 514.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 514
Accept pipeline input: False
Accept wildcard characters: False
```

### -AppName
The application name to be included in the Syslog messages.
If not specified, defaults to the process name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Format
The Syslog message format to use.
Defaults to RFC3164.

```yaml
Type: SyslogFormat
Parameter Sets: (All)
Aliases:
Accepted values: Local, RFC3164, RFC5424

Required: False
Position: 5
Default value: RFC3164
Accept pipeline input: False
Accept wildcard characters: False
```

### -Facility
The Syslog facility to use for the log messages.
Defaults to Local0.

```yaml
Type: Facility
Parameter Sets: (All)
Aliases:
Accepted values: Kernel, User, Mail, Daemons, Auth, Syslog, LPR, News, UUCP, Cron, Auth2, FTP, NTP, LogAudit, LogAlert, Cron2, Local0, Local1, Local2, Local3, Local4, Local5, Local6, Local7

Required: False
Position: 6
Default value: Local0
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTemplate
The output template string for formatting log messages (used by the sink's formatter).
If omitted, the sink's default template/formatter is used.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestrictedToMinimumLevel
The minimum log event level required to write to the Syslog sink.
Defaults to Minimum.

```yaml
Type: LogEventLevel
Parameter Sets: (All)
Aliases:
Accepted values: Verbose, Debug, Information, Warning, Error, Fatal

Required: False
Position: 8
Default value: Verbose
Accept pipeline input: False
Accept wildcard characters: False
```

### -MessageIdPropertyName
For RFC5424 only: property name used to derive the Message ID (default is the sink's constant).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: [Serilog.Sinks.Syslog.Rfc5424Formatter]::DefaultMessageIdPropertyName
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceHost
Optional override for the source host field written by the formatter.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SeverityMapping
Custom delegate to map Serilog levels to syslog severities:
\[System.Func\`\`2\[Serilog.Events.LogEventLevel,Serilog.Sinks.Syslog.Severity\]\]

```yaml
Type: System.Func`2[Serilog.Events.LogEventLevel,Serilog.Sinks.Syslog.Severity]
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Formatter
Optional custom ITextFormatter for full control over message formatting.

```yaml
Type: ITextFormatter
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LevelSwitch
Optional LoggingLevelSwitch to dynamically control the level.

# ---- Batching (optional; created only if you set any of these) ----

```yaml
Type: LoggingLevelSwitch
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BatchSizeLimit
Maximum number of events per batch.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -PeriodSeconds
Flush period in seconds.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueueLimit
Maximum queued events before dropping.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -EagerlyEmitFirstEvent
If specified, the first event is emitted immediately (no waiting for the first period).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Serilog.LoggerConfiguration
## NOTES
This function is part of the Kestrun logging infrastructure and enables Syslog UDP logging.

## RELATED LINKS
