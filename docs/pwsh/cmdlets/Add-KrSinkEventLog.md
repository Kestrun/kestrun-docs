---
layout: default
parent: PowerShell Cmdlets
title: Add-KrSinkEventLog
nav_order: 34
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrSinkEventLog

## SYNOPSIS
Adds an Event Log sink to the Serilog logger configuration.

## SYNTAX

```
Add-KrSinkEventLog [-LoggerConfig] <LoggerConfiguration> [-Source] <String> [[-LogName] <String>]
 [[-MachineName] <String>] [-ManageEventSource] [[-OutputTemplate] <String>]
 [[-FormatProvider] <IFormatProvider>] [[-RestrictedToMinimumLevel] <LogEventLevel>]
 [[-EventIdProvider] <IEventIdProvider>] [<CommonParameters>]
```

## DESCRIPTION
The Add-KrSinkEventLog function configures a logging sink that writes log events to the Windows Event Log.
It allows customization of log source, log name, output template, and other parameters.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrSinkEventLog -LoggerConfig $config -Source "MyApp" -LogName "Application"
Adds an Event Log sink to the logging system that writes log events to the 'Application' log with the source 'MyApp'.
```

### EXAMPLE 2
```powershell
Add-KrSinkEventLog -LoggerConfig $config -Source "MyApp" -LogName "CustomLog"
Adds an Event Log sink to the logging system that writes log events to the 'CustomLog' log with the source 'MyApp'.
```

### EXAMPLE 3
```powershell
Add-KrSinkEventLog -LoggerConfig $config -Source "MyApp" -LogName "Application" -ManageEventSource $true
Adds an Event Log sink that manages the event source, creating it if it does not exist.
```

## PARAMETERS

### -LoggerConfig
The Serilog LoggerConfiguration object to which the Event Log sink will be added.

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

### -Source
The source name for the Event Log.
This is used to identify the application or service that is writing to the log.

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

### -LogName
The name of the Event Log to write to.
If not specified, defaults to 'Application'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MachineName
The name of the machine hosting the Event Log.
The local machine by default.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: .
Accept pipeline input: False
Accept wildcard characters: False
```

### -ManageEventSource
If set to true, the function will attempt to create the event source if it does not exist.
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

### -OutputTemplate
The output template string for formatting log messages.
Defaults to '{Message}{NewLine}{Exception}{ErrorRecord}'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: {Message}{NewLine}{Exception}{ErrorRecord}
Accept pipeline input: False
Accept wildcard characters: False
```

### -FormatProvider
An optional format provider for customizing message formatting.

```yaml
Type: IFormatProvider
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestrictedToMinimumLevel
The minimum log event level required to write to the Event Log sink.
Defaults to Verbose.

```yaml
Type: LogEventLevel
Parameter Sets: (All)
Aliases:
Accepted values: Verbose, Debug, Information, Warning, Error, Fatal

Required: False
Position: 7
Default value: Verbose
Accept pipeline input: False
Accept wildcard characters: False
```

### -EventIdProvider
An optional IEventIdProvider to provide custom event IDs for log events.

```yaml
Type: IEventIdProvider
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
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
This function is part of the Kestrun logging infrastructure and should be used to enable Event Log logging.

## RELATED LINKS
