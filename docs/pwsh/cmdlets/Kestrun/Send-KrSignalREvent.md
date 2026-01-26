---
layout: default
parent: PowerShell Cmdlets
nav_order: 170
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Send-KrSignalREvent
---

# Send-KrSignalREvent

## SYNOPSIS

Broadcasts a custom event to all connected SignalR clients.

## SYNTAX

### __AllParameterSets

```powershell
Send-KrSignalREvent [-EventName] <string> [[-Data] <Object>] [[-Server] <KestrunHost>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function sends a custom event with optional data to all connected SignalR clients via the IRealtimeBroadcaster service.
The event is broadcast in real-time to all connected clients listening on the hub.

## EXAMPLES

### EXAMPLE 1

Send-KrSignalREvent -EventName "UserLoggedIn" -Data @{ Username = "admin"; Timestamp = (Get-Date) }
Broadcasts a custom event with data to all connected SignalR clients.

### EXAMPLE 2

Send-KrSignalREvent -EventName "ServerHealthCheck" -Data @{ Status = "Healthy"; Uptime = 3600 }
Broadcasts a health check event with status information.

### EXAMPLE 3

Get-KrServer | Send-KrSignalREvent -EventName "TaskCompleted" -Data @{ TaskId = 123; Success = $true }
Broadcasts a task completion event using the pipeline.

## PARAMETERS

### -Data

Optional data to include with the event.
Can be any object that will be serialized to JSON.

```yaml
Type: System.Object
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

### -EventName

The name of the event to broadcast.

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

### -Server

The Kestrun server instance.
If not specified, the default server is used.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
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

## NOTES

This function requires that SignalR has been configured on the server using Add-KrSignalRHubMiddleware.
The IRealtimeBroadcaster service must be registered for this cmdlet to work.


## RELATED LINKS

{{ Fill in the related links here }}
