---
layout: default
parent: PowerShell Cmdlets
title: Add-KrSinkSyslogTcp
nav_order: 41
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://github.com/Kestrun/Kestrun
schema: 2.0.0
---

# Add-KrSinkSyslogTcp

## SYNOPSIS
Adds a Syslog TCP sink to the logging system.

## SYNTAX

```
Add-KrSinkSyslogTcp [-LoggerConfig] <LoggerConfiguration> [-Hostname] <String> [[-Port] <Int32>]
 [[-AppName] <String>] [[-FramingType] <FramingType>] [[-Format] <SyslogFormat>] [[-Facility] <Facility>]
 [[-SecureProtocols] <SslProtocols>] [[-CertProvider] <ICertificateProvider>]
 [[-CertValidationCallback] <RemoteCertificateValidationCallback>] [[-OutputTemplate] <String>]
 [[-RestrictedToMinimumLevel] <LogEventLevel>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
The Add-KrSinkSyslogTcp function configures a logging sink that sends log events to a Syslog server over TCP.
It allows customization of the Syslog server hostname, port, application name, format, facility, output template, and minimum log level.

## EXAMPLES

### EXAMPLE 1
```
Add-KrSinkSyslogTcp -LoggerConfig $config -Hostname "syslog.example.com"
Adds a Syslog TCP sink to the logging system that sends log events to "syslog.example.com" on the default port 1468.
```

### EXAMPLE 2
```
Add-KrSinkSyslogTcp -LoggerConfig $config -Hostname "syslog.example.com" -Port 1468 -AppName "MyApp"
Adds a Syslog TCP sink that sends log events to "syslog.example.com" with the application name "MyApp".
```

### EXAMPLE 3
```
Add-KrSinkSyslogTcp -LoggerConfig $config -Hostname "syslog.example.com" -Port 1468 -Format RFC5424 -Facility Local1
Adds a Syslog TCP sink that sends log events to "syslog.example.com" with the RFC5424 format and Local1 facility.
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
Defaults to 1468.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 1468
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

### -SecureProtocols
The SSL/TLS protocols to use for secure connections.
Defaults to Tls12.

```yaml
Type: SslProtocols
Parameter Sets: (All)
Aliases:
Accepted values: None, Ssl2, Ssl3, Tls, Default, Tls11, Tls12, Tls13

Required: False
Position: 8
Default value: Tls12
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
Position: 9
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
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTemplate
The output template string for formatting log messages.
Defaults to '{Message}{NewLine}{Exception}{ErrorRecord}'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: {Message}{NewLine}{Exception}{ErrorRecord}
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
Position: 12
Default value: Verbose
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
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
