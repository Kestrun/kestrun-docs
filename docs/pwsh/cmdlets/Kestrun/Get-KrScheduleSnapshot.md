---
layout: default
parent: PowerShell Cmdlets
nav_order: 118
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Get-KrScheduleSnapshot
---

# Get-KrScheduleSnapshot

## SYNOPSIS

Returns a snapshot of the current schedule.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrScheduleSnapshot [[-Server] <KestrunHost>] [[-Name] <string[]>] [[-TimeZoneId] <string>]
 [-AsHashtable] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function retrieves the current schedule snapshot, including all scheduled jobs and their next run times.

## EXAMPLES

### EXAMPLE 1

Get-KrScheduleSnapshot -Server $myServer
Retrieves the schedule snapshot from the specified Kestrun server.

### EXAMPLE 2

Get-KrScheduleSnapshot -Server $myServer -Name 'Cache'
Retrieves the schedule snapshot for the job named 'Cache'.

### EXAMPLE 3

Get-KrScheduleSnapshot -Server $myServer -TimeZoneId "Europe/Berlin"
Retrieves the schedule snapshot with timestamps converted to the specified time zone.

### EXAMPLE 4

Get-KrScheduleSnapshot -Name 'ps-*' -TimeZoneId 'Pacific Standard Time'
Retrieves all jobs matching the pattern 'ps-*' with timestamps converted to Pacific Standard Time.

## PARAMETERS

### -AsHashtable

If set, returns a hashtable instead of a ScheduleReport object.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Name

Optional job name filter.
If specified, only jobs matching the name will be returned.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun host object containing the scheduler.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TimeZoneId

Optional Windows / IANA time-zone id to convert timestamps.
Example: "Pacific Standard Time"  or  "Europe/Berlin"

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### Returns a ScheduleReport object or a hashtable if AsHashtable is set.

{{ Fill in the Description }}

### Kestrun.Scheduling.JobInfo

{{ Fill in the Description }}

### System.Collections.Hashtable

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
