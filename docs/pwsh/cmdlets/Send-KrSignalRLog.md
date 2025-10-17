---
layout: default
parent: PowerShell Cmdlets
title: Send-KrSignalRLog
nav_order: 131
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Send-KrSignalRLog

## SYNOPSIS
Broadcasts a log message to all connected SignalR clients.

## SYNTAX

```
Send-KrSignalRLog [-Level] <String> [-Message] <String> [<CommonParameters>]
```

## DESCRIPTION
This function sends a log message to all connected SignalR clients via the IRealtimeBroadcaster service.
The message is broadcast in real-time to all connected clients listening on the hub.

## EXAMPLES

### EXAMPLE 1
```powershell
Send-KrSignalRLog -Level Information -Message "Server started successfully"
Broadcasts an information log message to all connected SignalR clients.
```

### EXAMPLE 2
```powershell
Send-KrSignalRLog -Level Error -Message "Failed to process request"
Broadcasts an error log message to all connected SignalR clients.
```

### EXAMPLE 3
```powershell
Get-KrServer | Send-KrSignalRLog -Level Warning -Message "High memory usage detected"
Broadcasts a warning log message using the pipeline.
```

## PARAMETERS

### -Level
The log level (e.g., Information, Warning, Error, Debug, Verbose).

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

### -Message
The log message to broadcast.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
This function requires that SignalR has been configured on the server using Add-KrSignalRHubMiddleware.
The IRealtimeBroadcaster service must be registered for this cmdlet to work.

## RELATED LINKS
