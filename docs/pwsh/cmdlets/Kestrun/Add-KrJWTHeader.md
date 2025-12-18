---
layout: default
parent: PowerShell Cmdlets
nav_order: 38
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Add-KrJWTHeader
---

# Add-KrJWTHeader

## SYNOPSIS

Adds a header to the JWT token builder.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrJWTHeader [-Builder] <JwtTokenBuilder> [-Name] <string> [-Value] <Object> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function adds a header to the JWT token builder, allowing for the specification of additional header fields.

## EXAMPLES

### EXAMPLE 1

$builder = New-KrJWTTokenBuilder | Add-KrJWTHeader -Name "customHeader" -Values "headerValue"
This example creates a new JWT token builder and adds a custom header to it.

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
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Name

The name of the header to add.

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

### -Value

The value of the header to add.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
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

This function is part of the Kestrun.Jwt module and is used to build JWT tokens.
Maps to JwtTokenBuilder.AddHeader


## RELATED LINKS

- [](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken)