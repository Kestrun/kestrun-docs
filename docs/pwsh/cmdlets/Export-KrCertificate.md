---
layout: default
parent: PowerShell Cmdlets
title: Export-KrCertificate
nav_order: 51
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Export-KrCertificate

## SYNOPSIS
Exports an X509Certificate2 to PFX or PEM(+key).

## SYNTAX

```
Export-KrCertificate [-Certificate] <X509Certificate2> [-FilePath] <String> [[-Format] <String>]
 [[-Password] <SecureString>] [-IncludePrivateKey] [<CommonParameters>]
```

## DESCRIPTION
This function exports a given X509Certificate2 object to a specified file path in either PFX or PEM format.
If the PEM format is chosen and the IncludePrivateKey switch is set, it will also export the private key.

## EXAMPLES

### EXAMPLE 1
```powershell
Export-KrCertificate -Certificate $cert -FilePath 'C:\certs\my' `
    -Format Pem -Password 'p@ss' -IncludePrivateKey
```

## PARAMETERS

### -Certificate
The X509Certificate2 object to export.

```yaml
Type: X509Certificate2
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FilePath
The file path to export the certificate to (without extension).

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

### -Format
The export format (Pfx or Pem).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: Pfx
Accept pipeline input: False
Accept wildcard characters: False
```

### -Password
The password to protect the exported PFX file (if applicable).

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludePrivateKey
Whether to include the private key in the export (only applicable for PEM format).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
This function requires the Kestrun module to be imported.

## RELATED LINKS
