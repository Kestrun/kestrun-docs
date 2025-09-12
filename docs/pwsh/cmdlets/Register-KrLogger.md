---
layout: default
parent: PowerShell Cmdlets
title: Register-KrLogger
nav_order: 92
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Register-KrLogger

## SYNOPSIS
Starts the Kestrun logger.

## SYNTAX

```
Register-KrLogger [-Name] <String> [-LoggerConfig] <LoggerConfiguration> [-SetAsDefault] [-PassThru]
 [<CommonParameters>]
```

## DESCRIPTION
This function initializes the Kestrun logger with specified configurations.

## EXAMPLES

### EXAMPLE 1
```powershell
Register-KrLogger -Name "MyLogger" -MinimumLevel Debug -Console -FilePath "C:\Logs\kestrun.log" -FileRollingInterval Day -SetAsDefault
Initializes the Kestrun logger with Debug level, adds console and file sinks, sets the logger as default, and returns the logger object.
```

### EXAMPLE 2
```powershell
Register-KrLogger -Name "MyLogger" -LoggerConfig $myLoggerConfig -SetAsDefault
Initializes the Kestrun logger using a pre-configured Serilog logger configuration object and sets it as the default logger.
```

### EXAMPLE 3
```powershell
Register-KrLogger -Name "MyLogger" -MinimumLevel Debug -Console -FilePath "C:\Logs\kestrun.log" -FileRollingInterval Day -SetAsDefault
Initializes the Kestrun logger with Debug level, adds console and file sinks, sets the logger as default, and returns the logger object.
```

### EXAMPLE 4
```powershell
Register-KrLogger -Name "MyLogger" -MinimumLevel Debug -Console -FilePath "C:\Logs\kestrun.log" -FileRollingInterval Day -SetAsDefault
Initializes the Kestrun logger with Debug level, adds console and file sinks, sets the logger as default, and returns the logger object.
```

## PARAMETERS

### -Name
The name of the logger instance.
This is mandatory.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoggerConfig
A Serilog logger configuration object to set up the logger.

```yaml
Type: LoggerConfiguration
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -SetAsDefault
If specified, sets the created logger as the default logger for Serilog.

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

### -PassThru
If specified, returns the created logger object.

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

### Serilog.ILogger
## NOTES

## RELATED LINKS
