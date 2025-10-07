---
layout: default
parent: PowerShell Cmdlets
title: Get-KrBuiltTargetFrameworkVersion
nav_order: 66
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrBuiltTargetFrameworkVersion

## SYNOPSIS
Gets the target framework version that Kestrun was built against.

## SYNTAX

```
Get-KrBuiltTargetFrameworkVersion [<CommonParameters>]
```

## DESCRIPTION
This cmdlet retrieves the target framework version that the Kestrun runtime was built against.
This information can be useful for understanding the capabilities and features available in the current Kestrun runtime environment.

## EXAMPLES

### EXAMPLE 1
```powershell
Get-KrBuiltTargetFrameworkVersion
This example retrieves the target framework version that Kestrun was built against.
The output will be a Version object representing the target framework version.
```

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Version
## NOTES

## RELATED LINKS
