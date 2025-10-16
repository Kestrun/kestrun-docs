---
layout: default
parent: PowerShell Cmdlets
title: Stop-KrTask
nav_order: 147
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Stop-KrTask

## SYNOPSIS
Requests cancellation for a running task.

## SYNTAX

```
Stop-KrTask [[-Server] <KestrunHost>] [-Id] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Signals the Kestrun Task service to cancel the specified task.

## EXAMPLES

### EXAMPLE 1
```powershell
Stop-KrTask -Id 'task-id'
Requests cancellation for the specified task.
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
Task id to cancel.

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
Cancellation is cooperative; the task script must periodically check for cancellation and stop itself.
Returns $true if the task was found and cancellation was requested; $false if the task was not found or could not be cancelled.
If the task is already completed, cancellation will not be requested and $false will be returned.
Cancellation may not be immediate; the task may take some time to stop after cancellation is requested.
If the task does not support cancellation, it will continue to run until completion.
This cmdlet supports ShouldProcess for confirmation prompts.

## RELATED LINKS
