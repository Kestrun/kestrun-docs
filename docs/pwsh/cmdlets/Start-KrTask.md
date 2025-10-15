---
layout: default
parent: PowerShell Cmdlets
title: Start-KrTask
nav_order: 141
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Start-KrTask

## SYNOPSIS
Starts a previously created task by id.

## SYNTAX

```
Start-KrTask [[-Server] <KestrunHost>] [-Id] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Transitions the task from Created state to Running.

## EXAMPLES

### EXAMPLE 1
```powershell
Start-KrTask -Id 'task-id'
Starts the specified task.
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
Task id to start.

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

### System.Boolean
## NOTES
Requires the Kestrun Task service to be added to the server via Add-KrTasksService.
Returns $true if the task was found and started; $false if the task was not found or could not be started.
A task can only be started once; subsequent attempts to start a task will return $false.
Starting a task is asynchronous; the task will run in the background after being started.
Use Get-KrTask or Get-KrTaskState to monitor the task state.

## RELATED LINKS
