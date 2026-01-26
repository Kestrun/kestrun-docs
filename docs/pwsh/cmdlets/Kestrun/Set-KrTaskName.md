---
layout: default
parent: PowerShell Cmdlets
nav_order: 193
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Set-KrTaskName
---

# Set-KrTaskName

## SYNOPSIS

Sets the name and/or description of a task.

## SYNTAX

### __AllParameterSets

```powershell
Set-KrTaskName [[-Server] <KestrunHost>] [-Id] <string> [[-Name] <string>] [[-Description] <string>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function sets the human-friendly name and/or description of a task identified by its id.

## EXAMPLES

### EXAMPLE 1

Set-KrTaskName -Id 'task-id' -Name 'My Task'
This command sets the name of the specified task to 'My Task'.

### EXAMPLE 2

Set-KrTaskName -Id 'task-id' -Description 'This is a sample task.'
This command sets the description of the specified task.

### EXAMPLE 3

Set-KrTaskName -Id 'task-id' -Name 'My Task' -Description 'This is a sample task.'
This command sets both the name and description of the specified task.

## PARAMETERS

### -Description

The new description for the task.
This parameter is optional but at least one of Name or Description must be provided.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Id

The id of the task to update.
This parameter is mandatory.

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

### -Name

The new name for the task.
This parameter is optional but at least one of Name or Description must be provided.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
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

## NOTES

At least one of the Name or Description parameters must be provided and non-empty.
If the specified task id does not exist, an error will be thrown.


## RELATED LINKS

{{ Fill in the related links here }}
