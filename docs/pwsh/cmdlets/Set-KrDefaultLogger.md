---
layout: default
parent: PowerShell Cmdlets
title: Set-KrDefaultLogger
nav_order: 80
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrDefaultLogger

## SYNOPSIS
Sets the logger for the current session.

## SYNTAX

```
Set-KrDefaultLogger [-Name] <String> [<CommonParameters>]
```

## DESCRIPTION
Sets the specified logger as the current logger for the session.

## EXAMPLES

### EXAMPLE 1
```powershell
Set-KrDefaultLogger -Logger $myLogger
PS> $myLogger | Set-KrDefaultLogger
Sets the specified logger as the current logger for the session.
```

### EXAMPLE 2
```powershell
$myLogger | Set-KrDefaultLogger
Sets the specified logger as the current logger for the session.
```

## PARAMETERS

### -Name
The name of the logger to set as the default logger.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Instance of Serilog.ILogger
## OUTPUTS

### None. This cmdlet does not return any output.
## NOTES

## RELATED LINKS
