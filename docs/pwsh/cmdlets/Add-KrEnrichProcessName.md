---
layout: default
parent: PowerShell Cmdlets
title: Add-KrEnrichProcessName
nav_order: 15
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrEnrichProcessName

## SYNOPSIS
Adds the process name to the log context.

## SYNTAX

```
Add-KrEnrichProcessName [-loggerConfig] <LoggerConfiguration> [<CommonParameters>]
```

## DESCRIPTION
Adds the process name to the log context, allowing it to be included in log events.

## EXAMPLES

### EXAMPLE 1
```powershell
New-KrLogger | Add-KrEnrichProcessName | Register-KrLogger
```

## PARAMETERS

### -loggerConfig
Instance of LoggerConfiguration

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### LoggerConfiguration object allowing method chaining
## NOTES

## RELATED LINKS
