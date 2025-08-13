---
title: Get-KrScheduleSnapshot
nav_order: 61
render_with_liquid: false
---
---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Get-KrScheduleSnapshot

## SYNOPSIS
Returns a snapshot of the current schedule.

## SYNTAX

```
Get-KrScheduleSnapshot [[-Server] <KestrunHost>] [[-Name] <String[]>] [[-TimeZoneId] <String>] [-AsHashtable]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
This function retrieves the current schedule snapshot, including all scheduled jobs and their next run times.

## EXAMPLES

### EXAMPLE 1
```
Get-KrScheduleSnapshot -Server $myServer
Retrieves the schedule snapshot from the specified Kestrun server.
```

### EXAMPLE 2
```
Get-KrScheduleSnapshot -Server $myServer -Name 'Cache'
Retrieves the schedule snapshot for the job named 'Cache'.
```

### EXAMPLE 3
```
Get-KrScheduleSnapshot -Server $myServer -TimeZoneId "Europe/Berlin"
Retrieves the schedule snapshot with timestamps converted to the specified time zone.
```

### EXAMPLE 4
```
Get-KrScheduleSnapshot -Name 'ps-*' -TimeZoneId 'Pacific Standard Time'
Retrieves all jobs matching the pattern 'ps-*' with timestamps converted to Pacific Standard Time.
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

### -Name
Optional job name filter.
If specified, only jobs matching the name will be returned.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
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
Position: 3
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

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

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

### Returns a ScheduleReport object or a hashtable if AsHashtable is set.
## NOTES

## RELATED LINKS
