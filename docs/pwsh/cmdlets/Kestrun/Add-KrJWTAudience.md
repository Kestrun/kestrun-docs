---
layout: default
parent: PowerShell Cmdlets
nav_order: 36
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Add-KrJWTAudience
---

# Add-KrJWTAudience

## SYNOPSIS

Adds an audience to the JWT token builder.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrJWTAudience [-Builder] <JwtTokenBuilder> [-Audience] <string> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function adds an audience to the JWT token builder, allowing for the specification of the token's audience.

## EXAMPLES

### EXAMPLE 1

$builder = New-KrJWTTokenBuilder | Add-KrJWTAudience -Audience "myAudience"
This example creates a new JWT token builder and adds an audience to it.

## PARAMETERS

### -Audience

The audience to set for the JWT token.

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

### -Builder

The JWT token builder to modify.

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

### [Kestrun.Jwt.JwtTokenBuilder]
The modified JWT token builder.

{{ Fill in the Description }}

### Kestrun.Jwt.JwtTokenBuilder

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Jwt module and is used to build JWT tokens
Maps to JwtTokenBuilder.WithAudience


## RELATED LINKS

- [](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken)
- [](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken)