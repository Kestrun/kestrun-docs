---
layout: default
parent: PowerShell Cmdlets
title: Add-KrListenUnixSocket
nav_order: 24
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrListenUnixSocket

## SYNOPSIS
Adds a Unix socket listener to a Kestrun server instance.

## SYNTAX

```
Add-KrListenUnixSocket [[-Server] <KestrunHost>] [-ListenUnixSocket] <String> [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This function adds a Unix socket listener to the specified Kestrun server instance, allowing it to listen for incoming requests on the specified Unix socket.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrListenUnixSocket -Server $server -ListenUnixSocket "/tmp/mysocket"
Adds a Unix socket listener with the specified path to the given Kestrun server instance.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the Unix socket listener will be added.
This parameter is optional and can be provided via pipeline input.

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

### -ListenUnixSocket
The path of the Unix domain socket on which the server will listen for incoming requests.
This parameter is mandatory.

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

### -PassThru
If specified, the cmdlet will return the modified server instance after adding the Unix socket listener

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

### Kestrun.Hosting.KestrunHost
## NOTES
This function is designed to be used in the context of a Kestrun server setup and allows for flexible configuration of Unix socket listeners.
The Unix socket listener will be added to the server's options and will be used when the server is started to listen for incoming requests on the specified Unix socket.

## RELATED LINKS
