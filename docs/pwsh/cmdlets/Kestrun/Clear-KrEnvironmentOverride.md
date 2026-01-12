---
layout: default
parent: PowerShell Cmdlets
nav_order: 79
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Clear-KrEnvironmentOverride
---

# Clear-KrEnvironmentOverride

## SYNOPSIS

Clears any Kestrun environment override for the current PowerShell session.

## SYNTAX

### __AllParameterSets

```powershell
Clear-KrEnvironmentOverride [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Clears any Kestrun environment override for the current PowerShell session.
This reverts Kestrun to use the default environment, which is 'Production' unless
changed by the KESTRUN_ENVIRONMENT environment variable.

## EXAMPLES

### EXAMPLE 1

Clear-KrEnvironmentOverride
Clears any Kestrun environment override, reverting to the default environment.
This is useful for resetting the environment after running tests or examples.

## PARAMETERS

### -Confirm

Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- cf
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

### -WhatIf

Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- wi
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

### System.String

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
