---
layout: default
parent: PowerShell Cmdlets
title: Get-KrSharedState
nav_order: 68
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrSharedState

## SYNOPSIS
Retrieves the value of a previously defined global variable.

## SYNTAX

```
Get-KrSharedState [-Name] <String> [<CommonParameters>]
```

## DESCRIPTION
Looks up a variable in the Kestrun global variable table and returns its
value.
If the variable does not exist, \`$null\` is returned.

## EXAMPLES

### EXAMPLE 1
```powershell
Get-KrSharedState -Name "MyVariable"
This retrieves the value of the global variable "MyVariable".
```

## PARAMETERS

### -Name
Name of the variable to retrieve.
This should be the fully qualified name of the variable, including any
namespaces.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
This function is part of the Kestrun.SharedState module and is used to retrieve the value of global variables.

## RELATED LINKS
