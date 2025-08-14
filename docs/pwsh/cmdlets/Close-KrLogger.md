---
layout: default
parent: PowerShell Cmdlets
title: Close-KrLogger
nav_order: 48
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Close-KrLogger

## SYNOPSIS
Closes the logger and flushes all logs.

## SYNTAX

```
Close-KrLogger [[-Logger] <ILogger>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Closes the logger and flushes all logs.
If no logger is specified, it will close the default logger.

## EXAMPLES

### EXAMPLE 1
```
Close-KrLogger -Logger $myLogger
Closes the specified logger and flushes all logs.
```

### EXAMPLE 2
```
Close-KrLogger
Closes the default logger and flushes all logs.
```

## PARAMETERS

### -Logger
Instance of Serilog.Logger to close.
If not specified, the default logger will be closed.

```yaml
Type: ILogger
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
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
