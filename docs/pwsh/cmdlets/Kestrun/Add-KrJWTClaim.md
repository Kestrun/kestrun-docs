---
layout: default
parent: PowerShell Cmdlets
nav_order: 39
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Add-KrJWTClaim
---

# Add-KrJWTClaim

## SYNOPSIS

Adds a claim to the JWT token builder.

## SYNTAX

### ClaimType (Default)

```powershell
Add-KrJWTClaim -Builder <JwtTokenBuilder> -ClaimType <string> -Value <string> [<CommonParameters>]
```

### UserClaimType

```powershell
Add-KrJWTClaim -Builder <JwtTokenBuilder> -UserClaimType <UserIdentityClaim> -Value <string>
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function adds a claim to the JWT token builder, allowing for the specification of additional data.

## EXAMPLES

### EXAMPLE 1

$builder = New-KrJWTTokenBuilder | Add-KrJWTClaim -Type "role" -Value "admin"
This example creates a new JWT token builder and adds a claim to it.

## PARAMETERS

### -Builder

The JWT token builder to modify.

```yaml
Type: Kestrun.Jwt.JwtTokenBuilder
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

The type of the claim to add.

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

The user-specific type of the claim to add, such as "Admin", "User", etc.
This parameter is used when the claim type is based on user identity claims.

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

The value of the claim to add.

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

### Kestrun.Jwt.JwtTokenBuilder

{{ Fill in the Description }}

## OUTPUTS

### [Kestrun.Jwt.JwtTokenBuilder]
The modified JWT token builder.

{{ Fill in the Description }}

### Kestrun.Jwt.JwtTokenBuilder

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Jwt module and is used to build JWT tokens
Maps to JwtTokenBuilder.AddClaim


## RELATED LINKS

- [](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken)