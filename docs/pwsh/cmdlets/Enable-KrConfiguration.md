---
layout: default
parent: PowerShell Cmdlets
title: Enable-KrConfiguration
nav_order: 49
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Enable-KrConfiguration

## SYNOPSIS
Enables Kestrun server configuration and starts the server.

## SYNTAX

```
Enable-KrConfiguration [[-Server] <KestrunHost>] [-Quiet] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This function applies the configuration to the Kestrun server and starts it.

## EXAMPLES

### EXAMPLE 1
```powershell
Enable-KrConfiguration -Server $server
Applies the configuration to the specified Kestrun server instance and starts it.
```

## PARAMETERS

### -Server
The Kestrun server instance to configure and start.
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

### -Quiet
If specified, suppresses output messages during the configuration and startup process.

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
If specified, the cmdlet will return the modified server instance after applying the configuration.

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
This function is designed to be used after the server has been configured with routes, listeners,
and other middleware components.

## RELATED LINKS
