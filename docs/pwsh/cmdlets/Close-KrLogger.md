---
layout: default
parent: PowerShell Cmdlets
title: Close-KrLogger
nav_order: 65
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Close-KrLogger

## SYNOPSIS
Closes the logger and flushes all logs.

## SYNTAX

### AllLogs (Default)
```
Close-KrLogger [<CommonParameters>]
```

### Logger
```
Close-KrLogger [-Logger <ILogger[]>] [<CommonParameters>]
```

### LoggerName
```
Close-KrLogger [-LoggerName <String[]>] [<CommonParameters>]
```

### Default
```
Close-KrLogger [-DefaultLogger] [<CommonParameters>]
```

## DESCRIPTION
Closes the logger and flushes all logs.
If no logger is specified, it will close the default logger.

## EXAMPLES

### EXAMPLE 1
```powershell
Close-KrLogger -Logger $myLogger
Closes the specified logger and flushes all logs.
```

### EXAMPLE 2
```powershell
Close-KrLogger
Closes all active loggers and flushes any remaining logs.
```

### EXAMPLE 3
```powershell
Close-KrLogger -LoggerName 'MyLogger'
Closes the logger with the specified name and any remaining logs.
```

### EXAMPLE 4
```powershell
Close-KrLogger -DefaultLogger
Closes the default logger and flushes any remaining logs.
```

## PARAMETERS

### -Logger
Instance of Serilog.Logger to close.
If not specified, the default logger will be closed.

```yaml
Type: ILogger[]
Parameter Sets: Logger
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -LoggerName
Name of the logger to close.
If specified, the logger with this name will be closed

```yaml
Type: String[]
Parameter Sets: LoggerName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultLogger
If specified, closes the default logger.

```yaml
Type: SwitchParameter
Parameter Sets: Default
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

### Instance of Serilog.Logger
## OUTPUTS

### None. This cmdlet does not return any output.
## NOTES

## RELATED LINKS
