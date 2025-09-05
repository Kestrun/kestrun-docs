---
layout: default
parent: PowerShell Cmdlets
title: Set-KrSharedState
nav_order: 93
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrSharedState

## SYNOPSIS
Defines or updates a global variable accessible across Kestrun scripts.

## SYNTAX

```
Set-KrSharedState [-Name] <String> [-Value] <Object> [-AllowsValueType] [<CommonParameters>]
```

## DESCRIPTION
Stores a value in the Kestrun global variable table.
Variables may be marked
as read-only to prevent accidental modification.
If the variable already exists, its value is updated.
If it does not exist,
it is created.

## EXAMPLES

### EXAMPLE 1
```powershell
Set-KrSharedState -Name "MyVariable" -Value "Hello, World!"
This creates a global variable "MyVariable" with the value "Hello, World!".
```

### EXAMPLE 2
```powershell
Set-KrSharedState -Name "MyNamespace.MyVariable" -Value @{item=42}
This creates a global variable "MyNamespace.MyVariable" with the value @{item=42}.
```

## PARAMETERS

### -Name
Name of the variable to create or update.

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

### -Value
Value to assign to the variable.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowsValueType
If specified, allows the variable to hold value types (e.g., int, bool).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Kestrun.Hosting.KestrunHost
## NOTES
This function is part of the Kestrun.SharedState module and is used to define or update global variables.

## RELATED LINKS
