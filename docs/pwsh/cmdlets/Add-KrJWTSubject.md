---
layout: default
parent: PowerShell Cmdlets
title: Add-KrJWTSubject
nav_order: 23
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrJWTSubject

## SYNOPSIS
Adds a subject to the JWT token builder.

## SYNTAX

```
Add-KrJWTSubject [-Builder] <JwtTokenBuilder> [-Subject] <String> [<CommonParameters>]
```

## DESCRIPTION
This function adds a subject to the JWT token builder, allowing for the specification of the token's subject.

## EXAMPLES

### EXAMPLE 1
```powershell
$builder = New-KrJWTTokenBuilder | Add-KrJWTSubject -Subject "mySubject"
This example creates a new JWT token builder and adds a subject to it.
```

## PARAMETERS

### -Builder
The JWT token builder to modify.

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

### -Subject
The subject to set for the JWT token.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### [Kestrun.Jwt.JwtTokenBuilder]
### The modified JWT token builder.
## NOTES
This function is part of the Kestrun.Jwt module and is used to build JWT tokens
Maps to JwtTokenBuilder.WithSubject

## RELATED LINKS
