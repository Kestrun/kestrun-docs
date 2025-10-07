---
layout: default
parent: PowerShell Cmdlets
title: Add-KrClaimPolicy
nav_order: 7
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrClaimPolicy

## SYNOPSIS
Adds a new claim policy to the KestrunClaims system.

## SYNTAX

### ClaimType (Default)
```
Add-KrClaimPolicy -Builder <ClaimPolicyBuilder> -PolicyName <String> -ClaimType <String>
 -AllowedValues <String[]> [<CommonParameters>]
```

### UserClaimType
```
Add-KrClaimPolicy -Builder <ClaimPolicyBuilder> -PolicyName <String> -UserClaimType <UserIdentityClaim>
 -AllowedValues <String[]> [<CommonParameters>]
```

## DESCRIPTION
This function allows you to define a new claim policy by specifying the policy name, claim type, and allowed values.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrClaimPolicy -Builder $builder -PolicyName "ExamplePolicy" -ClaimType "ExampleClaim" -AllowedValues "Value1", "Value2"
This is an example of how to use the Add-KrClaimPolicy function.
```

## PARAMETERS

### -Builder
The claim policy builder instance used to create the policy.

```yaml
Type: ClaimPolicyBuilder
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PolicyName
The name of the policy to be created.

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

### -ClaimType
The type of claim being defined.

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
The user identity claim type.

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

### -AllowedValues
The values that are allowed for this claim.

```yaml
Type: String[]
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

### Kestrun.Claims.ClaimPolicyBuilder
## NOTES
This function is part of the Kestrun.Jwt module and is used to build Claims

## RELATED LINKS
