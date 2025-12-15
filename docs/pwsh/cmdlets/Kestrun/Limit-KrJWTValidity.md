---
layout: default
parent: PowerShell Cmdlets
nav_order: 129
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Limit-KrJWTValidity
---

# Limit-KrJWTValidity

## SYNOPSIS

Sets the validity period for the JWT token.

## SYNTAX

### TimeSpan (Default)

```powershell
Limit-KrJWTValidity -Builder <JwtTokenBuilder> -Lifetime <timespan> [<CommonParameters>]
```

### Discrete

```powershell
Limit-KrJWTValidity -Builder <JwtTokenBuilder> [-Hours <double>] [-Minutes <double>]
 [-Seconds <double>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function sets the validity period for the JWT token, specifying how long the token will be valid.
The period can be provided as a [TimeSpan] object (-Lifetime) or directly as -Hours, -Minutes, or -Seconds.

## EXAMPLES

### EXAMPLE 1

$builder = New-KrJWTTokenBuilder | Limit-KrJWTValidity -Hours 1
Creates a JWT token builder and sets its validity period to 1 hour.

### EXAMPLE 2

$builder = New-KrJWTTokenBuilder | Limit-KrJWTValidity -Lifetime (New-TimeSpan -Hours 2 -Minutes 30)
Creates a JWT token builder and sets its validity period to 2 hours and 30 minutes.

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

### -Hours

The number of hours for which the JWT token will be valid.

```yaml
Type: System.Double
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Discrete
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Lifetime

The duration for which the JWT token will be valid.

```yaml
Type: System.TimeSpan
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: TimeSpan
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Minutes

The number of minutes for which the JWT token will be valid.

```yaml
Type: System.Double
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Discrete
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Seconds

The number of seconds for which the JWT token will be valid.

```yaml
Type: System.Double
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Discrete
  Position: Named
  IsRequired: false
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

This function is part of the Kestrun.Jwt module and is used to build JWT tokens.
Maps to JwtTokenBuilder.ValidFor(TimeSpan).


## RELATED LINKS

- [](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken)