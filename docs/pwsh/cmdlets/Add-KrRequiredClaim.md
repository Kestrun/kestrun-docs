---
layout: default
parent: PowerShell Cmdlets
title: Add-KrRequiredClaim
nav_order: 34
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrRequiredClaim

## SYNOPSIS
Adds required claims to a collection of claims for authorization purposes.

## SYNTAX

```
Add-KrRequiredClaim [[-Claims] <Claim[]>] [[-ClaimType] <UserIdentityClaim>] [-AllowedValues] <String[]>
 [<CommonParameters>]
```

## DESCRIPTION
This cmdlet takes an existing array of claims and adds new required claims based on the specified claim type and allowed values.
It can be used to build a collection of claims that can be passed to an authorization policy.

## EXAMPLES

### EXAMPLE 1
```powershell
$claims = @()
$requiredClaims = Add-KrRequiredClaims -Claims $claims -ClaimType UserIdentityClaim -AllowedValues "user1", "user2"
This example creates an empty array of claims and adds a required claim of type UserIdentityClaim with allowed values "user1" and "user2".
The resulting $requiredClaims array will contain the new claim.
```

## PARAMETERS

### -Claims
An existing array of claims to which the new required claims will be added.
This parameter is optional.

```yaml
Type: Claim[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ClaimType
The type of claim to add.
This can be specified using the UserIdentityClaim enum.

```yaml
Type: UserIdentityClaim
Parameter Sets: (All)
Aliases:
Accepted values: Actor, Anonymous, Authentication, AuthenticationInstant, AuthenticationMethod, AuthorizationDecision, Country, DateOfBirth, Dns, DenyOnlyPrimaryGroupSid, DenyOnlyPrimarySid, DenyOnlySid, DenyOnlyWindowsDeviceGroup, Email, EmailAddress, Expiration, GivenName, Gender, GroupSid, Hash, HomePhone, IsPersistent, Issuer, Locality, MobilePhone, Name, NameIdentifier, OtherPhone, PostalCode, PrimaryGroupSid, Ppid, PrivatePpid, Role, Rsa, SerialNumber, Sid, StateOrProvince, Spn, StreetAddress, Surname, Thumbprint, UserData, Upn, Uri, Version, Webpage, System, WindowsAccountName, WindowsDevice, WindowsDeviceGroup, WindowsFqbnVersion, WindowsGroupSid, WindowsGroup, WindowsDeviceClaim, WindowsSubAuthority, WindowsSid, PrimarySid

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowedValues
An array of allowed values for the specified claim type.
This parameter is mandatory.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### An array of System.Security.Claims.Claim objects, including the newly added required claims.
## NOTES
This cmdlet is designed to be used in the context of Kestrun authorization policies.

## RELATED LINKS
