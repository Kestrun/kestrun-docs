---
layout: default
parent: PowerShell Cmdlets
title: Test-KrJWT
nav_order: 140
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Test-KrJWT

## SYNOPSIS
Validates a JWT token against the builder's parameters.

## SYNTAX

```
Test-KrJWT [-Result] <JwtBuilderResult> [-Token] <String> [[-ClockSkew] <TimeSpan>] [<CommonParameters>]
```

## DESCRIPTION
This function validates a JWT token against the parameters set in the JWT builder, checking for expiration, issuer, audience, and other claims.

## EXAMPLES

### EXAMPLE 1
```powershell
$isValid = New-KrJWTTokenBuilder | Add-KrJWTSubject -Subject "mySubject" | Build-KrJWT | Test-KrJWT -Token $token
This example creates a new JWT token builder, adds a subject, and then tests the validity of the JWT token.
```

## PARAMETERS

### -Result
The JWT builder result containing the token and validation parameters.

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

### -Token
The JWT token to validate.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClockSkew
The allowed clock skew for validation, defaulting to 1 minute.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: ([TimeSpan]::FromMinutes(1))
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### [bool]
### Returns true if the token is valid, otherwise false.
## NOTES
This function is part of the Kestrun.Jwt module and is used to validate JWT tokens.
Maps to JwtBuilderResult.Validate

## RELATED LINKS
