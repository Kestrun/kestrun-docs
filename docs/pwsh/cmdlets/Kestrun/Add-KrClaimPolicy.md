---
layout: default
parent: PowerShell Cmdlets
nav_order: 8
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Add-KrClaimPolicy
---

# Add-KrClaimPolicy

## SYNOPSIS

Adds a new claim policy to the KestrunClaims system.

## SYNTAX

### ClaimType (Default)

```powershell
Add-KrClaimPolicy -Builder <ClaimPolicyBuilder> -PolicyName <string> -ClaimType <string>
 -AllowedValues <string[]> [-Description <string>] [<CommonParameters>]
```

### UserClaimType

```powershell
Add-KrClaimPolicy -Builder <ClaimPolicyBuilder> -PolicyName <string>
 -UserClaimType <UserIdentityClaim> -AllowedValues <string[]> [-Description <string>]
 [<CommonParameters>]
```

### Scope

```powershell
Add-KrClaimPolicy -Builder <ClaimPolicyBuilder> -PolicyName <string> -Scope [-Description <string>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function allows you to define a new claim policy by specifying the policy name, claim type, and allowed values.

## EXAMPLES

### EXAMPLE 1

Add-KrClaimPolicy -Builder $builder -PolicyName "ExamplePolicy" -ClaimType "ExampleClaim" -AllowedValues "Value1", "Value2"
This is an example of how to use the Add-KrClaimPolicy function.
It creates a claim policy named "ExamplePolicy" for the claim type "ExampleClaim" with allowed values "Value1" and "Value2".

### EXAMPLE 2

Add-KrClaimPolicy -Builder $builder -PolicyName "ScopePolicy" -Scope -AllowedValues "read", "write"
This example creates a claim policy named "ScopePolicy" for the claim type "scope" with allowed values "read" and "write".

## PARAMETERS

### -AllowedValues

The values that are allowed for this claim.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: UserClaimType
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ClaimType
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Builder

The claim policy builder instance used to create the policy.

```yaml
Type: Kestrun.Claims.ClaimPolicyBuilder
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ClaimType

The type of claim being defined.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ClaimType
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Description

The description of the claim policy.

```yaml
Type: System.String
DefaultValue: ''
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

### -PolicyName

The name of the policy to be created.

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

### -Scope

If specified, indicates that the claim type is a scope.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Scope
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UserClaimType

The user identity claim type.

```yaml
Type: Kestrun.Claims.UserIdentityClaim
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: UserClaimType
  Position: Named
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

### Kestrun.Claims.ClaimPolicyBuilder

{{ Fill in the Description }}

## OUTPUTS

### Kestrun.Claims.ClaimPolicyBuilder

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Jwt module and is used to build Claims


## RELATED LINKS

{{ Fill in the related links here }}
