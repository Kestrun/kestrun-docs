---
layout: default
parent: PowerShell Cmdlets
title: Start-KrServer
nav_order: 105
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Start-KrServer

## SYNOPSIS
Starts the Kestrun server and listens for incoming requests.

## SYNTAX

```
Start-KrServer [[-Server] <KestrunHost>] [-NoWait] [-Quiet] [-PassThru] [-CloseLogsOnExit] [<CommonParameters>]
```

## DESCRIPTION
This function starts the Kestrun server, allowing it to accept incoming HTTP requests.

## EXAMPLES

### EXAMPLE 1
```powershell
Start-KrServer -Server $server
Starts the specified Kestrun server instance and listens for incoming requests.
```

## PARAMETERS

### -Server
The Kestrun server instance to start.
This parameter is mandatory.

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

### -NoWait
If specified, the function will not wait for the server to start and will return immediately.

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

### -Quiet
If specified, suppresses output messages during the startup process.

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

### -PassThru
If specified, the cmdlet will return the modified server instance after starting it.

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

### -CloseLogsOnExit
If specified, closes all loggers when the server stops.

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
This function is designed to be used after the server has been configured and routes have been added.
It will block the console until the server is stopped or Ctrl+C is pressed.

## RELATED LINKS
