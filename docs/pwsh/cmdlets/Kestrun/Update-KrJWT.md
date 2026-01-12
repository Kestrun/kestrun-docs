---
layout: default
parent: PowerShell Cmdlets
nav_order: 203
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Update-KrJWT
---

# Update-KrJWT

## SYNOPSIS

Updates an existing JWT token.

## SYNTAX

### Token (Default)

```powershell
Update-KrJWT -Builder <JwtTokenBuilder> -Token <string> [-Lifetime <timespan>] [<CommonParameters>]
```

### Context

```powershell
Update-KrJWT -Builder <JwtTokenBuilder> -FromContext [-Lifetime <timespan>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function updates an existing JWT token by renewing it with a new lifetime.
It can either take a token directly or extract it from the current HTTP context.

## EXAMPLES

### EXAMPLE 1

Update-KrJWT -Builder $jwtBuilder -Token $existingToken -Lifetime (New-TimeSpan -Minutes 30)
This updates the existing JWT token with a new lifetime of 30 minutes.

### EXAMPLE 2

Update-KrJWT -Builder $jwtBuilder -FromContext -Lifetime (New-TimeSpan -Minutes 30)
This updates the existing JWT token extracted from the HTTP context with a new lifetime of 30 minutes.

## PARAMETERS

### -Builder

The JWT token builder used to renew the token.

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

### -FromContext

Indicates whether to extract the token from the HTTP context.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Context
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Lifetime

The new duration for which the JWT token will be valid.

```yaml
Type: System.TimeSpan
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

### -Token

The existing JWT token to update.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Token
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

### [string]
The updated JWT token.

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Jwt module and is used to manage JWT tokens.
Maps to JwtBuilderResult.Renew


## RELATED LINKS

- [](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken)