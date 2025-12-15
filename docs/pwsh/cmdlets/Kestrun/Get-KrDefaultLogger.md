---
layout: default
parent: PowerShell Cmdlets
nav_order: 93
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Get-KrDefaultLogger
---

# Get-KrDefaultLogger

## SYNOPSIS

Gets the logger for the current session.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrDefaultLogger [-Name] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Gets the specified logger as the current logger for the session.

## EXAMPLES

### EXAMPLE 1

$logger = Get-KrDefaultLogger
Retrieves the current default logger instance for the session.

### EXAMPLE 2

$logger = Get-KrDefaultLogger | Write-Host
Retrieves the current default logger instance and outputs it to the console.

## PARAMETERS

### -Name

The name of the logger to get as the default logger.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Returns the current default logger instance for the session.
When the Name parameter is specified

{{ Fill in the Description }}

### Serilog.ILogger

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun logging framework and is used to retrieve the current default logger instance for the session.
It can be used in scripts and modules that utilize Kestrun for logging.


## RELATED LINKS

{{ Fill in the related links here }}
