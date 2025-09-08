---
layout: default
parent: PowerShell Cmdlets
title: Add-KrSignalRHub
nav_order: 34
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrSignalRHub

## SYNOPSIS
Maps a SignalR hub class to the given URL path.

## SYNTAX

```
Add-KrSignalRHub [-Server] <KestrunHost> [-HubType] <Type> [-Path] <String> [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This function allows you to map a SignalR hub class to a specific URL path on the Kestrun server.

## EXAMPLES

### EXAMPLE 1
```powershell
$server | Add-KrSignalRHub -HubType ([ChatHub]) -Path "/chat"
This example maps the ChatHub class to the "/chat" URL path on the specified Kestrun server.
```

### EXAMPLE 2
```powershell
Get-KrServer | Add-KrSignalRHub -HubType ([ChatHub]) -Path "/chat"
This example retrieves the current Kestrun server and maps the ChatHub class to the "/chat" URL path.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the SignalR hub will be added.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -HubType
The type of the SignalR hub class to be mapped.

```yaml
Type: Type
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
The URL path where the SignalR hub will be accessible.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
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
The HubType parameter must be a valid SignalR hub class type.
The Path parameter specifies the URL path where the SignalR hub will be accessible.
The function uses reflection to find and invoke the generic AddSignalR\<T\>(string) method on the KestrunHost instance.
This allows for dynamic mapping of SignalR hubs to specific URL paths at runtime.
The function returns the modified server instance for further chaining if needed.
The function ensures that the server instance is resolved before proceeding with the mapping.
The function is designed to be used in a pipeline, allowing for easy integration with other Kestrun commands.
The function is part of the Kestrun.Hosting namespace and is used to extend the functionality of the Kestrun server.
The function is designed to be used in a modular way, allowing for easy addition of SignalR hubs to the Kestrun server.
The function is intended for use in scenarios where SignalR hubs need to be dynamically mapped to specific URL paths at runtime.
The function is part of the Kestrun.Hosting library and is used to manage SignalR hubs on the Kestrun server.
The function is designed to be used in a modular way, allowing for easy addition of SignalR hubs to the Kestrun server.
The function is intended for use in scenarios where SignalR hubs need to be dynamically mapped to specific URL paths at runtime.

## RELATED LINKS
