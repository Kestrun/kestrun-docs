---
layout: default
parent: PowerShell Cmdlets
nav_order: 98
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Get-KrJWTValidationParameter
---

# Get-KrJWTValidationParameter

## SYNOPSIS

Retrieves the validation parameters for a JWT token builder result.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrJWTValidationParameter [-Result] <JwtBuilderResult> [[-ClockSkew] <timespan>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function extracts the validation parameters from a JWT builder result, which can be used for validating JWT tokens.

## EXAMPLES

### EXAMPLE 1

$validationParams = Get-KrJWTValidationParameter -Result $tokenBuilderResult -ClockSkew (New-TimeSpan -Minutes 5)
This example retrieves the validation parameters from the specified JWT builder result with a clock skew of 5 minutes.

### EXAMPLE 2

$JwtKeyHex = "6f1a1ce2e8cc4a5685ad0e1d1f0b8c092b6dce4f7a08b1c2d3e4f5a6b7c8d9e0";
$JwtTokenBuilder = New-KrJWTBuilder |
Add-KrJWTIssuer    -Issuer   $issuer |
Add-KrJWTAudience  -Audience $audience |
Protect-KrJWT -HexadecimalKey $JwtKeyHex -Algorithm HS256

# Add a JWT bearer authentication scheme using the validation parameters
Add-KrJWTBearerAuthentication -AuthenticationScheme "JwtScheme" -Options (Build-KrJWT -Builder $JwtTokenBuilder | Get-KrJWTValidation)
This example creates a JWT token builder, adds an issuer and audience, protects the JWT with a hexadecimal key, and retrieves the validation parameters for use in authentication.

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
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Result

The JWT builder result containing the token to validate.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Kestrun.Jwt.JwtBuilderResult

{{ Fill in the Description }}

## OUTPUTS

### [System.IdentityModel.Tokens.Jwt.TokenValidationParameters]
The validation parameters extracted from the JWT builder result.

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Jwt module and is used to manage JWT tokens.
Maps to JwtBuilderResult.GetValidationParameters


## RELATED LINKS

- [](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken)