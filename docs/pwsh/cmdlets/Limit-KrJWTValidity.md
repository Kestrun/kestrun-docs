---
title: Limit-KrJWTValidity
nav_order: 65
render_with_liquid: false
---
---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Limit-KrJWTValidity

## SYNOPSIS
Sets the validity period for the JWT token.

## SYNTAX

```
Limit-KrJWTValidity [-Builder] <JwtTokenBuilder> [-Lifetime] <TimeSpan> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
This function sets the validity period for the JWT token, specifying how long the token will be valid.

## EXAMPLES

### EXAMPLE 1
```
$builder = New-KrJWTTokenBuilder | Limit-KrJWTValidity -Lifetime (New-TimeSpan -Hours 1)
This example creates a new JWT token builder and sets its validity period to 1 hour.
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

### -Lifetime
The duration for which the JWT token will be valid.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
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
Maps to JwtTokenBuilder.ValidFor

## RELATED LINKS

[https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet)

