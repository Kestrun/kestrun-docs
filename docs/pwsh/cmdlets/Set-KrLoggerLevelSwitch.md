---
layout: default
parent: PowerShell Cmdlets
title: Set-KrLoggerLevelSwitch
nav_order: 99
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrLoggerLevelSwitch

## SYNOPSIS
Sets the minimum logging level for a level switch.

## SYNTAX

### LoggerName (Default)
```
Set-KrLoggerLevelSwitch [-LoggerName <String>] -MinimumLevel <LogEventLevel> [<CommonParameters>]
```

### Logger
```
Set-KrLoggerLevelSwitch -Logger <Logger> -MinimumLevel <LogEventLevel> [<CommonParameters>]
```

## DESCRIPTION
Sets the minimum logging level for a specified level switch.
If ToPreference is specified,
the logging level will be set to the user's preference.

## EXAMPLES

### EXAMPLE 1
```powershell
Set-KrLoggerLevelSwitch -LoggerName "MyLogger" -MinimumLevel Warning
Sets the minimum logging level of the level switch for the logger named "MyLogger" to Warning.
```

### EXAMPLE 2
```powershell
Set-KrLoggerLevelSwitch -Logger $myLogger -MinimumLevel Error
Sets the minimum logging level of the level switch for the specified logger instance to Error.
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

### -MinimumLevel
The minimum logging level to set for the switch.

```yaml
Type: LogEventLevel
Parameter Sets: (All)
Aliases:
Accepted values: Verbose, Debug, Information, Warning, Error, Fatal

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

## NOTES

## RELATED LINKS
