---
layout: default
parent: PowerShell Cmdlets
title: Get-KrTask
nav_order: 99
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrTask

## SYNOPSIS
Gets the status or result of a task by id.

## SYNTAX

### Default (Default)
```
Get-KrTask [-Server <KestrunHost>] [-Id <String>] [<CommonParameters>]
```

### State
```
Get-KrTask [-Server <KestrunHost>] [-Id <String>] [-State] [<CommonParameters>]
```

## DESCRIPTION
Without -Detailed returns task state; with -Detailed returns TaskResult snapshot.

## EXAMPLES

### EXAMPLE 1
```powershell
Get-KrTask -Id 'task-id'
```

Returns the current state of the specified task.

### EXAMPLE 2
```powershell
Get-KrTask -Id 'task-id' -Detailed
Returns the detailed result of the specified task.
```

### EXAMPLE 3
```powershell
Get-KrTask
```

Returns a list of all tasks with their current states.

## PARAMETERS

### -Server
The Kestrun server instance.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
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

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -State
When present, return only the task state string.

```yaml
Type: SwitchParameter
Parameter Sets: State
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

### When -Detailed is specified, returns a [Kestrun.Tasks.TaskResult] object; otherwise returns a string with the task state.
### When Id is not specified, returns an array of [Kestrun.Tasks.TaskResult] objects for all tasks.
## NOTES

## RELATED LINKS
