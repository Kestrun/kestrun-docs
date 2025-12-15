---
layout: default
parent: PowerShell Cmdlets
nav_order: 60
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Add-KrSignalRHubMiddleware
---

# Add-KrSignalRHubMiddleware

## SYNOPSIS

Maps a SignalR hub class to the given URL path.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrSignalRHubMiddleware [[-Server] <KestrunHost>] [[-Path] <string>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function allows you to map a SignalR hub class to a specific URL path on the Kestrun server.

## EXAMPLES

### EXAMPLE 1

Add-KrSignalRHubMiddleware -Path '/hubs/notifications' -PassThru
Adds a SignalR hub at the path '/hubs/notifications' and returns the modified server instance.

## PARAMETERS

### -PassThru

If specified, the cmdlet will return the modified server instance after adding the SignalR hub.

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

### -Path

The URL path where the SignalR hub will be accessible.
Defaults to '/hubs/kestrun'.

```yaml
Type: System.String
DefaultValue: /hubs/kestrun
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance to which the SignalR hub will be added.

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

## NOTES

This function is part of the Kestrun PowerShell module and is used to manage SignalR hubs on the Kestrun server.
The Server parameter accepts a KestrunHost instance; if not provided, the default server is used.
The Path parameter specifies the URL path where the SignalR hub will be accessible.
The PassThru switch allows the function to return the modified server instance for further use.


## RELATED LINKS

{{ Fill in the related links here }}
