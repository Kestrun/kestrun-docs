---
layout: default
parent: PowerShell Cmdlets
nav_order: 142
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: New-KrProbeResult
---

# New-KrProbeResult

## SYNOPSIS

Creates a new Kestrun health ProbeResult object.

## SYNTAX

### __AllParameterSets

```powershell
New-KrProbeResult [-Status] <string> [-Description] <string> [[-Data] <hashtable>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Simplifies constructing a [Kestrun.Health.ProbeResult] from PowerShell without using the
raw static ::new() syntax.
Accepts status, description, and an optional hashtable of data
which is converted to a strongly typed Dictionary[string, object].
Returns the created
ProbeResult for piping back to Add-KrHealthProbe script blocks or custom logic.

## EXAMPLES

### EXAMPLE 1

New-KrProbeResult -Status Healthy -Description 'Cache OK'

### EXAMPLE 2

New-KrProbeResult Degraded 'Latency high' -Data @{ p95 = 180; threshold = 150 }

## PARAMETERS

### -Data

Optional hashtable of additional metrics/values (serialized into response JSON).

```yaml
Type: System.Collections.Hashtable
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

### -Description

Short human readable description for diagnostics.

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

### -Status

Health status.
Accepts Healthy, Degraded, or Unhealthy (case-insensitive).

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
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

## OUTPUTS

### Kestrun.Health.ProbeResult

{{ Fill in the Description }}

## NOTES

Intended for use inside -ScriptBlock probes: `return New-KrProbeResult Healthy 'Ready'`.


## RELATED LINKS

{{ Fill in the related links here }}
