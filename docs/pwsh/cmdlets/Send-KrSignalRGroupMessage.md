---
layout: default
parent: PowerShell Cmdlets
title: Send-KrSignalRGroupMessage
nav_order: 130
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Send-KrSignalRGroupMessage

## SYNOPSIS
Broadcasts a message to a specific SignalR group.

## SYNTAX

```
Send-KrSignalRGroupMessage [-GroupName] <String> [-Method] <String> [-Message] <Object>
 [[-Server] <KestrunHost>] [<CommonParameters>]
```

## DESCRIPTION
This function sends a message to all clients in a specific SignalR group via the IRealtimeBroadcaster service.
The message is broadcast in real-time to all connected clients listening in the specified group.

## EXAMPLES

### EXAMPLE 1
```powershell
Send-KrSignalRGroupMessage -GroupName "Admins" -Method "ReceiveAdminUpdate" -Message @{ Update = "System maintenance scheduled" }
Broadcasts an admin update to all clients in the "Admins" group.
```

### EXAMPLE 2
```powershell
Send-KrSignalRGroupMessage -GroupName "Workers" -Method "ReceiveTaskUpdate" -Message @{ TaskId = 123; Progress = 75 }
Broadcasts a task progress update to all clients in the "Workers" group.
```

## PARAMETERS

### -GroupName
The name of the group to broadcast to.

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

### -Method
The hub method name to invoke on clients.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Message
The message to broadcast to the group.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
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
Position: 4
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
