---
layout: default
parent: PowerShell Cmdlets
nav_order: 79
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Build-KrJWT
---

# Build-KrJWT

## SYNOPSIS

Builds the JWT token from the builder.

## SYNTAX

### __AllParameterSets

```powershell
Build-KrJWT [-Builder] <JwtTokenBuilder> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function finalizes the JWT token construction by invoking the Build method on the JwtTokenBuilder instance.

## EXAMPLES

### EXAMPLE 1

$token = New-KrJWTTokenBuilder | Add-KrJWTSubject -Subject "mySubject" |
          Add-KrJWTIssuer -Issuer "myIssuer" |
          Add-KrJWTAudience -Audience "myAudience" |
          Build-KrJWT
This example creates a new JWT token builder, adds a subject, issuer, and audience, and then builds the JWT token.

## PARAMETERS

### -Builder

The JWT token builder to finalize.

```yaml
Type: Kestrun.Jwt.JwtTokenBuilder
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

### Kestrun.Jwt.JwtTokenBuilder

{{ Fill in the Description }}

## OUTPUTS

### [Kestrun.Jwt.JwtBuilderResult]
The constructed JWT token.

{{ Fill in the Description }}

### Kestrun.Jwt.JwtBuilderResult

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Jwt module and is used to build JWT tokens.
Maps to JwtTokenBuilder.Build


## RELATED LINKS

- [](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken)