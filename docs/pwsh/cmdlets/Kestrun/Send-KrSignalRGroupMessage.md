---
layout: default
parent: PowerShell Cmdlets
nav_order: 171
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Send-KrSignalRGroupMessage
---

# Send-KrSignalRGroupMessage

## SYNOPSIS

Broadcasts a message to a specific SignalR group.

## SYNTAX

### __AllParameterSets

```powershell
Send-KrSignalRGroupMessage [-GroupName] <string> [-Method] <string> [-Message] <Object>
 [[-Server] <KestrunHost>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function sends a message to all clients in a specific SignalR group via the IRealtimeBroadcaster service.
The message is broadcast in real-time to all connected clients listening in the specified group.

## EXAMPLES

### EXAMPLE 1

Send-KrSignalRGroupMessage -GroupName "Admins" -Method "ReceiveAdminUpdate" -Message @{ Update = "System maintenance scheduled" }
Broadcasts an admin update to all clients in the "Admins" group.

### EXAMPLE 2

Send-KrSignalRGroupMessage -GroupName "Workers" -Method "ReceiveTaskUpdate" -Message @{ TaskId = 123; Progress = 75 }
Broadcasts a task progress update to all clients in the "Workers" group.

## PARAMETERS

### -GroupName

The name of the group to broadcast to.

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

The message to broadcast to the group.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Method

The hub method name to invoke on clients.

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

The Kestrun server instance.
If not specified, the default server is used.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
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
