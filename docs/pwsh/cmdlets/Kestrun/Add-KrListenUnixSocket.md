---
layout: default
parent: PowerShell Cmdlets
nav_order: 43
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Add-KrListenUnixSocket
---

# Add-KrListenUnixSocket

## SYNOPSIS

Adds a Unix socket listener to a Kestrun server instance.

## SYNTAX

### NoCert (Default)

```powershell
Add-KrListenUnixSocket [[-Server] <KestrunHost>] [-SocketPath] <string> [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function adds a Unix socket listener to the specified Kestrun server instance, allowing it to listen for incoming requests on the specified Unix socket.

## EXAMPLES

### EXAMPLE 1

Add-KrListenUnixSocket -Server $server -SocketPath "/tmp/mysocket"
Adds a Unix socket listener with the specified path to the given Kestrun server instance.

## PARAMETERS

### -PassThru

If specified, the cmdlet will return the modified server instance after adding the Unix socket listener

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance to which the Unix socket listener will be added.
This parameter is optional and can be provided via pipeline input.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SocketPath

The path of the Unix domain socket on which the server will listen for incoming requests.
This parameter is mandatory.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This function is designed to be used in the context of a Kestrun server setup and allows for flexible configuration of Unix socket listeners.
The Unix socket listener will be added to the server's options and will be used when the server is started to listen for incoming requests on the specified Unix socket.


## RELATED LINKS

{{ Fill in the related links here }}
