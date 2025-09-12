---
layout: default
parent: PowerShell Cmdlets
title: Add-KrSinkPowerShell
nav_order: 41
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrSinkPowerShell

## SYNOPSIS
Adds a PowerShell sink to the logger configuration.

## SYNTAX

```
Add-KrSinkPowerShell [-LoggerConfig] <LoggerConfiguration> [[-RestrictedToMinimumLevel] <LogEventLevel>]
 [[-OutputTemplate] <String>] [[-LevelSwitch] <LoggingLevelSwitch>] [<CommonParameters>]
```

## DESCRIPTION
The Add-KrSinkPowerShell function configures a logging sink that outputs log events to the PowerShell console.
It allows customization of log formatting and filtering based on log levels.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrSinkPowerShell -LoggerConfig $config
```

Adds a PowerShell sink to the logging system, allowing log messages to be output to the PowerShell console.

### EXAMPLE 2
```powershell
Add-KrSinkPowerShell -LoggerConfig $config -RestrictedToMinimumLevel Information
```

Adds a PowerShell sink that only outputs log events at Information level or higher.

### EXAMPLE 3
```powershell
Add-KrSinkPowerShell -LoggerConfig $config -OutputTemplate '{Timestamp:yyyy-MM-dd HH:mm:ss.fff zzz} [{Level:u3}] {Message:lj}{NewLine}{ErrorRecord}{Exception}'
Customizes the output template for PowerShell log messages.
```

### EXAMPLE 4
```powershell
Add-KrSinkPowerShell -LoggerConfig $config -LevelSwitch $myLevelSwitch
```

Uses a custom LoggingLevelSwitch to control the logging level dynamically.

## PARAMETERS

### -LoggerConfig
The Serilog LoggerConfiguration object to which the PowerShell sink will be added.

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

### -RestrictedToMinimumLevel
The minimum log event level required to write to the PowerShell sink.
Defaults to Verbose.

```yaml
Type: LogEventLevel
Parameter Sets: (All)
Aliases:
Accepted values: Verbose, Debug, Information, Warning, Error, Fatal

Required: False
Position: 2
Default value: Verbose
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTemplate
The output template string for formatting log messages.
Defaults to '{Message:lj}{ErrorRecord}'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: {Message:lj}{ErrorRecord}
Accept pipeline input: False
Accept wildcard characters: False
```

### -LevelSwitch
An optional LoggingLevelSwitch to dynamically control the logging level.

```yaml
Type: LoggingLevelSwitch
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
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
This function is part of the Kestrun logging infrastructure and should be used to enable PowerShell console logging.

## RELATED LINKS
