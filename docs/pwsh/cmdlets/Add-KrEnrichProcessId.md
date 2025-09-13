---
layout: default
parent: PowerShell Cmdlets
title: Add-KrEnrichProcessId
nav_order: 15
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrEnrichProcessId

## SYNOPSIS
Adds the process ID to the log context.

## SYNTAX

```
Add-KrEnrichProcessId [-loggerConfig] <LoggerConfiguration> [<CommonParameters>]
```

## DESCRIPTION
Adds the process ID to the log context, allowing it to be included in log events.

## EXAMPLES

### EXAMPLE 1
```powershell
New-KrLogger | Add-KrEnrichProcessId | Register-KrLogger
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
This function is part of the Kestrun logging infrastructure and should be used to enrich log events with process information.
https://github.com/serilog/serilog-enrichers-process

## RELATED LINKS
