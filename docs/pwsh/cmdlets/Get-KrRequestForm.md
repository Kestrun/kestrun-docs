---
layout: default
parent: PowerShell Cmdlets
title: Get-KrRequestForm
nav_order: 65
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrRequestForm

## SYNOPSIS
Retrieves a request form value from the HTTP request.

## SYNTAX

```
Get-KrRequestForm [<CommonParameters>]
```

## DESCRIPTION
This function accesses the current HTTP request context and retrieves the value
of the request form.

## EXAMPLES

### EXAMPLE 1
```powershell
$value = Get-KrRequestForm
Retrieves the value of the request form from the HTTP request.
```

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Returns the value of the request form, or $null if not found.
## NOTES
This function is designed to be used in the context of a Kestrun server response.

## RELATED LINKS
