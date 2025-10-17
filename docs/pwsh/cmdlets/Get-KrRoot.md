---
layout: default
parent: PowerShell Cmdlets
title: Get-KrRoot
nav_order: 89
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrRoot

## SYNOPSIS
Retrieves the Kestrun root directory.

## SYNTAX

```
Get-KrRoot [<CommonParameters>]
```

## DESCRIPTION
This function returns the path to the Kestrun root directory, which is used as a base for resolving relative paths in Kestrun applications.

## EXAMPLES

### EXAMPLE 1
```powershell
$kestrunRoot = get-KrRoot
Retrieves the Kestrun root directory and stores it in the variable $kestrunRoot.
```

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String
## NOTES
This function is designed to be used in the context of a Kestrun server to ensure consistent path resolution.

## RELATED LINKS
