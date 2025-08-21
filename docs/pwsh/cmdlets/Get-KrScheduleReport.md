---
layout: default
parent: PowerShell Cmdlets
title: Get-KrScheduleReport
nav_order: 65
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrScheduleReport

## SYNOPSIS
Returns the full schedule report.

## SYNTAX

```
Get-KrScheduleReport [[-Server] <KestrunHost>] [[-TimeZoneId] <String>] [-AsHashtable] [<CommonParameters>]
```

## DESCRIPTION
This function retrieves the current schedule report, including all scheduled jobs and their next run times.

## EXAMPLES

### EXAMPLE 1
```powershell
Get-KrScheduleReport -Server $myServer
Retrieves the schedule report from the specified Kestrun server.
```

### EXAMPLE 2
```powershell
Get-KrScheduleReport -Server $myServer -TimeZoneId "Europe/Berlin"
Retrieves the schedule report with timestamps converted to the specified time zone.
```

## PARAMETERS

### -Server
The Kestrun host object containing the scheduler.

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

### -TimeZoneId
Optional Windows / IANA time-zone id to convert timestamps.
Example: "Pacific Standard Time"  or  "Europe/Berlin"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AsHashtable
If set, returns a hashtable instead of a ScheduleReport object.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
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

### Returns a ScheduleReport object or a hashtable if AsHashtable is set.
## NOTES

## RELATED LINKS
