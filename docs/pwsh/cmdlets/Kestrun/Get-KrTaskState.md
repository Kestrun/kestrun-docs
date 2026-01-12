---
layout: default
parent: PowerShell Cmdlets
nav_order: 124
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Get-KrTaskState
---

# Get-KrTaskState

## SYNOPSIS

Gets the state of a task by id.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrTaskState [[-Server] <KestrunHost>] [-Id] <string> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Returns the task state string for the specified task id.

## EXAMPLES

### EXAMPLE 1

Get-KrTaskState -Id 'task-id'
Returns the state of the specified task as a [Kestrun.Tasks.TaskState] object.

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
  Position: 1
  IsRequired: true
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
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
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

### [Kestrun.Tasks.TaskState]

{{ Fill in the Description }}

### Kestrun.Tasks.TaskState

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
