---
layout: default
parent: PowerShell Cmdlets
nav_order: 94
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Get-KrBuiltTargetFrameworkVersion
---

# Get-KrBuiltTargetFrameworkVersion

## SYNOPSIS

Gets the target framework version that Kestrun was built against.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrBuiltTargetFrameworkVersion [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet retrieves the target framework version that the Kestrun runtime was built against.
This information can be useful for understanding the capabilities and features available in the current Kestrun runtime environment.

## EXAMPLES

### EXAMPLE 1

Get-KrBuiltTargetFrameworkVersion
This example retrieves the target framework version that Kestrun was built against.
The output will be a Version object representing the target framework version.

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Version

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
