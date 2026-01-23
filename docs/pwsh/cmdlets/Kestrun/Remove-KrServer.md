---
layout: default
parent: PowerShell Cmdlets
nav_order: 161
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Remove-KrServer
---

# Remove-KrServer

## SYNOPSIS

Removes a Kestrun server instance.

## SYNTAX

### __AllParameterSets

```powershell
Remove-KrServer [-Name] <string> [-Force] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function stops and destroys a Kestrun server instance with the specified name.

## EXAMPLES

### EXAMPLE 1

Remove-KrServer -Name "MyKestrunServer"
Removes the specified Kestrun server instance.

### EXAMPLE 2

Remove-KrServer -Name "MyKestrunServer" -Force
Removes the specified Kestrun server instance without confirmation.

## PARAMETERS

### -Force

If specified, the server will be stopped and destroyed without confirmation.

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

### -Name

The name of the Kestrun server instance to remove.

```yaml
Type: System.String
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

{{ Fill in the Description }}

## OUTPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This function is designed to be used in the context of a Kestrun server management.


## RELATED LINKS

{{ Fill in the related links here }}
