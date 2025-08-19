---
layout: default
parent: PowerShell Cmdlets
title: Get-KrJWTInfo
nav_order: 56
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrJWTInfo

## SYNOPSIS
Retrieves information from a JWT token.

## SYNTAX

```
Get-KrJWTInfo [-Token] <String> [<CommonParameters>]
```

## DESCRIPTION
This function extracts various parameters from a JWT token, such as issuer, audience, expiration, and claims.

## EXAMPLES

### EXAMPLE 1
```powershell
$jwtInfo = Get-KrJWTInfo -Token $token
This example retrieves the information from the specified JWT token.
```

## PARAMETERS

### -Token
The JWT token to inspect.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### [Kestrun.Jwt.JwtParameters]
### An object containing the extracted parameters from the JWT token.
## NOTES
This function is part of the Kestrun.Jwt module and is used to inspect JWT tokens.
Maps to JwtInspector.ReadAllParameters

## RELATED LINKS
