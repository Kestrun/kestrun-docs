---
layout: default
parent: PowerShell Cmdlets
title: Get-KrSignalRConnectedClient
nav_order: 97
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrSignalRConnectedClient

## SYNOPSIS
Gets the number of connected SignalR clients.

## SYNTAX

```
Get-KrSignalRConnectedClient [[-Server] <KestrunHost>] [<CommonParameters>]
```

## DESCRIPTION
This function retrieves the current number of connected SignalR clients from the IConnectionTracker service.
It can be used to monitor the number of active connections to the SignalR hub.

## EXAMPLES

### EXAMPLE 1
```powershell
Get-KrSignalRConnectedClient
Retrieves the number of connected SignalR clients from the default Kestrun server.
```

### EXAMPLE 2
```powershell
Get-KrServer | Get-KrSignalRConnectedClient
Retrieves the number of connected SignalR clients using the pipeline.
```

## PARAMETERS

### -Server
The Kestrun server instance.
If not specified, the default server is used.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Nullable`1[[System.Int32, System.Private.CoreLib, Version=8.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]
## NOTES
This function requires that SignalR has been configured on the server using Add-KrSignalR

## RELATED LINKS
