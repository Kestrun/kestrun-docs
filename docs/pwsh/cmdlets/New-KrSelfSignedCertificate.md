---
layout: default
parent: PowerShell Cmdlets
title: New-KrSelfSignedCertificate
nav_order: 78
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# New-KrSelfSignedCertificate

## SYNOPSIS
Creates a new self-signed certificate.

## SYNTAX

```
New-KrSelfSignedCertificate [-DnsNames] <String[]> [[-KeyType] <String>] [[-KeyLength] <Int32>]
 [[-ValidDays] <Int32>] [-Ephemeral] [-Exportable] [<CommonParameters>]
```

## DESCRIPTION
The New-KrSelfSignedCertificate function generates a self-signed certificate for use in development or testing scenarios.
This certificate can be used for securing communications or authentication purposes.

## EXAMPLES

### EXAMPLE 1
```powershell
New-KrSelfSignedCertificate -Subject "CN=MyCert" -CertStoreLocation "Cert:\LocalMachine\My"
```

This example creates a self-signed certificate with the subject "CN=MyCert" and stores it in the local machine's certificate store.

## PARAMETERS

### -DnsNames
The DNS name(s) for the certificate.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyType
The type of key to use for the certificate (RSA or ECDSA).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: Rsa
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyLength
The length of the key in bits (only applicable for RSA).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 2048
Accept pipeline input: False
Accept wildcard characters: False
```

### -ValidDays
The number of days the certificate will be valid.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 365
Accept pipeline input: False
Accept wildcard characters: False
```

### -Ephemeral
Indicates whether the certificate is ephemeral (temporary).

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

### -Exportable
Indicates whether the private key is exportable.

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

### System.Security.Cryptography.X509Certificates.X509Certificate2
## NOTES
This function is intended for use in development and testing environments only.
Do not use self-signed certificates in production.

## RELATED LINKS
