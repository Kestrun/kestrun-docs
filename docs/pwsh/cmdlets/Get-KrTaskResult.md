---
layout: default
parent: PowerShell Cmdlets
title: Get-KrTaskResult
nav_order: 98
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrTaskResult

## SYNOPSIS
Gets the detailed result of a task by id.

## SYNTAX

```
Get-KrTaskResult [[-Server] <KestrunHost>] [-Id] <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a TaskResult snapshot for the specified task id.

## EXAMPLES

### EXAMPLE 1
```powershell
Get-KrTaskResult -Id 'task-id'
Returns the detailed result of the specified task.
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

### Returns a [object].
## NOTES

## RELATED LINKS
