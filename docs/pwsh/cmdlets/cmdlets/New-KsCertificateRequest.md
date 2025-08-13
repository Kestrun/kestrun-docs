---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/kestrun.authentication.claimpolicybuilder
schema: 2.0.0
---

# New-KsCertificateRequest

## SYNOPSIS
Creates a PEM-encoded CSR (and returns the private key).

## SYNTAX

```
New-KsCertificateRequest [-DnsName] <String[]> [[-KeyType] <String>] [[-KeyLength] <Int32>]
 [[-Country] <String>] [[-Org] <String>] [[-OrgUnit] <String>] [[-CommonName] <String>]
 [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates a PEM-encoded CSR (Certificate Signing Request) and returns the private key.
The CSR can be used to request a certificate from a CA (Certificate Authority).

## EXAMPLES

### EXAMPLE 1
```
$csr, $priv = New-KestrunCertificateRequest -DnsName 'example.com' -Country US
$csr | Set-Content -Path 'C:\path\to\csr.pem'
$priv | Set-Content -Path 'C:\path\to\private.key'
```

### EXAMPLE 2
```
$csr, $priv = New-KestrunCertificateRequest -DnsName 'example.com' -Country US -Org 'Example Corp' -OrgUnit 'IT' -CommonName 'example.com'
$csr | Set-Content -Path 'C:\path\to\csr.pem'
$priv | Set-Content -Path 'C:\path\to\private.key'
```

## PARAMETERS

### -DnsName
The DNS name(s) for which the certificate is requested.
This can include multiple names for Subject Alternative Names (SANs).

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
The type of key to generate for the CSR.
Options are 'Rsa' or 'Ecdsa'.
Defaults to 'Rsa'.

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
The length of the key to generate.
Defaults to 2048 bits for RSA keys.
This parameter is ignored for ECDSA keys.

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

### -Country
The country name (2-letter code) to include in the CSR.
This is typically the ISO 3166-1 alpha-2 code (e.g., 'US' for the United States).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Org
The organization name to include in the CSR.
This is typically the legal name of the organization.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OrgUnit
The organizational unit name to include in the CSR.
This is typically the department or division within the organization.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CommonName
The common name (CN) to include in the CSR.
This is typically the fully qualified domain name (FQDN) for the certificate.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
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

## NOTES

## RELATED LINKS
