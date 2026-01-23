---
layout: default
parent: PowerShell Cmdlets
nav_order: 142
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: New-KrLogger
---

# New-KrLogger

## SYNOPSIS

Creates a new instance of Serilog.LoggerConfiguration.

## SYNTAX

### __AllParameterSets

```powershell
New-KrLogger [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Creates a new instance of Serilog.LoggerConfiguration that can be used to configure logging sinks and enrichers.

## EXAMPLES

### EXAMPLE 1

$loggerConfig = New-KrLogger
Creates a new logger configuration instance that can be used to add sinks and enrichers.

### EXAMPLE 2

$loggerConfig = New-KrLogger | Add-KrSinkConsole | Add-KrEnrichProperty -Name 'ScriptName' -Values 'Test'
    Creates a new logger configuration instance, adds a console sink, and enriches logs with a property.

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None. You cannot pipe objects to New-KrLogger.

{{ Fill in the Description }}

## OUTPUTS

### Instance of Serilog.LoggerConfiguration.

{{ Fill in the Description }}

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
