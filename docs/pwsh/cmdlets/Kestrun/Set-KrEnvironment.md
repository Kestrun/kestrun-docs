---
layout: default
parent: PowerShell Cmdlets
nav_order: 178
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Set-KrEnvironment
---

# Set-KrEnvironment

## SYNOPSIS

Sets the Kestrun environment for the current PowerShell session.

## SYNTAX

### __AllParameterSets

```powershell
Set-KrEnvironment [-Name] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Sets the Kestrun environment for the current PowerShell session.
This affects how Kestrun behaves, for example in terms of error handling and logging.

## EXAMPLES

### EXAMPLE 1

Set-KrEnvironment -Name 'Development'
Sets the Kestrun environment to 'Development'.
This enables detailed error messages and logging for development purposes.

### EXAMPLE 2

Set-KrEnvironment -Name 'Production'
Sets the Kestrun environment to 'Production'.
This enables optimized settings for a production environment.

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

### -Name

The name of the environment to set.
Valid values are 'Development', 'Staging', and 'Production'.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
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

### The name of the currently set environment after applying the change.

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
