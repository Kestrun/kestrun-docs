---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://github.com/Kestrun/Kestrun
schema: 2.0.0
---

# Add-KrSinkSyslogLocal

## SYNOPSIS
Adds a Syslog Local sink to the Serilog logger configuration.

## SYNTAX

```
Add-KrSinkSyslogLocal [-LoggerConfig] <LoggerConfiguration> [[-AppName] <String>] [[-Facility] <Facility>]
 [[-OutputTemplate] <String>] [[-RestrictedToMinimumLevel] <LogEventLevel>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
The Add-KrSinkSyslogLocal function configures a logging sink that sends log events to the local Syslog server.
It allows customization of the application name, Syslog facility, output template, and minimum log level.

## EXAMPLES

### EXAMPLE 1
```
Add-KrSinkSyslogLocal -LoggerConfig $config -AppName "MyApp" -Facility Local1 -OutputTemplate "{Message}{NewLine}{Exception}{ErrorRecord}" -RestrictedToMinimumLevel Information
Adds a Syslog Local sink to the logging system that sends log events with the specified application name, facility, output template, and minimum log level.
```

### EXAMPLE 2
```
Add-KrSinkSyslogLocal -LoggerConfig $config
Adds a Syslog Local sink to the logging system with default parameters.
```

## PARAMETERS

### -LoggerConfig
The Serilog LoggerConfiguration object to which the Syslog Local sink will be added.

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

### -AppName
The application name to be included in the Syslog messages.
If not specified, defaults to null.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
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
Position: 3
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
Position: 4
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
Position: 5
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
This function is part of the Kestrun logging infrastructure and should be used to enable Syslog Local logging.

## RELATED LINKS
