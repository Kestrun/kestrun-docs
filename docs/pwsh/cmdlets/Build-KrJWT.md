---
layout: default
parent: PowerShell Cmdlets
title: Build-KrJWT
nav_order: 46
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Build-KrJWT

## SYNOPSIS
Builds the JWT token from the builder.

## SYNTAX

```
Build-KrJWT [-Builder] <JwtTokenBuilder> [<CommonParameters>]
```

## DESCRIPTION
This function finalizes the JWT token construction by invoking the Build method on the JwtTokenBuilder instance.

## EXAMPLES

### EXAMPLE 1
```powershell
$token = New-KrJWTTokenBuilder | Add-KrJWTSubject -Subject "mySubject" |
          Add-KrJWTIssuer -Issuer "myIssuer" | 
          Add-KrJWTAudience -Audience "myAudience" | 
          Build-KrJWT
This example creates a new JWT token builder, adds a subject, issuer, and audience, and then builds the JWT token.
```

## PARAMETERS

### -Builder
The JWT token builder to finalize.

```yaml
Type: JwtTokenBuilder
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### [Kestrun.Security.JwtBuilderResult]
### The constructed JWT token.
## NOTES
This function is part of the Kestrun.Security module and is used to build JWT tokens.
Maps to JwtTokenBuilder.Build

## RELATED LINKS

[https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet)

