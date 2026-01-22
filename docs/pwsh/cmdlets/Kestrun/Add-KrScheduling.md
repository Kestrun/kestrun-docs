---
layout: default
parent: PowerShell Cmdlets
nav_order: 61
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Add-KrScheduling
---

# Add-KrScheduling

## SYNOPSIS

Adds scheduling support to the Kestrun server.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrScheduling [[-Server] <KestrunHost>] [[-MaxRunspaces] <int>] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet allows you to register a scheduling service with the Kestrun server.
It can be used to manage scheduled tasks and jobs in the context of the Kestrun server.

## EXAMPLES

### EXAMPLE 1

$server | Add-KrScheduling -MaxRunspaces 5
This example adds scheduling support to the server, with a maximum of 5 runspaces.

### EXAMPLE 2

$server | Add-KrScheduling
This example adds scheduling support to the server without specifying a maximum number of runspaces.

## PARAMETERS

### -MaxRunspaces

The maximum number of runspaces to use for scheduling tasks.
If not specified, defaults to 0 (unlimited).

```yaml
Type: System.Int32
DefaultValue: 0
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

### -PassThru

If specified, the cmdlet will return the modified server instance after adding the scheduling service.

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

The Kestrun server instance to which the scheduling service will be added.

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

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This cmdlet is used to register a scheduling service with the Kestrun server, allowing you to manage scheduled tasks and jobs.


## RELATED LINKS

{{ Fill in the related links here }}
