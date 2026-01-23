---
layout: default
parent: PowerShell Cmdlets
nav_order: 76
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Add-KrUserClaim
---

# Add-KrUserClaim

## SYNOPSIS

Adds a claim to the current user.
This function allows you to add a new claim to the current user's identity.
The claim can be of any type, and you must specify the claim type and value.
The function will return the updated claims collection.

## SYNTAX

### ClaimType (Default)

```powershell
Add-KrUserClaim -ClaimType <string> -Value <string> [-Claims <Claim[]>] [<CommonParameters>]
```

### UserClaimType

```powershell
Add-KrUserClaim -UserClaimType <UserIdentityClaim> -Value <string> [-Claims <Claim[]>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function is designed to be used in the context of Kestrun for managing user claims.
It supports both string-based claim types and user identity claims.
Claims can be added to the user's identity using this function.
This function is part of the Kestrun.Claims module and is used to manage user claims.
It maps to ClaimCollection.Add method.

## EXAMPLES

### EXAMPLE 1

Adds a claim to the current user's identity.
This example demonstrates how to add a claim using the ClaimType and Value parameters.
Add-KrUserClaim -ClaimType "customClaimType" -Value "customClaimValue"

### EXAMPLE 2

Adds a claim to the current user's identity.
This example demonstrates how to add a claim using the UserClaimType and Value parameters.
Add-KrUserClaim -UserClaimType "Email" -Value "user@example.com"

## PARAMETERS

### -Claims

The claims to add to the current user's identity.
This can be a single claim or an array of claims.
If this parameter is specified, the ClaimType and Value parameters are ignored.
If this parameter is not specified, you must provide the ClaimType and Value parameters.

```yaml
Type: System.Security.Claims.Claim[]
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

### -ClaimType

The type of claim to add to the user's identity.
This is required if the Claims parameter is not specified.
It can be a string representing the claim type or a Kestrun.Claims.UserIdentityClaim enum value.

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

### -UserClaimType

The user identity claim type to use when adding the claim.
This is required if the Claims parameter is not specified.
It must be a valid Kestrun.Claims.UserIdentityClaim enum value.

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

### -Value

The value of the claim to add to the user's identity.
This is required if the Claims parameter is not specified.
It can be a string or a Kestrun.Claims.UserIdentityClaim enum value.
If the Claims parameter is specified, this parameter is ignored.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Security.Claims.Claim[]

{{ Fill in the Description }}

## OUTPUTS

### System.Security.Claims.Claim

{{ Fill in the Description }}

### System.Array

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Claims module and is used to manage user claims.
It maps to ClaimCollection.Add method.


## RELATED LINKS

{{ Fill in the related links here }}
