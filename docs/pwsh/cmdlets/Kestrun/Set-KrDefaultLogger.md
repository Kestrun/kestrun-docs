---
layout: default
parent: PowerShell Cmdlets
nav_order: 180
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Set-KrDefaultLogger
---

# Set-KrDefaultLogger

## SYNOPSIS

Sets the logger for the current session.

## SYNTAX

### __AllParameterSets

```powershell
Set-KrDefaultLogger [-Name] <string> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Sets the specified logger as the current logger for the session.

## EXAMPLES

### EXAMPLE 1

Set-KrDefaultLogger -Logger $myLogger
PS> $myLogger | Set-KrDefaultLogger
Sets the specified logger as the current logger for the session.

### EXAMPLE 2

$myLogger | Set-KrDefaultLogger
Sets the specified logger as the current logger for the session.

## PARAMETERS

### -Name

The name of the logger to set as the default logger.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
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

### Instance of Serilog.ILogger

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## OUTPUTS

### None. This cmdlet does not return any output.

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
