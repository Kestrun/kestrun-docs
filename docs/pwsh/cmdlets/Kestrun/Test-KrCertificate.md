---
layout: default
parent: PowerShell Cmdlets
nav_order: 218
render_with_liquid: false
title: Test-KrCertificate
---

# Test-KrCertificate

## SYNOPSIS

Validates a certificate’s chain, EKU, and cryptographic strength.

## SYNTAX

### __AllParameterSets

```powershell
Test-KrCertificate [-Certificate] <X509Certificate2> [[-ExpectedPurpose] <string[]>]
 [[-CertificateChain] <X509Certificate2[]>] [[-FailureReasonVariable] <string>] [-CheckRevocation]
 [-AllowWeakAlgorithms] [-DenySelfSigned] [-StrictPurpose] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function checks the validity of a given X509Certificate2 object by verifying its certificate chain,
enhanced key usage (EKU), and cryptographic strength.
It can also check for self-signed certificates and
validate against expected purposes.

## EXAMPLES

### EXAMPLE 1

Test-KrCertificate -Certificate $cert -DenySelfSigned -CheckRevocation

### EXAMPLE 2

Test-KrCertificate -Certificate $cert -AllowWeakAlgorithms -ExpectedPurpose '1.3.6.1.5.5.7.3.1'

### EXAMPLE 3

Test-KrCertificate -Certificate $cert -StrictPurpose
If specified, the certificate will be validated against these purposes.

### EXAMPLE 4

$bundle = New-KrSelfSignedCertificate -Development -Exportable
$isValid = Test-KrCertificate -Certificate $bundle.LeafCertificate -CertificateChain $bundle.RootCertificate -FailureReasonVariable 'reason'
if (-not $isValid) { Write-Host "Validation failed: $reason" }

### EXAMPLE 5

$isValid = Test-KrCertificate -Certificate $cert -FailureReasonVariable 'reason'
if (-not $isValid) { Write-Host "Validation failed: $reason" }

## PARAMETERS

### -AllowWeakAlgorithms

Indicates whether to allow weak cryptographic algorithms.

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

### -Certificate

The X509Certificate2 object to validate.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509Certificate2
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

### -CertificateChain

Optional additional certificates used to build trust for the target certificate, such as
a private development root CA or intermediate certificates.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509Certificate2[]
DefaultValue: ''
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

### -CheckRevocation

Indicates whether to check the certificate's revocation status.

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

### -DenySelfSigned

Indicates whether to deny self-signed certificates.

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

### -ExpectedPurpose

The expected purposes (OID) for the certificate.
If specified, the certificate will be validated against these purposes.

```yaml
Type: System.String[]
DefaultValue: ''
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

### -FailureReasonVariable

Optional variable name that will receive the validation failure reason in the caller scope.
When validation succeeds, the target variable is set to an empty string.

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

### -StrictPurpose

Indicates whether to enforce strict matching of the expected purposes.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Boolean

{{ Fill in the Description }}

## NOTES

This function is designed to be used in the context of Kestrun's certificate management.
It leverages the Kestrun.Certificates.CertificateManager for validation.


## RELATED LINKS

{{ Fill in the related links here }}
