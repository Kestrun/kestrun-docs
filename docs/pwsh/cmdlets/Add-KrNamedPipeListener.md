---
layout: default
parent: PowerShell Cmdlets
title: Add-KrNamedPipeListener
nav_order: 37
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrNamedPipeListener

## SYNOPSIS
Adds a named pipe listener to a Kestrun server instance.

## SYNTAX

```
Add-KrNamedPipeListener [[-Server] <KestrunHost>] [-NamedPipeName] <String> [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This function adds a named pipe listener to the specified Kestrun server instance, allowing it to listen for incoming requests on the specified named pipe.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrNamedPipeListener -Server $server -NamedPipeName "MyNamedPipe"
Adds a named pipe listener with the specified name to the given Kestrun server instance.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the named pipe listener will be added.
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

### -NamedPipeName
The name of the named pipe on which the server will listen for incoming requests.
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
If specified, the cmdlet will return the modified server instance after adding the named pipe listener

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
This function is designed to be used in the context of a Kestrun server setup and allows for flexible configuration of named pipe listeners.
The named pipe listener will be added to the server's options and will be used when the server is started to listen for incoming requests on the specified named pipe.

## RELATED LINKS
