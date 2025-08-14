---
layout: default
parent: PowerShell Cmdlets
title: Add-KrSinkSyslogUdp
nav_order: 42
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://github.com/Kestrun/Kestrun
schema: 2.0.0
---

# Add-KrSinkSyslogUdp

## SYNOPSIS
Adds a Syslog UDP sink to the Serilog logger configuration.

## SYNTAX

```
Add-KrSinkSyslogUdp [-LoggerConfig] <LoggerConfiguration> [-Hostname] <String> [[-Port] <Int32>]
 [[-AppName] <String>] [[-Format] <SyslogFormat>] [[-Facility] <Facility>] [[-OutputTemplate] <String>]
 [[-RestrictedToMinimumLevel] <LogEventLevel>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
The Add-KrSinkSyslogUdp function configures a logging sink that sends log events to a Syslog server over UDP.
It allows customization of the Syslog server hostname, port, application name, format, facility, output template, and minimum log level.

## EXAMPLES

### EXAMPLE 1
```
Add-KrSinkSyslogUdp -LoggerConfig $config -Hostname "syslog.example.com"
Adds a Syslog UDP sink to the logging system that sends log events to "syslog.example.com" on the default port 514.
```

### EXAMPLE 2
```
Add-KrSinkSyslogUdp -LoggerConfig $config -Hostname "syslog.example.com" -Port 514 -AppName "MyApp"
Adds a Syslog UDP sink that sends log events to "syslog.example.com" with the application name "MyApp".
```

### EXAMPLE 3
```
Add-KrSinkSyslogUdp -LoggerConfig $config -Hostname "syslog.example.com" -Port 514 -Format RFC5424 -Facility Local1
Adds a Syslog UDP sink that sends log events to "syslog.example.com" with the RFC5424 format and Local1 facility.
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
The output template string for formatting log messages.
Defaults to '{Message}{NewLine}{Exception}{ErrorRecord}'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
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
Position: 8
Default value: Verbose
Accept pipeline input: False
Accept wildcard characters: False
```



### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Serilog.LoggerConfiguration
## NOTES
This function is part of the Kestrun logging infrastructure and should be used to enable Syslog UDP logging.

## RELATED LINKS
