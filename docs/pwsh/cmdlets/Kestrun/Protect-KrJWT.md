---
layout: default
parent: PowerShell Cmdlets
nav_order: 146
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Protect-KrJWT
---

# Protect-KrJWT

## SYNOPSIS

Protects a JWT token using a specified secret or certificate.

## SYNTAX

### SecretBase64Url (Default)

```powershell
Protect-KrJWT -Builder <JwtTokenBuilder> -Base64Url <string> [-Algorithm <string>]
 [<CommonParameters>]
```

### SecretHexadecimalKey

```powershell
Protect-KrJWT -Builder <JwtTokenBuilder> -HexadecimalKey <string> [-Algorithm <string>]
 [<CommonParameters>]
```

### SecretPassphrase

```powershell
Protect-KrJWT -Builder <JwtTokenBuilder> -Passphrase <securestring> [-Algorithm <string>]
 [<CommonParameters>]
```

### PemPath

```powershell
Protect-KrJWT -Builder <JwtTokenBuilder> -PemPath <string> [-Algorithm <string>]
 [<CommonParameters>]
```

### JwkJson

```powershell
Protect-KrJWT -Builder <JwtTokenBuilder> -JwkJson <string> [-Algorithm <string>]
 [<CommonParameters>]
```

### JwkPath

```powershell
Protect-KrJWT -Builder <JwtTokenBuilder> -JwkPath <string> [-Algorithm <string>]
 [<CommonParameters>]
```

### Certificate

```powershell
Protect-KrJWT -Builder <JwtTokenBuilder> -X509Certificate <X509Certificate2> [-Algorithm <string>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function allows you to sign a JWT token with a secret or certificate, ensuring its integrity and authenticity.

## EXAMPLES

### EXAMPLE 1

$builder = New-KrJWTTokenBuilder | Protect-KrJWT -Base64Url "your_base64_url_secret"
$builder | Protect-KrJWT -HexadecimalKey "a1b2c3d4e5f6"
$builder | Protect-KrJWT -Passphrase (ConvertTo-SecureString "mysecret" -AsPlainText -Force)
$builder | Protect-KrJWT -PemPath "C:\path\to\key.pem"
$builder | Protect-KrJWT -Certificate (Get-Item "C:\path\to\certificate.pfx")
This example demonstrates how to create a JWT token builder and apply various signing methods.

## PARAMETERS

### -Algorithm

The algorithm to use for signing the JWT token.
Defaults to 'Auto' which will determine the algorithm based on the provided secret or certificate.

```yaml
Type: System.String
DefaultValue: Auto
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

### -Base64Url

The Base64Url encoded secret to use for signing the JWT token.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SecretBase64Url
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Builder

The JWT token builder to modify.

```yaml
Type: Kestrun.Jwt.JwtTokenBuilder
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -HexadecimalKey

The hexadecimal key to use for signing the JWT token.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SecretHexadecimalKey
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -JwkJson

The JWK JSON string to use for signing the JWT token.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: JwkJson
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -JwkPath

The path to a JWK file to use for signing the JWT token.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: JwkPath
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Passphrase

The passphrase to use for signing the JWT token, provided as a secure string.

```yaml
Type: System.Security.SecureString
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SecretPassphrase
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PemPath

The path to a PEM file containing the RSA key to use for signing the JWT token.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: PemPath
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -X509Certificate

The X509 certificate to use for signing the JWT token.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509Certificate2
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Certificate
  Position: Named
  IsRequired: true
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

### Kestrun.Jwt.JwtTokenBuilder

{{ Fill in the Description }}

## OUTPUTS

### [Kestrun.Jwt.JwtTokenBuilder]
The modified JWT token builder with the signing configuration applied.

{{ Fill in the Description }}

### Kestrun.Jwt.JwtTokenBuilder

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Jwt module and is used to build JWT tokens
Maps to JwtTokenBuilder.SignWithSecret, JwtTokenBuilder.SignWithSecretHex, JwtTokenBuilder.SignWithSecretPassphrase,
JwtTokenBuilder.SignWithRsaPem, and JwtTokenBuilder.SignWithCertificate methods.


## RELATED LINKS

- [](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken)