---
layout: default
parent: PowerShell Cmdlets
title: Add-KrSinkSyslogTcp
nav_order: 55
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrSinkSyslogTcp

## SYNOPSIS
Adds a Syslog TCP sink to the logging system.

## SYNTAX

```
Add-KrSinkSyslogTcp [-LoggerConfig] <LoggerConfiguration> [-Hostname] <String> [[-Port] <Int32>]
 [[-AppName] <String>] [[-FramingType] <FramingType>] [[-Format] <SyslogFormat>] [[-Facility] <Facility>]
 [-UseTls] [[-CertProvider] <ICertificateProvider>]
 [[-CertValidationCallback] <RemoteCertificateValidationCallback>] [[-OutputTemplate] <String>]
 [[-RestrictedToMinimumLevel] <LogEventLevel>] [[-MessageIdPropertyName] <String>] [[-BatchSizeLimit] <Int32>]
 [[-PeriodSeconds] <Int32>] [[-QueueLimit] <Int32>] [-EagerlyEmitFirstEvent] [[-SourceHost] <String>]
 [[-SeverityMapping] <System.Func`2[Serilog.Events.LogEventLevel,Serilog.Sinks.Syslog.Severity]>]
 [[-Formatter] <ITextFormatter>] [[-LevelSwitch] <LoggingLevelSwitch>] [<CommonParameters>]
```

## DESCRIPTION
Configures a Serilog sink that sends log events to a Syslog server over TCP.
Supports hostname, port, app name, framing, format, facility, TLS, certificate options,
output template, minimum level, batching, severity mapping, and advanced syslog parameters.

## EXAMPLES

### EXAMPLE 1
```powershell
# simplest: send logs over tcp with defaults
Add-KrSinkSyslogTcp -LoggerConfig $config -Hostname "syslog.example.com"
```

### EXAMPLE 2
```powershell
# custom port, app name, and TLS enabled
Add-KrSinkSyslogTcp -LoggerConfig $config -Hostname "syslog.example.com" -Port 6514 -AppName "MyApp" -UseTls
```

### EXAMPLE 3
```powershell
# use RFC3164 format and Local1 facility
Add-KrSinkSyslogTcp -LoggerConfig $config -Hostname "syslog.example.com" -Format RFC3164 -Facility Local1
```

### EXAMPLE 4
```powershell
# add batching configuration
Add-KrSinkSyslogTcp -LoggerConfig $config -Hostname "syslog.example.com" `
    -BatchSizeLimit 50 -PeriodSeconds 1 -QueueLimit 5000 -EagerlyEmitFirstEvent
```

### EXAMPLE 5
```powershell
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
```

### EXAMPLE 6
```powershell
# advanced: secure connection with certificate validation
$callback = [System.Net.Security.RemoteCertificateValidationCallback]{
    param($sender, $cert, $chain, $errors) $true
}
Add-KrSinkSyslogTcp -LoggerConfig $config -Hostname "syslog.example.com" -UseTls `
    -CertValidationCallback $callback -AppName "SecureApp"
```

## PARAMETERS

### -LoggerConfig
The Serilog LoggerConfiguration object to which the Syslog TCP sink will be added.

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
If not specified, defaults to null.

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

### -FramingType
The framing type to use for the Syslog messages.
Defaults to OCTET_COUNTING.

```yaml
Type: FramingType
Parameter Sets: (All)
Aliases:
Accepted values: CRLF, CR, LF, NUL, OCTET_COUNTING

Required: False
Position: 5
Default value: OCTET_COUNTING
Accept pipeline input: False
Accept wildcard characters: False
```

### -Format
The Syslog message format to use.
Defaults to RFC5424.

```yaml
Type: SyslogFormat
Parameter Sets: (All)
Aliases:
Accepted values: Local, RFC3164, RFC5424

Required: False
Position: 6
Default value: RFC5424
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
Position: 7
Default value: Local0
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseTls
Switch to enable TLS encryption for the TCP connection.
Defaults to false.

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

### -CertProvider
An optional certificate provider for secure connections.

```yaml
Type: ICertificateProvider
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CertValidationCallback
An optional callback for validating server certificates.

```yaml
Type: RemoteCertificateValidationCallback
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTemplate
The output template string for formatting log messages.

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

### -RestrictedToMinimumLevel
The minimum log event level required to write to the Syslog sink.
Defaults to Verbose.

```yaml
Type: LogEventLevel
Parameter Sets: (All)
Aliases:
Accepted values: Verbose, Debug, Information, Warning, Error, Fatal

Required: False
Position: 11
Default value: Verbose
Accept pipeline input: False
Accept wildcard characters: False
```

### -MessageIdPropertyName
The property name used for RFC5424 message ID.
Defaults to the sink's built-in constant.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: [Serilog.Sinks.Syslog.Rfc5424Formatter]::DefaultMessageIdPropertyName
Accept pipeline input: False
Accept wildcard characters: False
```

### -BatchSizeLimit
Maximum number of events per batch (optional).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -PeriodSeconds
Flush period for batches in seconds (optional).

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

### -QueueLimit
Maximum number of buffered events (optional).

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

### -EagerlyEmitFirstEvent
If specified, the first event is sent immediately without waiting for the batch period.

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

### -SourceHost
Optional value for the \`sourceHost\` field in syslog messages.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SeverityMapping
Custom delegate to map Serilog log levels to syslog severities.

```yaml
Type: System.Func`2[Serilog.Events.LogEventLevel,Serilog.Sinks.Syslog.Severity]
Parameter Sets: (All)
Aliases:

Required: False
Position: 17
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
Position: 18
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LevelSwitch
Optional LoggingLevelSwitch to dynamically control the log level.

```yaml
Type: LoggingLevelSwitch
Parameter Sets: (All)
Aliases:

Required: False
Position: 19
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Serilog.LoggerConfiguration
## NOTES
This function is part of the Kestrun logging infrastructure and should be used to enable Syslog TCP logging.

## RELATED LINKS
