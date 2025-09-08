---
layout: default
parent: PowerShell Cmdlets
title: Initialize-KrRoot
nav_order: 72
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Initialize-KrRoot

## SYNOPSIS
Initializes the Kestrun root directory for path resolution.

## SYNTAX

```
Initialize-KrRoot [-Path] <String> [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This function sets the Kestrun root directory, which is used as a base for resolving relative paths in Kestrun applications.
It is typically called during the initialization phase of a Kestrun application.
This function should be called before any other Kestrun commands that rely on the root directory being set.

## EXAMPLES

### EXAMPLE 1
```powershell
Initialize-KrRoot -Path "C:\Kestrun"
Sets the Kestrun root directory to "C:\Kestrun".
```

### EXAMPLE 2
```powershell
Initialize-KrRoot -Path "~/Kestrun"
Sets the Kestrun root directory to the user's home directory.
```

### EXAMPLE 3
```powershell
Initialize-KrRoot -Path "D:\Projects\Kestrun"
Sets the Kestrun root directory to "D:\Projects\Kestrun".
```

### EXAMPLE 4
```powershell
Initialize-KrRoot -Path "C:\Kestrun" -PassThru
Returns the absolute path to the Kestrun root directory.
```

## PARAMETERS

### -Path
The path to the Kestrun root directory.

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

### -PassThru
If specified, the cmdlet will return the absolute path to the Kestrun root directory after setting it.

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

### [string] The absolute path to the Kestrun root directory.
## NOTES
This function is designed to be used in the context of a Kestrun server to ensure consistent path resolution.

## RELATED LINKS
