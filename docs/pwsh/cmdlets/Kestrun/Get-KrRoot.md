---
layout: default
parent: PowerShell Cmdlets
nav_order: 116
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Get-KrRoot
---

# Get-KrRoot

## SYNOPSIS

Retrieves the Kestrun root directory.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrRoot [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function returns the path to the Kestrun root directory, which is used as a base for resolving relative paths in Kestrun applications.

## EXAMPLES

### EXAMPLE 1

$kestrunRoot = get-KrRoot
Retrieves the Kestrun root directory and stores it in the variable $kestrunRoot.

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

This function is designed to be used in the context of a Kestrun server to ensure consistent path resolution.


## RELATED LINKS

{{ Fill in the related links here }}
