---
layout: default
parent: PowerShell Cmdlets
title: Get-KrJWTValidationParameter
nav_order: 60
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrJWTValidationParameter

## SYNOPSIS
Retrieves the validation parameters for a JWT token builder result.

## SYNTAX

```
Get-KrJWTValidationParameter [-Result] <JwtBuilderResult> [[-ClockSkew] <TimeSpan>] [<CommonParameters>]
```

## DESCRIPTION
This function extracts the validation parameters from a JWT builder result, which can be used for validating JWT tokens.

## EXAMPLES

### EXAMPLE 1
```powershell
$validationParams = Get-KrJWTValidationParameter -Result $tokenBuilderResult -ClockSkew (New-TimeSpan -Minutes 5)
This example retrieves the validation parameters from the specified JWT builder result with a clock skew of 5 minutes.
```

### EXAMPLE 2
```powershell
$JwtKeyHex = "6f1a1ce2e8cc4a5685ad0e1d1f0b8c092b6dce4f7a08b1c2d3e4f5a6b7c8d9e0";
$JwtTokenBuilder = New-KrJWTBuilder |
Add-KrJWTIssuer    -Issuer   $issuer |
Add-KrJWTAudience  -Audience $audience |
Protect-KrJWT -HexadecimalKey $JwtKeyHex -Algorithm HS256
```

# Add a JWT bearer authentication scheme using the validation parameters
Add-KrJWTBearerAuthentication -Name "JwtScheme" -Options (Build-KrJWT -Builder $JwtTokenBuilder | Get-KrJWTValidation)
This example creates a JWT token builder, adds an issuer and audience, protects the JWT with a hexadecimal key, and retrieves the validation parameters for use in authentication.

## PARAMETERS

### -Result
The JWT builder result containing the token to validate.

```yaml
Type: JwtBuilderResult
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ClockSkew
The allowed clock skew for validation, defaulting to 1 minute.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: ([TimeSpan]::FromMinutes(1))
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### [System.IdentityModel.Tokens.Jwt.TokenValidationParameters]
### The validation parameters extracted from the JWT builder result.
## NOTES
This function is part of the Kestrun.Jwt module and is used to manage JWT tokens.
Maps to JwtBuilderResult.GetValidationParameters

## RELATED LINKS
