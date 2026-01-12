---
layout: default
parent: PowerShell Cmdlets
nav_order: 120
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Get-KrSinkJsonFormatter
---

# Get-KrSinkJsonFormatter

## SYNOPSIS

Returns new instance of Serilog.Formatting.Json.JsonFormatter.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrSinkJsonFormatter [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Returns new instance of Serilog.Formatting.Json.JsonFormatter that can be used with File or Console sink.

## EXAMPLES

### EXAMPLE 1

New-KrLogger | Add-KrSinkFile -Path 'C:\Data\Log\test.log' -Formatter (Get-KrSinkJsonFormatter) | Register-KrLogger

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Instance of Serilog.Formatting.Json.JsonFormatter

{{ Fill in the Description }}

### Serilog.Formatting.Json.JsonFormatter

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
