---
layout: default
parent: PowerShell Cmdlets
nav_order: 117
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Get-KrTask
---

# Get-KrTask

## SYNOPSIS

Gets the status or result of a task by id.

## SYNTAX

### State

```powershell
Get-KrTask [-Server <KestrunHost>] [-Id <string>] [-State] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Without -Detailed returns task state; with -Detailed returns TaskResult snapshot.

## EXAMPLES

### EXAMPLE 1

Get-KrTask -Id 'task-id'

Returns the current state of the specified task.

### EXAMPLE 2

Get-KrTask -Id 'task-id' -Detailed
Returns the detailed result of the specified task.

### EXAMPLE 3

Get-KrTask

Returns a list of all tasks with their current states.

## PARAMETERS

### -Id

Task id to query.

```yaml
Type: System.String
DefaultValue: ''
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

### -Server

The Kestrun server instance.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -State

When present, return only the task state string.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: State
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

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### When -Detailed is specified

{{ Fill in the Description }}

### Kestrun.Tasks.KrTask

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
