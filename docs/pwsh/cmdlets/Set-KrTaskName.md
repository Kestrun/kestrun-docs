---
layout: default
parent: PowerShell Cmdlets
title: Set-KrTaskName
nav_order: 143
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrTaskName

## SYNOPSIS
Sets the name and/or description of a task.

## SYNTAX

```
Set-KrTaskName [[-Server] <KestrunHost>] [-Id] <String> [[-Name] <String>] [[-Description] <String>]
 [<CommonParameters>]
```

## DESCRIPTION
This function sets the human-friendly name and/or description of a task identified by its id.

## EXAMPLES

### EXAMPLE 1
```powershell
Set-KrTaskName -Id 'task-id' -Name 'My Task'
This command sets the name of the specified task to 'My Task'.
```

### EXAMPLE 2
```powershell
Set-KrTaskName -Id 'task-id' -Description 'This is a sample task.'
This command sets the description of the specified task.
```

### EXAMPLE 3
```powershell
Set-KrTaskName -Id 'task-id' -Name 'My Task' -Description 'This is a sample task.'
This command sets both the name and description of the specified task.
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
The id of the task to update.
This parameter is mandatory.

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

### -Name
The new name for the task.
This parameter is optional but at least one of Name or Description must be provided.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
The new description for the task.
This parameter is optional but at least one of Name or Description must be provided.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
At least one of the Name or Description parameters must be provided and non-empty.
If the specified task id does not exist, an error will be thrown.

## RELATED LINKS
