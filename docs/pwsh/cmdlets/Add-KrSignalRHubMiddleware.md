---
layout: default
parent: PowerShell Cmdlets
title: Add-KrSignalRHubMiddleware
nav_order: 48
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrSignalRHubMiddleware

## SYNOPSIS
Maps a SignalR hub class to the given URL path.

## SYNTAX

```
Add-KrSignalRHubMiddleware [[-Server] <KestrunHost>] [[-Path] <String>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This function allows you to map a SignalR hub class to a specific URL path on the Kestrun server.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrSignalRHubMiddleware -Path '/hubs/notifications' -PassThru
Adds a SignalR hub at the path '/hubs/notifications' and returns the modified server instance.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the SignalR hub will be added.

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

### -Path
The URL path where the SignalR hub will be accessible.
Defaults to '/hubs/kestrun'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: /hubs/kestrun
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
If specified, the cmdlet will return the modified server instance after adding the SignalR hub.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
This function is part of the Kestrun PowerShell module and is used to manage SignalR hubs on the Kestrun server.
The Server parameter accepts a KestrunHost instance; if not provided, the default server is used.
The Path parameter specifies the URL path where the SignalR hub will be accessible.
The PassThru switch allows the function to return the modified server instance for further use.

## RELATED LINKS
