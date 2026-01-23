---
layout: default
parent: PowerShell Cmdlets
nav_order: 78
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.microsoft.com/en-us/dotnet/api/kestrun.authentication.claimpolicybuilder.build
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Build-KrClaimPolicy
---

# Build-KrClaimPolicy

## SYNOPSIS

Builds the claim policy configuration from the builder.

## SYNTAX

### __AllParameterSets

```powershell
Build-KrClaimPolicy [-Builder] <ClaimPolicyBuilder> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function finalizes the claim policy construction by invoking the Build method on the ClaimPolicyBuilder instance.

## EXAMPLES

### EXAMPLE 1

$policyConfig = New-KrClaimPolicy | Add-KrClaimPolicy -PolicyName "AdminOnly" -ClaimType "role" -AllowedValues "admin" | Build-KrClaimPolicy
This example creates a new claim policy builder, adds a policy, and then builds the claim policy configuration.

## PARAMETERS

### -Builder

The claim policy builder to finalize.

```yaml
Type: Kestrun.Claims.ClaimPolicyBuilder
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

### Kestrun.Claims.ClaimPolicyBuilder

{{ Fill in the Description }}

## OUTPUTS

### [Kestrun.Claims.ClaimPolicyConfig]
The constructed claim policy configuration.

{{ Fill in the Description }}

### Kestrun.Claims.ClaimPolicyConfig

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Claims module and is used to build claim policies
Maps to ClaimPolicyBuilder.Build


## RELATED LINKS

- [](https://docs.microsoft.com/en-us/dotnet/api/kestrun.authentication.claimpolicybuilder.build)