---
layout: default
parent: PowerShell Cmdlets
nav_order: 166
render_with_liquid: false
title: New-KrSelfSignedCertificate

# New-KrSelfSignedCertificate

## SYNOPSIS

Creates a self-signed certificate or localhost development certificate bundle.

## SYNTAX

### Standard (Default)

```powershell
New-KrSelfSignedCertificate -DnsNames <string[]> [-KeyType <string>] [-KeyLength <int>]
 [-ValidDays <int>] [-KeyUsage <X509KeyUsageFlags[]>] [-CertificateAuthority]
 [-IssuerCertificate <X509Certificate2>] [-Ephemeral] [-Exportable] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Development

```powershell
New-KrSelfSignedCertificate -Development [-DnsNames <string[]>]
 [-RootCertificate <X509Certificate2>] [-RootName <string>] [-LeafValidDays <int>]
 [-RootValidDays <int>] [-TrustRoot] [-Exportable] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

New-KrSelfSignedCertificate generates a single self-signed certificate for development or testing,
or, when -Development is specified, creates a localhost development bundle consisting of a CA
root certificate and an issued leaf certificate.
On Windows, you can optionally trust the
generated or supplied development root certificate in the CurrentUser Root store.

## EXAMPLES

### EXAMPLE 1

New-KrSelfSignedCertificate -DnsNames 'example.com' -KeyUsage DigitalSignature,KeyEncipherment

This example creates a self-signed certificate and applies explicit key-usage flags using PowerShell-friendly enum array syntax.

### EXAMPLE 2

$bundle = New-KrSelfSignedCertificate -Development -TrustRoot

Creates a development root CA, issues a localhost leaf certificate from it, trusts the root in the
CurrentUser Root store on Windows, and returns the private root, public-only root, and leaf certificates.

### EXAMPLE 3

$root = Import-KrCertificate -FilePath './certs/dev-root.pfx' -Password $password
$bundle = New-KrSelfSignedCertificate -Development -RootCertificate $root -DnsNames 'localhost','127.0.0.1','::1'

Reuses an existing development root certificate to issue a new localhost leaf certificate.

## PARAMETERS

### -CertificateAuthority

Creates a CA certificate suitable for signing child certificates.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- IsCertificateAuthority
ParameterSets:
- Name: Standard
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Confirm

When -TrustRoot is specified, prompts for confirmation before adding the development root
certificate to the Windows CurrentUser Root certificate store.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- cf
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Development

Creates a localhost development bundle consisting of a CA root certificate and an issued leaf certificate.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Development
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DnsNames

The DNS name(s) for the certificate.
In development mode, if omitted, localhost loopback names
are used by default.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Development
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Standard
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Ephemeral

Indicates whether the certificate is ephemeral (temporary).

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Standard
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Exportable

Indicates whether the private key is exportable.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IssuerCertificate

An optional issuer/root certificate used to sign the generated certificate.
The issuer must include a private key.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509Certificate2
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Standard
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -KeyLength

The length of the key in bits (only applicable for RSA).

```yaml
Type: System.Int32
DefaultValue: 2048
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Standard
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -KeyType

The type of key to use for the certificate (RSA or ECDSA).

```yaml
Type: System.String
DefaultValue: Rsa
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Standard
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -KeyUsage

Optional X.509 Key Usage flags to apply to the certificate.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509KeyUsageFlags[]
DefaultValue: '@()'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Standard
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LeafValidDays

The number of days the generated development leaf certificate is valid.

```yaml
Type: System.Int32
DefaultValue: 30
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Development
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RootCertificate

An optional CA root certificate used to sign the generated development leaf certificate.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509Certificate2
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Development
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RootName

The subject common name to use when creating a new development root certificate.

```yaml
Type: System.String
DefaultValue: Kestrun Development Root CA
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Development
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RootValidDays

The number of days a generated development root certificate is valid.

```yaml
Type: System.Int32
DefaultValue: 3650
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Development
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TrustRoot

If specified with -Development on Windows, adds the development root certificate to the CurrentUser Root store.
On non-Windows platforms, this cmdlet writes a warning and continues without trusting the root certificate.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Development
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ValidDays

The number of days the (non-development) certificate will be valid.
In development mode, use -LeafValidDays and -RootValidDays.

```yaml
Type: System.Int32
DefaultValue: 365
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Standard
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -WhatIf

When -TrustRoot is specified, shows the pending trust-store change and skips adding the
development root to the Windows CurrentUser Root certificate store.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- wi
ParameterSets:
- Name: (All)
  Position: Named
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

### System.Security.Cryptography.X509Certificates.X509Certificate2

{{ Fill in the Description }}

### System.Object

{{ Fill in the Description }}

## NOTES

This function is intended for use in development and testing environments only.
Do not use self-signed certificates in production.


## RELATED LINKS

{{ Fill in the related links here }}
