---
layout: default
parent: PowerShell Cmdlets
nav_order: 111
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Get-KrServer
---

# Get-KrServer

## SYNOPSIS

Gets the current Kestrun server instance.

## SYNTAX

### Default (Default)

```powershell
Get-KrServer [-Server <KestrunHost>] [<CommonParameters>]
```

### StartTime

```powershell
Get-KrServer [-Server <KestrunHost>] [-StartTime] [<CommonParameters>]
```

### StopTime

```powershell
Get-KrServer [-Server <KestrunHost>] [-StopTime] [<CommonParameters>]
```

### Uptime

```powershell
Get-KrServer [-Server <KestrunHost>] [-Uptime] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function retrieves the current Kestrun server instance.
If a server instance is not provided,
it attempts to resolve the server from the current context.

## EXAMPLES

### EXAMPLE 1

Get-KrServer
This command retrieves the current Kestrun server instance.

### EXAMPLE 2

Get-KrServer -StartTime
This command retrieves the start time of the current Kestrun server instance.

### EXAMPLE 3

Get-KrServer -StopTime
This command retrieves the stop time of the current Kestrun server instance.

### EXAMPLE 4

Get-KrServer -Uptime
This command retrieves the uptime of the current Kestrun server instance.

## PARAMETERS

### -Server

The Kestrun server instance to retrieve.
If not specified, the function will attempt to resolve the current server context.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -StartTime

If specified, returns the server's start time as a DateTime object.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: StartTime
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -StopTime

If specified, returns the server's stop time as a DateTime object.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: StopTime
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Uptime

If specified, returns the server's uptime as a TimeSpan object.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Uptime
  Position: Named
  IsRequired: false
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

### [Kestrun.Hosting.KestrunHost]
    The current Kestrun server instance.
[DateTime]
    The server's start time or stop time if the corresponding switch is used.
[TimeSpan]
    The server's uptime if the Uptime switch is used.

{{ Fill in the Description }}

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

### System.DateTime

{{ Fill in the Description }}

### System.TimeSpan

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun PowerShell module and is used to manage Kestrun server instances.
If the server instance is not found in the context, it attempts to resolve it using the Resolve-KestrunServer function.


## RELATED LINKS

{{ Fill in the related links here }}
