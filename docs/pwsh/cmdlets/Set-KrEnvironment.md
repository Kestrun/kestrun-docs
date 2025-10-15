---
layout: default
parent: PowerShell Cmdlets
title: Set-KrEnvironment
nav_order: 127
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrEnvironment

## SYNOPSIS
Sets the Kestrun environment for the current PowerShell session.

## SYNTAX

```
Set-KrEnvironment [-Name] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Sets the Kestrun environment for the current PowerShell session.
This affects how Kestrun behaves, for example in terms of error handling and logging.

## EXAMPLES

### EXAMPLE 1
```powershell
Set-KrEnvironment -Name 'Development'
Sets the Kestrun environment to 'Development'.
This enables detailed error messages and logging for development purposes.
```

### EXAMPLE 2
```powershell
Set-KrEnvironment -Name 'Production'
Sets the Kestrun environment to 'Production'.
This enables optimized settings for a production environment.
```

## PARAMETERS

### -Name
The name of the environment to set.
Valid values are 'Development', 'Staging', and 'Production'.

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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### The name of the currently set environment after applying the change.
## NOTES

## RELATED LINKS
