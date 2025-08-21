---
layout: default
parent: PowerShell Cmdlets
title: New-KrLogger
nav_order: 74
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# New-KrLogger

## SYNOPSIS
Creates a new instance of Serilog.LoggerConfiguration.

## SYNTAX

```
New-KrLogger [<CommonParameters>]
```

## DESCRIPTION
Creates a new instance of Serilog.LoggerConfiguration that can be used to configure logging sinks and enrichers.

## EXAMPLES

### EXAMPLE 1
```powershell
$loggerConfig = New-KrLogger
Creates a new logger configuration instance that can be used to add sinks and enrichers.
```

### EXAMPLE 2
```powershell
$loggerConfig = New-KrLogger | Add-KrSinkConsole | Add-KrEnrichWithProperty -Name 'ScriptName' -Value 'Test'
Creates a new logger configuration instance, adds a console sink, and enriches logs with a property.
```

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None. You cannot pipe objects to New-KrLogger.
## OUTPUTS

### Instance of Serilog.LoggerConfiguration.
## NOTES

## RELATED LINKS
