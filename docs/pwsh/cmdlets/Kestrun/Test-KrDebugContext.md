---
layout: default
parent: PowerShell Cmdlets
nav_order: 188
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Test-KrDebugContext
---

# Test-KrDebugContext

## SYNOPSIS

Tests if the current PowerShell session is in a debugging context.

## SYNTAX

### __AllParameterSets

```powershell
Test-KrDebugContext [-IgnorePSDebugContext] [-IgnoreHostDebuggerEnabled] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Tests if the current PowerShell session is in a debugging context.
This is determined by checking if a managed debugger is attached,

## EXAMPLES

### EXAMPLE 1

Test-KrDebugContext
Returns $true if a managed debugger is attached, the -Debug switch is used,
or the KESTRUN_DEBUG environment variable is set to a truthy value; otherwise, $false.

## PARAMETERS

### -IgnoreHostDebuggerEnabled

If set, ignores whether the host's debugger is enabled (e.g., in VS Code).

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IgnorePSDebugContext

If set, ignores whether the session is currently paused at a breakpoint or step.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Boolean

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
