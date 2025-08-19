---
layout: default
parent: PowerShell Cmdlets
title: Copy-KrJWTTokenBuilder
nav_order: 48
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Copy-KrJWTTokenBuilder

## SYNOPSIS
Creates a new cloned JWT token builder instance.

## SYNTAX

```
Copy-KrJWTTokenBuilder [-Builder] <JwtTokenBuilder> [<CommonParameters>]
```

## DESCRIPTION
This function creates a new cloned instance of the JwtTokenBuilder class, which is used to construct JWT tokens.

## EXAMPLES

### EXAMPLE 1
```powershell
# Creates a new cloned JWT token builder instance
$builder = $oldBuilder|New-KrJWTToken
```

### EXAMPLE 2
```powershell
# Creates a new cloned JWT token builder instance
$builder = New-KrJWTToken -Builder $oldBuilder
```

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

### [Kestrun.Jwt.JwtTokenBuilder]
### A new cloned instance of the JwtTokenBuilder class.
## NOTES
This function is part of the Kestrun.Jwt module and is used to build JWT tokens.
Maps to JwtTokenBuilder.New

## RELATED LINKS
