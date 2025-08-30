---
layout: default
parent: PowerShell Cmdlets
title: Resume-KrSchedule
nav_order: 86
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Resume-KrSchedule

## SYNOPSIS
Resumes a previously-paused schedule.

## SYNTAX

```
Resume-KrSchedule [[-Server] <KestrunHost>] [-Name] <String> [<CommonParameters>]
```

## DESCRIPTION
This function resumes a scheduled task that was previously paused.

## EXAMPLES

### EXAMPLE 1
```powershell
Resume-KrSchedule -Name 'ps-inline'
Resumes the schedule named 'ps-inline'.
```

## PARAMETERS

### -Server
The Kestrun host object that manages the schedule.

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

### -Name
The name of the schedule to resume.

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

### Returns the Kestrun host object after resuming the schedule.
## NOTES
This function is part of the Kestrun scheduling module.

## RELATED LINKS
