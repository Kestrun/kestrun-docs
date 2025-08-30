---
layout: default
parent: PowerShell Cmdlets
title: Add-KrUserClaim
nav_order: 42
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrUserClaim

## SYNOPSIS
Adds a claim to the current user.
This function allows you to add a new claim to the current user's identity.
The claim can be of any type, and you must specify the claim type and value.
The function will return the updated claims collection.

## SYNTAX

### ClaimType (Default)
```
Add-KrUserClaim [-Claims <Claim[]>] -ClaimType <String> -Value <String> [<CommonParameters>]
```

### UserClaimType
```
Add-KrUserClaim [-Claims <Claim[]>] -UserClaimType <UserIdentityClaim> -Value <String> [<CommonParameters>]
```

## DESCRIPTION
This function is designed to be used in the context of Kestrun for managing user claims.
It supports both string-based claim types and user identity claims.
Claims can be added to the user's identity using this function.
This function is part of the Kestrun.Claims module and is used to manage user claims.
It maps to ClaimCollection.Add method.

## EXAMPLES

### EXAMPLE 1
```powershell
Adds a claim to the current user's identity.
This example demonstrates how to add a claim using the ClaimType and Value parameters.
Add-KrUserClaim -ClaimType "customClaimType" -Value "customClaimValue"
```

### EXAMPLE 2
```powershell
Adds a claim to the current user's identity.
This example demonstrates how to add a claim using the UserClaimType and Value parameters.
Add-KrUserClaim -UserClaimType "Email" -Value "user@example.com"
```

## PARAMETERS

### -Claims
The claims to add to the current user's identity.
This can be a single claim or an array of claims.
If this parameter is specified, the ClaimType and Value parameters are ignored.
If this parameter is not specified, you must provide the ClaimType and Value parameters.

```yaml
Type: Claim[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ClaimType
The type of claim to add to the user's identity.
This is required if the Claims parameter is not specified.
It can be a string representing the claim type or a Kestrun.Claims.UserIdentityClaim enum value.

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
The user identity claim type to use when adding the claim.
This is required if the Claims parameter is not specified.
It must be a valid Kestrun.Claims.UserIdentityClaim enum value.

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
The value of the claim to add to the user's identity.
This is required if the Claims parameter is not specified.
It can be a string or a Kestrun.Claims.UserIdentityClaim enum value.
If the Claims parameter is specified, this parameter is ignored.

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

### System.Security.Claims.Claim[]
### System.Array
## NOTES
This function is part of the Kestrun.Claims module and is used to manage user claims.
It maps to ClaimCollection.Add method.

## RELATED LINKS
