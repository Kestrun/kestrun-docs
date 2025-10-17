---
layout: default
parent: PowerShell Cmdlets
title: Get-KrTaskState
nav_order: 101
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrTaskState

## SYNOPSIS
Gets the state of a task by id.

## SYNTAX

```
Get-KrTaskState [[-Server] <KestrunHost>] [-Id] <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the task state string for the specified task id.

## EXAMPLES

### EXAMPLE 1
```powershell
Get-KrTaskState -Id 'task-id'
Returns the state of the specified task as a [Kestrun.Tasks.TaskState] object.
```

## PARAMETERS

### -Server
The Kestrun server instance.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Id
Task id to query.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### [Kestrun.Tasks.TaskState]
## NOTES

## RELATED LINKS
