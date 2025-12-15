---
layout: default
parent: PowerShell Cmdlets
nav_order: 104
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Get-KrRequestForm
---

# Get-KrRequestForm

## SYNOPSIS

Retrieves a request form value from the HTTP request.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrRequestForm [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function accesses the current HTTP request context and retrieves the value
of the request form.

## EXAMPLES

### EXAMPLE 1

$value = Get-KrRequestForm
Retrieves the value of the request form from the HTTP request.

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Returns the value of the request form

{{ Fill in the Description }}

## NOTES

This function is designed to be used in the context of a Kestrun server response.


## RELATED LINKS

{{ Fill in the related links here }}
