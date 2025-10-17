---
layout: default
parent: PowerShell Cmdlets
title: Test-KrDebugContext
nav_order: 154
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Test-KrDebugContext

## SYNOPSIS
Tests if the current PowerShell session is in a debugging context.

## SYNTAX

```
Test-KrDebugContext [-IgnorePSDebugContext] [-IgnoreHostDebuggerEnabled] [<CommonParameters>]
```

## DESCRIPTION
Tests if the current PowerShell session is in a debugging context.
This is determined by checking if a managed debugger is attached,

## EXAMPLES

### EXAMPLE 1
```powershell
Test-KrDebugContext
Returns $true if a managed debugger is attached, the -Debug switch is used,
or the KESTRUN_DEBUG environment variable is set to a truthy value; otherwise, $false.
```

## PARAMETERS

### -IgnorePSDebugContext
If set, ignores whether the session is currently paused at a breakpoint or step.

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

### -IgnoreHostDebuggerEnabled
If set, ignores whether the host's debugger is enabled (e.g., in VS Code).

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

### System.Boolean
## NOTES

## RELATED LINKS
