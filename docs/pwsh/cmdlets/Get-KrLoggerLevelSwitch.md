---
layout: default
parent: PowerShell Cmdlets
title: Get-KrLoggerLevelSwitch
nav_order: 73
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrLoggerLevelSwitch

## SYNOPSIS
Gets the current logging level for a level switch.

## SYNTAX

### LoggerName (Default)
```
Get-KrLoggerLevelSwitch [-LoggerName <String>] [<CommonParameters>]
```

### Logger
```
Get-KrLoggerLevelSwitch -Logger <Logger> [<CommonParameters>]
```

## DESCRIPTION
Retrieves the current logging level for a specified level switch.
If the LoggerName is not provided,
it will be derived from the provided Logger instance.

## EXAMPLES

### EXAMPLE 1
```powershell
Get-KrLoggerLevelSwitch -LoggerName "MyLogger"
Retrieves the current logging level of the level switch for the logger named "MyLogger".
```

### EXAMPLE 2
```powershell
Get-KrLoggerLevelSwitch -Logger $myLogger
Retrieves the current logging level of the level switch for the specified logger instance.
```

## PARAMETERS

### -LoggerName
The name of a registered logger to set the level switch for.
It's mutually exclusive with the Logger parameter.

```yaml
Type: String
Parameter Sets: LoggerName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Logger
An instance of Serilog.Core.Logger to set the level switch for.
It's mutually exclusive with the LoggerName parameter.

```yaml
Type: Logger
Parameter Sets: Logger
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Serilog.Events.LogEventLevel
## NOTES

## RELATED LINKS
