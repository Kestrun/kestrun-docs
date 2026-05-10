---
layout: default
parent: PowerShell Cmdlets
nav_order: 149
render_with_liquid: false
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
 [[-KeyUsage] <X509KeyUsageFlags[]>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Creates a PEM-encoded CSR (Certificate Signing Request) and returns the private key.
The CSR can be used to request a certificate from a CA (Certificate Authority).

## EXAMPLES

### EXAMPLE 1

$csrResult = New-KrCertificateRequest -DnsNames 'example.com' -Country US
$csrResult.CsrPem | Set-Content -Path 'C:\path\to\csr.pem'
$csrResult.PrivateKeyPem | Set-Content -Path 'C:\path\to\private.key'

Creates a CSR with minimal subject information and saves the CSR and private key to files.

### EXAMPLE 2

$csrResult = New-KrCertificateRequest -DnsNames 'example.com' -Country US -Org 'Example Corp' -OrgUnit 'IT' -CommonName 'example.com'
$csrResult.CsrPem | Set-Content -Path 'C:\path\to\csr.pem'
$csrResult.PrivateKeyPem | Set-Content -Path 'C:\path\to\private.key'

Creates a CSR with detailed subject information and saves the CSR and private key to files.

### EXAMPLE 3

$csrResult = New-KrCertificateRequest -DnsNames 'example.com' -CommonName 'example.com' -KeyUsage DigitalSignature,KeyEncipherment
$csrResult.CsrPem

Creates a CSR that includes an explicit key-usage extension request.

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

### -KeyUsage

Optional X.509 key usage flags to include in the CSR extension request.
Use this when the target CA or downstream tooling expects explicit key-usage hints in the CSR.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509KeyUsageFlags[]
DefaultValue: '@()'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
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

### [Kestrun.Certificates.CsrResult]

{{ Fill in the Description }}

### Kestrun.Certificates.CsrResult

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
