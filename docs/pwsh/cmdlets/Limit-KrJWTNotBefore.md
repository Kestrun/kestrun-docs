---
layout: default
parent: PowerShell Cmdlets
title: Limit-KrJWTNotBefore
nav_order: 63
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Limit-KrJWTNotBefore

## SYNOPSIS
Sets the NotBefore time for the JWT token builder.

## SYNTAX

```
Limit-KrJWTNotBefore [-Builder] <JwtTokenBuilder> [-UtcBefore] <DateTime> [<CommonParameters>]
```

## DESCRIPTION
This function sets the NotBefore time for the JWT token builder, specifying when the token becomes valid.

## EXAMPLES

### EXAMPLE 1
```powershell
$builder = New-KrJWTTokenBuilder | Limit-KrJWTNotBefore -UtcBefore (Get-Date).AddMinutes(-5)
This example creates a new JWT token builder and sets its NotBefore time to 5 minutes in the past.
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

### -UtcBefore
The UTC time before which the JWT token is not valid.

```yaml
Type: DateTime
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

### [Kestrun.Security.JwtTokenBuilder]
### The modified JWT token builder.
## NOTES
This function is part of the Kestrun.Security module and is used to build JWT tokens
Maps to JwtTokenBuilder.NotBefore

## RELATED LINKS
