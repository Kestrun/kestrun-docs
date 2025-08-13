---
layout: default
parent: PowerShell Cmdlets
title: Add-KrClaimPolicy
nav_order: 5
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.authentication.apikey.apikeyauthenticationoptions?view=aspnetcore-8.0
schema: 2.0.0
---

# Add-KrClaimPolicy

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### ClaimType (Default)
```
Add-KrClaimPolicy -Builder <ClaimPolicyBuilder> -PolicyName <String> -ClaimType <String>
 -AllowedValues <String[]> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### UserClaimType
```
Add-KrClaimPolicy -Builder <ClaimPolicyBuilder> -PolicyName <String> -UserClaimType <UserIdentityClaim>
 -AllowedValues <String[]> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AllowedValues
{{ Fill AllowedValues Description }}

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

### -Builder
{{ Fill Builder Description }}

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

### -ClaimType
{{ Fill ClaimType Description }}

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

### -PolicyName
{{ Fill PolicyName Description }}

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

### -UserClaimType
{{ Fill UserClaimType Description }}

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

### Kestrun.Claims.ClaimPolicyBuilder
## OUTPUTS

### Kestrun.Claims.ClaimPolicyBuilder
## NOTES

## RELATED LINKS
