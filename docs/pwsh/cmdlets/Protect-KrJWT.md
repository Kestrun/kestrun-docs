---
layout: default
parent: PowerShell Cmdlets
title: Protect-KrJWT
nav_order: 74
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Protect-KrJWT

## SYNOPSIS
Protects a JWT token using a specified secret or certificate.

## SYNTAX

### SecretBase64Url (Default)
```
Protect-KrJWT -Builder <JwtTokenBuilder> -Base64Url <String> [-Algorithm <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### SecretHexadecimalKey
```
Protect-KrJWT -Builder <JwtTokenBuilder> -HexadecimalKey <String> [-Algorithm <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### SecretPassphrase
```
Protect-KrJWT -Builder <JwtTokenBuilder> -Passphrase <SecureString> [-Algorithm <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### PemPath
```
Protect-KrJWT -Builder <JwtTokenBuilder> -PemPath <String> [-Algorithm <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### Certificate
```
Protect-KrJWT -Builder <JwtTokenBuilder> -X509Certificate <X509Certificate2> [-Algorithm <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
This function allows you to sign a JWT token with a secret or certificate, ensuring its integrity and authenticity.

## EXAMPLES

### EXAMPLE 1
```
$builder = New-KrJWTTokenBuilder | Protect-KrJWT -Base64Url "your_base64_url_secret"
$builder | Protect-KrJWT -HexadecimalKey "a1b2c3d4e5f6"
$builder | Protect-KrJWT -Passphrase (ConvertTo-SecureString "mysecret" -AsPlainText -Force)
$builder | Protect-KrJWT -PemPath "C:\path\to\key.pem"
$builder | Protect-KrJWT -Certificate (Get-Item "C:\path\to\certificate.pfx")
This example demonstrates how to create a JWT token builder and apply various signing methods.
```

## PARAMETERS

### -Builder
The JWT token builder to modify.

```yaml
Type: JwtTokenBuilder
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Base64Url
The Base64Url encoded secret to use for signing the JWT token.

```yaml
Type: String
Parameter Sets: SecretBase64Url
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HexadecimalKey
The hexadecimal key to use for signing the JWT token.

```yaml
Type: String
Parameter Sets: SecretHexadecimalKey
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Passphrase
The passphrase to use for signing the JWT token, provided as a secure string.

```yaml
Type: SecureString
Parameter Sets: SecretPassphrase
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PemPath
The path to a PEM file containing the RSA key to use for signing the JWT token.

```yaml
Type: String
Parameter Sets: PemPath
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -X509Certificate
{{ Fill X509Certificate Description }}

```yaml
Type: X509Certificate2
Parameter Sets: Certificate
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Algorithm
The algorithm to use for signing the JWT token.
Defaults to 'Auto' which will determine the algorithm based on the provided secret or certificate.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: Auto
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

### [Kestrun.Security.JwtTokenBuilder]
### The modified JWT token builder with the signing configuration applied.
## NOTES
This function is part of the Kestrun.Security module and is used to build JWT tokens
Maps to JwtTokenBuilder.SignWithSecret, JwtTokenBuilder.SignWithSecretHex, JwtTokenBuilder.SignWithSecretPassphrase,
JwtTokenBuilder.SignWithRsaPem, and JwtTokenBuilder.SignWithCertificate methods.

## RELATED LINKS

[https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet](https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet)

