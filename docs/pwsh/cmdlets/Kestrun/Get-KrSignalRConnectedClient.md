---
layout: default
parent: PowerShell Cmdlets
nav_order: 116
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Get-KrSignalRConnectedClient
---

# Get-KrSignalRConnectedClient

## SYNOPSIS

Gets the number of connected SignalR clients.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrSignalRConnectedClient [[-Server] <KestrunHost>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function retrieves the current number of connected SignalR clients from the IConnectionTracker service.
It can be used to monitor the number of active connections to the SignalR hub.

## EXAMPLES

### EXAMPLE 1

Get-KrSignalRConnectedClient
Retrieves the number of connected SignalR clients from the default Kestrun server.

### EXAMPLE 2

Get-KrServer | Get-KrSignalRConnectedClient
Retrieves the number of connected SignalR clients using the pipeline.

## PARAMETERS

### -Server

The Kestrun server instance.
If not specified, the default server is used.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### System.Int32

{{ Fill in the Description }}

### System.Nullable`1[[System.Int32, System.Private.CoreLib, Version=8.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]

{{ Fill in the Description }}

## NOTES

This function requires that SignalR has been configured on the server using Add-KrSignalR


## RELATED LINKS

{{ Fill in the related links here }}
