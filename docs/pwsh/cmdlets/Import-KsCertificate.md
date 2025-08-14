---
layout: default
parent: PowerShell Cmdlets
title: Import-KsCertificate
nav_order: 63
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Import-KsCertificate

## SYNOPSIS
Imports a PFX/PEM certificate file and returns X509Certificate2.

## SYNTAX

```
Import-KsCertificate [-FilePath] <String> [[-Password] <SecureString>] [[-PrivateKeyPath] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
The Import-KsCertificate function allows you to import a certificate into the Kestrun environment. 
This may include loading a certificate from a file or other source and adding it to the appropriate certificate store or configuration.

## EXAMPLES

### EXAMPLE 1
```
Import-KsCertificate -Path "C:\certs\mycert.pfx" -Password (ConvertTo-SecureString "password" -AsPlainText -Force)
This example imports a certificate from the specified path using the provided password.
```

## PARAMETERS

### -FilePath
{{ Fill FilePath Description }}

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

### -Password
{{ Fill Password Description }}

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateKeyPath
{{ Fill PrivateKeyPath Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```



### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Security.Cryptography.X509Certificates.X509Certificate2
## NOTES
This function is part of the Kestrun PowerShell module.

## RELATED LINKS
