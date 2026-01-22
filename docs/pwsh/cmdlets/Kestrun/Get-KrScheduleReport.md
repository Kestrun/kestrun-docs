---
layout: default
parent: PowerShell Cmdlets
nav_order: 114
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Get-KrScheduleReport
---

# Get-KrScheduleReport

## SYNOPSIS

Returns the full schedule report.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrScheduleReport [[-Server] <KestrunHost>] [[-TimeZoneId] <string>] [-AsHashtable]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function retrieves the current schedule report, including all scheduled jobs and their next run times.

## EXAMPLES

### EXAMPLE 1

Get-KrScheduleReport -Server $myServer
Retrieves the schedule report from the specified Kestrun server.

### EXAMPLE 2

Get-KrScheduleReport -Server $myServer -TimeZoneId "Europe/Berlin"
Retrieves the schedule report with timestamps converted to the specified time zone.

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
  Position: 1
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

### Kestrun.Scheduling.ScheduleReport

{{ Fill in the Description }}

### System.Collections.Hashtable

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
