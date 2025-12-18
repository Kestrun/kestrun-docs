---
layout: default
parent: PowerShell Cmdlets
nav_order: 186
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Test-KrCapability
---

# Test-KrCapability

## SYNOPSIS

Check if a specific feature is supported in the current Kestrun runtime environment.

## SYNTAX

### __AllParameterSets

```powershell
Test-KrCapability [-Feature] <string> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet checks if a given feature, identified by its name, is supported in the current Kestrun runtime environment.
It can be used to determine if certain capabilities are available based on the runtime version and configuration.

## EXAMPLES

### EXAMPLE 1

Test-KrCapability -Feature "Http3"
This example checks if the Http3 feature is supported in the current Kestrun runtime environment.

### EXAMPLE 2

Test-KrCapability -Feature "SomeOtherFeature"
This example checks if a feature named "SomeOtherFeature" is supported, using a raw string.

## PARAMETERS

### -Feature

The name of the feature to check.
This can be either the name of a KnownFeature enum value or a raw string representing the feature.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
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

## OUTPUTS

### System.Boolean

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
