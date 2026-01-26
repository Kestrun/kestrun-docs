---
layout: default
parent: PowerShell Cmdlets
nav_order: 100
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Get-KrEnvironment
---

# Get-KrEnvironment

## SYNOPSIS

Gets the current Kestrun environment for the PowerShell session.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrEnvironment [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Gets the current Kestrun environment for the PowerShell session.
This reflects how Kestrun behaves, for example in terms of error handling and logging.

## EXAMPLES

### EXAMPLE 1

Get-KrEnvironment
Returns the current Kestrun environment, e.g. 'Development'.
This reflects how Kestrun behaves, for example in terms of error handling and logging.

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
