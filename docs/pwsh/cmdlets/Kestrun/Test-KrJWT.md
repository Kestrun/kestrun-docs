---
layout: default
parent: PowerShell Cmdlets
nav_order: 199
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Test-KrJWT
---

# Test-KrJWT

## SYNOPSIS

Validates a JWT token against the builder's parameters.

## SYNTAX

### __AllParameterSets

```powershell
Test-KrJWT [-Result] <JwtBuilderResult> [-Token] <string> [[-ClockSkew] <timespan>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function validates a JWT token against the parameters set in the JWT builder, checking for expiration, issuer, audience, and other claims.

## EXAMPLES

### EXAMPLE 1

$isValid = New-KrJWTTokenBuilder | Add-KrJWTSubject -Subject "mySubject" | Build-KrJWT | Test-KrJWT -Token $token
This example creates a new JWT token builder, adds a subject, and then tests the validity of the JWT token.

## PARAMETERS

### -ClockSkew

The allowed clock skew for validation, defaulting to 1 minute.

```yaml
Type: System.TimeSpan
DefaultValue: ([TimeSpan]::FromMinutes(1))
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Result

The JWT builder result containing the token and validation parameters.

```yaml
Type: Kestrun.Jwt.JwtBuilderResult
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

### -Token

The JWT token to validate.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
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

### Kestrun.Jwt.JwtBuilderResult

{{ Fill in the Description }}

## OUTPUTS

### [bool]
Returns true if the token is valid

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Jwt module and is used to validate JWT tokens.
Maps to JwtBuilderResult.Validate


## RELATED LINKS

- [](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken)