---
layout: default
parent: PowerShell Cmdlets
title: Send-KrSignalREvent
nav_order: 129
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Send-KrSignalREvent

## SYNOPSIS
Broadcasts a custom event to all connected SignalR clients.

## SYNTAX

```
Send-KrSignalREvent [-EventName] <String> [[-Data] <Object>] [[-Server] <KestrunHost>] [<CommonParameters>]
```

## DESCRIPTION
This function sends a custom event with optional data to all connected SignalR clients via the IRealtimeBroadcaster service.
The event is broadcast in real-time to all connected clients listening on the hub.

## EXAMPLES

### EXAMPLE 1
```powershell
Send-KrSignalREvent -EventName "UserLoggedIn" -Data @{ Username = "admin"; Timestamp = (Get-Date) }
Broadcasts a custom event with data to all connected SignalR clients.
```

### EXAMPLE 2
```powershell
Send-KrSignalREvent -EventName "ServerHealthCheck" -Data @{ Status = "Healthy"; Uptime = 3600 }
Broadcasts a health check event with status information.
```

### EXAMPLE 3
```powershell
Get-KrServer | Send-KrSignalREvent -EventName "TaskCompleted" -Data @{ TaskId = 123; Success = $true }
Broadcasts a task completion event using the pipeline.
```

## PARAMETERS

### -EventName
The name of the event to broadcast.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Data
Optional data to include with the event.
Can be any object that will be serialized to JSON.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Server
The Kestrun server instance.
If not specified, the default server is used.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
This function requires that SignalR has been configured on the server using Add-KrSignalRHubMiddleware.
The IRealtimeBroadcaster service must be registered for this cmdlet to work.

## RELATED LINKS
