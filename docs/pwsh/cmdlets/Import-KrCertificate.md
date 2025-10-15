---
layout: default
parent: PowerShell Cmdlets
title: Import-KrCertificate
nav_order: 99
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Import-KrCertificate

## SYNOPSIS
Imports a PFX/PEM certificate file and returns X509Certificate2.

## SYNTAX

```
Import-KrCertificate [-FilePath] <String> [[-Password] <SecureString>] [[-PrivateKeyPath] <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The Import-KrCertificate function allows you to import a certificate into the Kestrun environment.
This may include loading a certificate from a file or other source and adding it to the appropriate certificate store or configuration.

## EXAMPLES

### EXAMPLE 1
```powershell
Import-KrCertificate -Path "C:\certs\mycert.pfx" -Password (ConvertTo-SecureString "password" -AsPlainText -Force)
This example imports a certificate from the specified path using the provided password.
```

## PARAMETERS

### -FilePath
The path to the certificate file to import.

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
The password for the certificate file, if applicable.

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
The path to the private key file, if applicable.

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
