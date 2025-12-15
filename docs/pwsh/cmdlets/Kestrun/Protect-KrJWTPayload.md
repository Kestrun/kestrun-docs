---
layout: default
parent: PowerShell Cmdlets
nav_order: 147
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Protect-KrJWTPayload
---

# Protect-KrJWTPayload

## SYNOPSIS

Encrypts the JWT payload using a secret, PEM file, or X509 certificate.

## SYNTAX

### Base64Url (Default)

```powershell
Protect-KrJWTPayload -Builder <JwtTokenBuilder> -Base64Url <string> [-KeyAlg <string>]
 [-EncAlg <string>] [<CommonParameters>]
```

### HexadecimalKey

```powershell
Protect-KrJWTPayload -Builder <JwtTokenBuilder> -HexadecimalKey <string> [-KeyAlg <string>]
 [-EncAlg <string>] [<CommonParameters>]
```

### Bytes

```powershell
Protect-KrJWTPayload -Builder <JwtTokenBuilder> -KeyBytes <byte[]> [-KeyAlg <string>]
 [-EncAlg <string>] [<CommonParameters>]
```

### PemPath

```powershell
Protect-KrJWTPayload -Builder <JwtTokenBuilder> -PemPath <string> [-KeyAlg <string>]
 [-EncAlg <string>] [<CommonParameters>]
```

### Certificate

```powershell
Protect-KrJWTPayload -Builder <JwtTokenBuilder> -X509Certificate <X509Certificate2>
 [-KeyAlg <string>] [-EncAlg <string>] [<CommonParameters>]
```

### JwkJson

```powershell
Protect-KrJWTPayload -Builder <JwtTokenBuilder> -JwkJson <string> [-KeyAlg <string>]
 [-EncAlg <string>] [<CommonParameters>]
```

### JwkPath

```powershell
Protect-KrJWTPayload -Builder <JwtTokenBuilder> -JwkPath <string> [-KeyAlg <string>]
 [-EncAlg <string>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Protect-KrJWTPayload configures a JWT token builder to encrypt the payload using a variety of key sources:
- Base64Url-encoded secret
- Hexadecimal key
- Raw byte array
- PEM file containing an RSA public key
- X509 certificate

The function ensures confidentiality of the JWT payload by applying encryption with the specified key and algorithms.

## EXAMPLES

### EXAMPLE 1

$builder = New-KrJWTTokenBuilder | Protect-KrJWTPayload -Base64Url "your_base64_url_secret"
$builder | Protect-KrJWTPayload -HexadecimalKey "a1b2c3d4e5f6"
$builder | Protect-KrJWTPayload -KeyBytes (Get-Content -Path "C:\path\to\key.bin" -Encoding Byte)
$builder | Protect-KrJWTPayload -KeyAlg "HS256" -EncAlg "A256GCM"
$builder | Protect-KrJWTPayload -PemPath "C:\path\to\key.pem"
$builder | Protect-KrJWTPayload -X509Certificate (Get-Item "C:\path\to\certificate.pfx")

## PARAMETERS

### -Base64Url

The Base64Url-encoded secret used to encrypt the JWT token payload.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Base64Url
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

### -EncAlg

The encryption algorithm to use (e.g., "A256GCM").
Optional.

```yaml
Type: System.String
DefaultValue: ''
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

### -HexadecimalKey

The hexadecimal key used to encrypt the JWT token payload.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: HexadecimalKey
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

The JSON Web Key (JWK) in JSON format used for encryption.

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

The path to a JSON Web Key (JWK) file used for encryption.

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

### -KeyAlg

The key algorithm to use for encryption (e.g., "HS256", "RS256").
Optional.

```yaml
Type: System.String
DefaultValue: ''
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

### -KeyBytes

The byte array used to encrypt the JWT token payload.

```yaml
Type: System.Byte[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Bytes
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

The path to a PEM file containing the RSA public key for encryption.

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

The X509 certificate used for encryption.

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
Returns the modified JWT token builder with encryption applied.

{{ Fill in the Description }}

### Kestrun.Jwt.JwtTokenBuilder

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Jwt module and is used to build and protect JWT tokens.
Internally maps to JwtTokenBuilder.EncryptWithSecretB64, EncryptWithSecretHex, EncryptWithSecret,
EncryptWithPemPublic, and EncryptWithCertificate methods.


## RELATED LINKS

- [](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken)