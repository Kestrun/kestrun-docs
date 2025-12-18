---
layout: default
parent: PowerShell Cmdlets
nav_order: 16
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Add-KrEnrichEnvironment
---

# Add-KrEnrichEnvironment

## SYNOPSIS

Adds environment information to the log context.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrEnrichEnvironment [-loggerConfig] <LoggerConfiguration> [-UserName] [-MachineName]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Adds environment information such as UserName and MachineName to the log context, allowing it to be included in log events.

## EXAMPLES

### EXAMPLE 1

New-KrLogger | Add-KrEnrichEnvironment | Register-KrLogger

## PARAMETERS

### -loggerConfig

Instance of LoggerConfiguration

```yaml
Type: Serilog.LoggerConfiguration
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MachineName

If specified, enriches logs with the current machine's name.

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

### -UserName

If specified, enriches logs with the current user's name.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## OUTPUTS

### LoggerConfiguration object allowing method chaining

{{ Fill in the Description }}

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
