---
layout: default
parent: PowerShell Cmdlets
nav_order: 217
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Write-KrSseEvent
---

# Write-KrSseEvent

## SYNOPSIS

Sends a Server-Sent Event (SSE) to connected clients.

## SYNTAX

### __AllParameterSets

```powershell
Write-KrSseEvent [-Event] <string> [-Data] <string> [[-id] <string>] [[-retryMs] <int>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function writes a Server-Sent Event (SSE) to the current HTTP response stream (per-connection).
For server-wide broadcasting to all connected clients, use Send-KrSseBroadcastEvent.

## EXAMPLES

### EXAMPLE 1

Write-KrSseEvent -Event 'message' -Data 'Hello, SSE!'
Sends an SSE with event name 'message' and data 'Hello, SSE!'.

### EXAMPLE 2

Write-KrSseEvent -Event 'update' -Data '{"status":"ok"}' -id '123' -retryMs 5000
Sends an SSE with event name 'update', JSON data, event ID '123', and a retry interval of 5000 milliseconds

## PARAMETERS

### -Data

The data payload of the event.

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

### -Event

The name of the event.

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

### -id

Optional: The event ID.

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

### -retryMs

Optional: The retry interval in milliseconds.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
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

## OUTPUTS

## NOTES

Use Start-KrSseResponse before sending events.


## RELATED LINKS

{{ Fill in the related links here }}
