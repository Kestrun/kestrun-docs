---
layout: default
parent: PowerShell Cmdlets
nav_order: 196
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Suspend-KrSchedule
---

# Suspend-KrSchedule

## SYNOPSIS

Suspends a schedule, preventing it from running until resumed.

## SYNTAX

### __AllParameterSets

```powershell
Suspend-KrSchedule [[-Server] <KestrunHost>] [-Name] <string> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function pauses a scheduled task, allowing it to be resumed later.

## EXAMPLES

### EXAMPLE 1

Suspend-KrSchedule -Name 'ps-inline'
Suspends the schedule named 'ps-inline'.

## PARAMETERS

### -Name

The name of the schedule to suspend.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun host object that manages the schedule.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### Returns the Kestrun host object after suspending the schedule.

{{ Fill in the Description }}

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun scheduling module.


## RELATED LINKS

{{ Fill in the related links here }}
