---
layout: default
parent: PowerShell Cmdlets
title: Update-KrJWT
nav_order: 114
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Update-KrJWT

## SYNOPSIS
Updates an existing JWT token.

## SYNTAX

### Token (Default)
```
Update-KrJWT -Builder <JwtTokenBuilder> -Token <String> [-Lifetime <TimeSpan>] [<CommonParameters>]
```

### Context
```
Update-KrJWT -Builder <JwtTokenBuilder> [-FromContext] [-Lifetime <TimeSpan>] [<CommonParameters>]
```

## DESCRIPTION
This function updates an existing JWT token by renewing it with a new lifetime.
It can either take a token directly or extract it from the current HTTP context.

## EXAMPLES

### EXAMPLE 1
```powershell
Update-KrJWT -Builder $jwtBuilder -Token $existingToken -Lifetime (New-TimeSpan -Minutes 30)
This updates the existing JWT token with a new lifetime of 30 minutes.
```

### EXAMPLE 2
```powershell
Update-KrJWT -Builder $jwtBuilder -FromContext -Lifetime (New-TimeSpan -Minutes 30)
This updates the existing JWT token extracted from the HTTP context with a new lifetime of 30 minutes.
```

## PARAMETERS

### -Builder
The JWT token builder used to renew the token.

```yaml
Type: JwtTokenBuilder
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Token
The existing JWT token to update.

```yaml
Type: String
Parameter Sets: Token
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FromContext
Indicates whether to extract the token from the HTTP context.

```yaml
Type: SwitchParameter
Parameter Sets: Context
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Lifetime
The new duration for which the JWT token will be valid.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

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

### [string]
### The updated JWT token.
## NOTES
This function is part of the Kestrun.Jwt module and is used to manage JWT tokens.
Maps to JwtBuilderResult.Renew

## RELATED LINKS
