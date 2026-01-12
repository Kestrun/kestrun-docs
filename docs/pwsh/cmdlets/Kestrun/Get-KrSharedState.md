---
layout: default
parent: PowerShell Cmdlets
nav_order: 118
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Get-KrSharedState
---

# Get-KrSharedState

## SYNOPSIS

Retrieves the value of a previously defined global variable.

## SYNTAX

### Server (Default)

```powershell
Get-KrSharedState -Name <string> [-Server <KestrunHost>] [<CommonParameters>]
```

### Global

```powershell
Get-KrSharedState -Global -Name <string> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Looks up a variable in the Kestrun global variable table and returns its
value.
If the variable does not exist, `$null` is returned.

## EXAMPLES

### EXAMPLE 1

Get-KrSharedState -Name "MyVariable"
This retrieves the value of the global variable "MyVariable".

## PARAMETERS

### -Global

If specified, the variable is retrieved from the global shared state.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Global
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Name

Name of the variable to retrieve.
This should be the fully qualified name of the variable, including any
namespaces.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
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
- Name: Server
  Position: Named
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

This function is part of the Kestrun.SharedState module and is used to retrieve the value of global variables.


## RELATED LINKS

{{ Fill in the related links here }}
