---
layout: default
parent: PowerShell Cmdlets
nav_order: 172
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Send-KrSignalRLog
---

# Send-KrSignalRLog

## SYNOPSIS

Broadcasts a log message to all connected SignalR clients.

## SYNTAX

### __AllParameterSets

```powershell
Send-KrSignalRLog [-Level] <string> [-Message] <string> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function sends a log message to all connected SignalR clients via the IRealtimeBroadcaster service.
The message is broadcast in real-time to all connected clients listening on the hub.

## EXAMPLES

### EXAMPLE 1

Send-KrSignalRLog -Level Information -Message "Server started successfully"
Broadcasts an information log message to all connected SignalR clients.

### EXAMPLE 2

Send-KrSignalRLog -Level Error -Message "Failed to process request"
Broadcasts an error log message to all connected SignalR clients.

### EXAMPLE 3

Get-KrServer | Send-KrSignalRLog -Level Warning -Message "High memory usage detected"
Broadcasts a warning log message using the pipeline.

## PARAMETERS

### -Level

The log level (e.g., Information, Warning, Error, Debug, Verbose).

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

### -Message

The log message to broadcast.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

This function requires that SignalR has been configured on the server using Add-KrSignalRHubMiddleware.
The IRealtimeBroadcaster service must be registered for this cmdlet to work.


## RELATED LINKS

{{ Fill in the related links here }}
