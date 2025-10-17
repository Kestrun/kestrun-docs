---
layout: default
parent: PowerShell Cmdlets
title: Clear-KrEnvironmentOverride
nav_order: 63
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Clear-KrEnvironmentOverride

## SYNOPSIS
Clears any Kestrun environment override for the current PowerShell session.

## SYNTAX

```
Clear-KrEnvironmentOverride [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Clears any Kestrun environment override for the current PowerShell session.
This reverts Kestrun to use the default environment, which is 'Production' unless
changed by the KESTRUN_ENVIRONMENT environment variable.

## EXAMPLES

### EXAMPLE 1
```powershell
Clear-KrEnvironmentOverride
Clears any Kestrun environment override, reverting to the default environment.
This is useful for resetting the environment after running tests or examples.
```

## PARAMETERS

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

## NOTES

## RELATED LINKS
