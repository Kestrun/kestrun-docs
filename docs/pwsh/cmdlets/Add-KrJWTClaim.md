---
layout: default
parent: PowerShell Cmdlets
title: Add-KrJWTClaim
nav_order: 35
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrJWTClaim

## SYNOPSIS
Adds a claim to the JWT token builder.

## SYNTAX

### ClaimType (Default)
```
Add-KrJWTClaim -Builder <JwtTokenBuilder> -ClaimType <String> -Value <String> [<CommonParameters>]
```

### UserClaimType
```
Add-KrJWTClaim -Builder <JwtTokenBuilder> -UserClaimType <UserIdentityClaim> -Value <String>
 [<CommonParameters>]
```

## DESCRIPTION
This function adds a claim to the JWT token builder, allowing for the specification of additional data.

## EXAMPLES

### EXAMPLE 1
```powershell
$builder = New-KrJWTTokenBuilder | Add-KrJWTClaim -Type "role" -Value "admin"
This example creates a new JWT token builder and adds a claim to it.
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

### -ClaimType
The type of the claim to add.

```yaml
Type: String
Parameter Sets: ClaimType
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserClaimType
The user-specific type of the claim to add, such as "Admin", "User", etc.
This parameter is used when the claim type is based on user identity claims.

```yaml
Type: UserIdentityClaim
Parameter Sets: UserClaimType
Aliases:
Accepted values: Actor, Anonymous, Authentication, AuthenticationInstant, AuthenticationMethod, AuthorizationDecision, Country, DateOfBirth, Dns, DenyOnlyPrimaryGroupSid, DenyOnlyPrimarySid, DenyOnlySid, DenyOnlyWindowsDeviceGroup, Email, EmailAddress, Expiration, GivenName, Gender, GroupSid, Hash, HomePhone, IsPersistent, Issuer, Locality, MobilePhone, Name, NameIdentifier, OtherPhone, PostalCode, PrimaryGroupSid, Ppid, PrivatePpid, Role, Rsa, SerialNumber, Sid, StateOrProvince, Spn, StreetAddress, Surname, Thumbprint, UserData, Upn, Uri, Version, Webpage, System, WindowsAccountName, WindowsDevice, WindowsDeviceGroup, WindowsFqbnVersion, WindowsGroupSid, WindowsGroup, WindowsDeviceClaim, WindowsSubAuthority, WindowsSid, PrimarySid

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Value
The value of the claim to add.

```yaml
Type: String
Parameter Sets: (All)
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
### The modified JWT token builder.
## NOTES
This function is part of the Kestrun.Jwt module and is used to build JWT tokens
Maps to JwtTokenBuilder.AddClaim

## RELATED LINKS
