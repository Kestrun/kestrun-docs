---
layout: default
parent: PowerShell Cmdlets
title: Copy-KrJWTTokenBuilder
nav_order: 49
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Copy-KrJWTTokenBuilder

## SYNOPSIS
Creates a new cloned JWT token builder instance.

## SYNTAX

```
Copy-KrJWTTokenBuilder [-Builder] <JwtTokenBuilder> [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
This function creates a new cloned instance of the JwtTokenBuilder class, which is used to construct JWT tokens.

## EXAMPLES

### EXAMPLE 1
```
# Creates a new cloned JWT token builder instance
$builder = $oldBuilder|New-KrJWTToken
```

### EXAMPLE 2
```
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
{{ Fill Builder Description }}

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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
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
### A new cloned instance of the JwtTokenBuilder class.
## NOTES
This function is part of the Kestrun.Security module and is used to build JWT tokens.
Maps to JwtTokenBuilder.New

## RELATED LINKS
