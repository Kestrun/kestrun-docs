---
layout: default
parent: PowerShell Cmdlets
nav_order: 97
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Get-KrJWTToken
---

# Get-KrJWTToken

## SYNOPSIS

Retrieves the JWT token from the builder result.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrJWTToken [-Result] <JwtBuilderResult> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function extracts the JWT token from the builder result, allowing for further processing or output.

## EXAMPLES

### EXAMPLE 1

$token = New-KrJWTTokenBuilder | Add-KrJWTSubject -Subject "mySubject" | Build-KrJWT |
          Get-KrJWTToken
This example creates a new JWT token builder, adds a subject, builds the JWT token, and then retrieves the token.

## PARAMETERS

### -Result

The JWT builder result containing the constructed token.

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

### [string]
The JWT token extracted from the builder result.

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Jwt module and is used to retrieve JWT tokens.
Maps to JwtBuilderResult.Token


## RELATED LINKS

- [](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken)