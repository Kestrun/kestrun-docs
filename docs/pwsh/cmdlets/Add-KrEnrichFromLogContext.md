---
layout: default
parent: PowerShell Cmdlets
title: Add-KrEnrichFromLogContext
nav_order: 8
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.defaultfilesoptions?view=aspnetcore-8.0
schema: 2.0.0
---

# Add-KrEnrichFromLogContext

## SYNOPSIS
Enriches log events with properties from LogContext

## SYNTAX

```
Add-KrEnrichFromLogContext [-LoggerConfig] <LoggerConfiguration> [<CommonParameters>]
```

## DESCRIPTION
Enriches log events with properties from LogContext.
Use Push-LogContextProp to add properties.

## EXAMPLES

### EXAMPLE 1
```powershell
New-KrLogger | Add-KrEnrichFromLogContext | Add-KrSinkConsole | Register-KrLogger
```

## PARAMETERS

### -LoggerConfig
Instance of LoggerConfiguration that is already setup.

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

### Instance of LoggerConfiguration
## OUTPUTS

### Instance of LoggerConfiguration
## NOTES

## RELATED LINKS
