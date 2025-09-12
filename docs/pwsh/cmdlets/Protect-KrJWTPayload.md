---
layout: default
parent: PowerShell Cmdlets
title: Protect-KrJWTPayload
nav_order: 90
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Protect-KrJWTPayload

## SYNOPSIS
Encrypts the JWT payload using a secret, PEM file, or X509 certificate.

## SYNTAX

### Base64Url (Default)
```
Protect-KrJWTPayload -Builder <JwtTokenBuilder> -Base64Url <String> [-KeyAlg <String>] [-EncAlg <String>]
 [<CommonParameters>]
```

### HexadecimalKey
```
Protect-KrJWTPayload -Builder <JwtTokenBuilder> -HexadecimalKey <String> [-KeyAlg <String>] [-EncAlg <String>]
 [<CommonParameters>]
```

### Bytes
```
Protect-KrJWTPayload -Builder <JwtTokenBuilder> -KeyBytes <Byte[]> [-KeyAlg <String>] [-EncAlg <String>]
 [<CommonParameters>]
```

### PemPath
```
Protect-KrJWTPayload -Builder <JwtTokenBuilder> [-KeyAlg <String>] [-EncAlg <String>] -PemPath <String>
 [<CommonParameters>]
```

### Certificate
```
Protect-KrJWTPayload -Builder <JwtTokenBuilder> [-KeyAlg <String>] [-EncAlg <String>]
 -X509Certificate <X509Certificate2> [<CommonParameters>]
```

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
```powershell
$builder = New-KrJWTTokenBuilder | Protect-KrJWTPayload -Base64Url "your_base64_url_secret"
$builder | Protect-KrJWTPayload -HexadecimalKey "a1b2c3d4e5f6"
$builder | Protect-KrJWTPayload -KeyBytes (Get-Content -Path "C:\path\to\key.bin" -Encoding Byte)
$builder | Protect-KrJWTPayload -KeyAlg "HS256" -EncAlg "A256GCM"
$builder | Protect-KrJWTPayload -PemPath "C:\path\to\key.pem"
$builder | Protect-KrJWTPayload -X509Certificate (Get-Item "C:\path\to\certificate.pfx")
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

### -HexadecimalKey
The hexadecimal key used to encrypt the JWT token payload.

```yaml
Type: String
Parameter Sets: HexadecimalKey
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Base64Url
The Base64Url-encoded secret used to encrypt the JWT token payload.

```yaml
Type: String
Parameter Sets: Base64Url
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyBytes
The byte array used to encrypt the JWT token payload.

```yaml
Type: Byte[]
Parameter Sets: Bytes
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyAlg
The key algorithm to use for encryption (e.g., "HS256", "RS256").
Optional.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EncAlg
The encryption algorithm to use (e.g., "A256GCM").
Optional.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PemPath
The path to a PEM file containing the RSA public key for encryption.

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
The X509 certificate used for encryption.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### [Kestrun.Jwt.JwtTokenBuilder]
### Returns the modified JWT token builder with encryption applied.
## NOTES
This function is part of the Kestrun.Jwt module and is used to build and protect JWT tokens.
Internally maps to JwtTokenBuilder.EncryptWithSecretB64, EncryptWithSecretHex, EncryptWithSecret,
EncryptWithPemPublic, and EncryptWithCertificate methods.

## RELATED LINKS
