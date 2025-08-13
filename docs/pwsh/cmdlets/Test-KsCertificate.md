---
layout: default
parent: PowerShell Cmdlets
title: Test-KsCertificate
nav_order: 93
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Test-KsCertificate

## SYNOPSIS
Validates a certificate's chain, EKU, and cryptographic strength.

## SYNTAX

```
Test-KsCertificate [-Certificate] <X509Certificate2> [-CheckRevocation] [-AllowWeakAlgorithms]
 [-DenySelfSigned] [[-ExpectedPurpose] <String[]>] [-StrictPurpose] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
This function checks the validity of a given X509Certificate2 object by verifying its certificate chain,
enhanced key usage (EKU), and cryptographic strength.
It can also check for self-signed certificates and
validate against expected purposes.

## EXAMPLES

### EXAMPLE 1
```
Test-KestrunCertificate -Certificate $cert -DenySelfSigned -CheckRevocation
```

### EXAMPLE 2
```
Test-KestrunCertificate -Certificate $cert -AllowWeakAlgorithms -ExpectedPurpose '1.3.6.1.5.5.7.3.1'
```

### EXAMPLE 3
```
Test-KestrunCertificate -Certificate $cert -StrictPurpose
If specified, the certificate will be validated against these purposes.
```

## PARAMETERS

### -Certificate
The X509Certificate2 object to validate.

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

### -CheckRevocation
Indicates whether to check the certificate's revocation status.

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

### -AllowWeakAlgorithms
Indicates whether to allow weak cryptographic algorithms.

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

### -DenySelfSigned
Indicates whether to deny self-signed certificates.

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

### -ExpectedPurpose
The expected purposes (OID) for the certificate.
If specified, the certificate will be validated against these purposes.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StrictPurpose
Indicates whether to enforce strict matching of the expected purposes.

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

### System.Boolean
## NOTES
This function is designed to be used in the context of Kestrun's certificate management.
It leverages the Kestrun.Certificates.CertificateManager for validation.

## RELATED LINKS
