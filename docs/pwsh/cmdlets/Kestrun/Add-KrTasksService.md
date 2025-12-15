---
layout: default
parent: PowerShell Cmdlets
nav_order: 70
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Add-KrTasksService
---

# Add-KrTasksService

## SYNOPSIS

Adds ad-hoc Tasks support to the Kestrun server.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrTasksService [[-Server] <KestrunHost>] [[-MaxRunspaces] <int>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Registers the Kestrun Task service on the server, enabling one-off script execution (PowerShell, C#, VB.NET)
with status/result and cancellation support.

## EXAMPLES

### EXAMPLE 1

Add-KrTasksService
Adds the Tasks service to the default server.

### EXAMPLE 2

$server = Add-KrTasksService -PassThru
Adds the Tasks service and returns the server instance.

## PARAMETERS

### -MaxRunspaces

Optional maximum PowerShell runspaces for task execution; falls back to scheduler sizing when omitted.

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

Returns the server when specified.

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

The Kestrun server instance.

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

Requires the Kestrun.Hosting.KestrunHost.AddTasks() method.
If the Tasks service is already registered, this cmdlet has no effect.
The Tasks service enables ad-hoc script execution via New-KrTask, Start-KrTask, Stop-KrTask, Remove-KrTask.
The Tasks service uses PowerShell runspaces for PowerShell tasks; the MaxRunspaces parameter controls the maximum number of concurrent runspaces.


## RELATED LINKS

{{ Fill in the related links here }}
