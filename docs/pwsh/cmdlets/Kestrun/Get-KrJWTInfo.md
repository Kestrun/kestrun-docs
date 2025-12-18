---
layout: default
parent: PowerShell Cmdlets
nav_order: 96
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Get-KrJWTInfo
---

# Get-KrJWTInfo

## SYNOPSIS

Retrieves information from a JWT token.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrJWTInfo [-Token] <string> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function extracts various parameters from a JWT token, such as issuer, audience, expiration, and claims.

## EXAMPLES

### EXAMPLE 1

$jwtInfo = Get-KrJWTInfo -Token $token
This example retrieves the information from the specified JWT token.

## PARAMETERS

### -Token

The JWT token to inspect.

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

### [Kestrun.Jwt.JwtParameters]
An object containing the extracted parameters from the JWT token.

{{ Fill in the Description }}

### Kestrun.Jwt.JwtParameters

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Jwt module and is used to inspect JWT tokens.
Maps to JwtInspector.ReadAllParameters


## RELATED LINKS

- [](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken)