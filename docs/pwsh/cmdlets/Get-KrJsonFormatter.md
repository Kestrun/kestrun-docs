---
layout: default
parent: PowerShell Cmdlets
title: Get-KrJsonFormatter
nav_order: 56
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Get-KrJsonFormatter

## SYNOPSIS
Returns new instance of Serilog.Formatting.Json.JsonFormatter.

## SYNTAX

```
Get-KrJsonFormatter [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Returns new instance of Serilog.Formatting.Json.JsonFormatter that can be used with File or Console sink.

## EXAMPLES

### EXAMPLE 1
```
New-KrLogger | Add-KrSinkFile -Path 'C:\Data\Log\test.log' -Formatter (Get-KrJsonFormatter) | Register-KrLogger
```

## PARAMETERS



### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### Instance of Serilog.Formatting.Json.JsonFormatter
## NOTES

## RELATED LINKS
