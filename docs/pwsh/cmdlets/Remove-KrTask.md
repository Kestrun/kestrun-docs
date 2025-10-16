---
layout: default
parent: PowerShell Cmdlets
title: Remove-KrTask
nav_order: 124
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Remove-KrTask

## SYNOPSIS
Removes a finished task from the registry.

## SYNTAX

```
Remove-KrTask [[-Server] <KestrunHost>] [-Id] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Deletes a task after it has completed/faulted/cancelled; does not cancel.

## EXAMPLES

### EXAMPLE 1
```powershell
Remove-KrTask -Id 'task-id'
Removes the specified task.
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
Task id to remove.

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
A task can only be removed if it is in a final state (Completed, Failed, Stopped).
Returns $true if the task was found and removed; $false if the task was not found or could not be removed.
This cmdlet supports ShouldProcess for confirmation prompts.

## RELATED LINKS
