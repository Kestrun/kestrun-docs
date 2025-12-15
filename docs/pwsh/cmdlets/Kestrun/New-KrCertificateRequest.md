---
layout: default
parent: PowerShell Cmdlets
nav_order: 130
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: New-KrCertificateRequest
---

# New-KrCertificateRequest

## SYNOPSIS

Creates a PEM-encoded CSR (and returns the private key).

## SYNTAX

### __AllParameterSets

```powershell
New-KrCertificateRequest [-DnsNames] <string[]> [[-KeyType] <string>] [[-KeyLength] <int>]
 [[-Country] <string>] [[-Org] <string>] [[-OrgUnit] <string>] [[-CommonName] <string>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Creates a PEM-encoded CSR (Certificate Signing Request) and returns the private key.
The CSR can be used to request a certificate from a CA (Certificate Authority).

## EXAMPLES

### EXAMPLE 1

$csr, $priv = New-KestrunCertificateRequest -DnsNames 'example.com' -Country US
$csr | Set-Content -Path 'C:\path\to\csr.pem'
$priv | Set-Content -Path 'C:\path\to\private.key'

### EXAMPLE 2

$csr, $priv = New-KestrunCertificateRequest -DnsNames 'example.com' -Country US -Org 'Example Corp' -OrgUnit 'IT' -CommonName 'example.com'
$csr | Set-Content -Path 'C:\path\to\csr.pem'
$priv | Set-Content -Path 'C:\path\to\private.key'

## PARAMETERS

### -CommonName

The common name (CN) to include in the CSR.
This is typically the fully qualified domain name (FQDN) for the certificate.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Country

The country name (2-letter code) to include in the CSR.
This is typically the ISO 3166-1 alpha-2 code (e.g., 'US' for the United States).

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DnsNames

The DNS name(s) for which the certificate is requested.
This can include multiple names for Subject Alternative Names (SANs).

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -KeyLength

The length of the key to generate.
Defaults to 2048 bits for RSA keys.
This parameter is ignored for ECDSA keys.

```yaml
Type: System.Int32
DefaultValue: 2048
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -KeyType

The type of key to generate for the CSR.
Options are 'Rsa' or 'Ecdsa'.
Defaults to 'Rsa'.

```yaml
Type: System.String
DefaultValue: Rsa
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Org

The organization name to include in the CSR.
This is typically the legal name of the organization.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OrgUnit

The organizational unit name to include in the CSR.
This is typically the department or division within the organization.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### [Kestrun.Certificates.CertificateManager.CsrResult]

{{ Fill in the Description }}

### Kestrun.Certificates.CsrResult

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
