---
layout: default
parent: PowerShell Cmdlets
nav_order: 98
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Get-KrFeatureSupport
---

# Get-KrFeatureSupport

## SYNOPSIS

Gets the support status of known features in the current Kestrun runtime environment.

## SYNTAX

### Full (Default)

```powershell
Get-KrFeatureSupport [<CommonParameters>]
```

### Capabilities

```powershell
Get-KrFeatureSupport [-Capabilities] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet retrieves the support status of all known features defined in the Kestrun runtime.
It provides information about whether each feature is supported based on the runtime version and configuration.

## EXAMPLES

### EXAMPLE 1

Get-KrFeatureSupport
This example retrieves the support status of all known features in the current Kestrun runtime environment.
The output will be a collection of objects, each representing a feature and its support status.

## PARAMETERS

### -Capabilities

If specified, only the feature name and support status will be returned, omitting the built TFM.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Capabilities
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

## OUTPUTS

### A custom object with the following properties:
- Feature: The name of the feature.
- BuiltTFM: The target framework version that Kestrun was built against.
- Supported: A boolean indicating whether the feature is supported in the current runtime environment.

{{ Fill in the Description }}

### System.Management.Automation.PSObject

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
