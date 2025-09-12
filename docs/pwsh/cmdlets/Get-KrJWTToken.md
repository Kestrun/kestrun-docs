---
layout: default
parent: PowerShell Cmdlets
title: Get-KrJWTToken
nav_order: 60
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrJWTToken

## SYNOPSIS
Retrieves the JWT token from the builder result.

## SYNTAX

```
Get-KrJWTToken [-Result] <JwtBuilderResult> [<CommonParameters>]
```

## DESCRIPTION
This function extracts the JWT token from the builder result, allowing for further processing or output.

## EXAMPLES

### EXAMPLE 1
```powershell
$token = New-KrJWTTokenBuilder | Add-KrJWTSubject -Subject "mySubject" | Build-KrJWT |
          Get-KrJWTToken
This example creates a new JWT token builder, adds a subject, builds the JWT token, and then retrieves the token.
```

## PARAMETERS

### -Result
The JWT builder result containing the constructed token.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### [string]
### The JWT token extracted from the builder result.
## NOTES
This function is part of the Kestrun.Jwt module and is used to retrieve JWT tokens.
Maps to JwtBuilderResult.Token

## RELATED LINKS
