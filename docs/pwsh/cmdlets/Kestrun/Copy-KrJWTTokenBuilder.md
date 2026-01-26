---
layout: default
parent: PowerShell Cmdlets
nav_order: 90
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Copy-KrJWTTokenBuilder
---

# Copy-KrJWTTokenBuilder

## SYNOPSIS

Creates a new cloned JWT token builder instance.

## SYNTAX

### __AllParameterSets

```powershell
Copy-KrJWTTokenBuilder [-Builder] <JwtTokenBuilder> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function creates a new cloned instance of the JwtTokenBuilder class, which is used to construct JWT tokens.

## EXAMPLES

### EXAMPLE 1

# Creates a new cloned JWT token builder instance
$builder = $oldBuilder|New-KrJWTToken

### EXAMPLE 2

# Creates a new cloned JWT token builder instance
$builder = New-KrJWTToken -Builder $oldBuilder

$builder.WithSubject('admin')
        .WithIssuer('https://issuer')
        .WithAudience('api')
        .SignWithSecret('uZ6zDP3CGK3rktmVOXQk8A')   # base64url
        .EncryptWithCertificate($cert,'RSA-OAEP','A256GCM')
        .Build()

## PARAMETERS

### -Builder

The original JWT token builder instance to clone.

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
A new cloned instance of the JwtTokenBuilder class.

{{ Fill in the Description }}

### Kestrun.Jwt.JwtTokenBuilder

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Jwt module and is used to build JWT tokens.
Maps to JwtTokenBuilder.New


## RELATED LINKS

{{ Fill in the related links here }}
