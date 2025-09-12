---
layout: default
parent: PowerShell Cmdlets
title: Add-KrAuthorizationPolicy
nav_order: 3
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrAuthorizationPolicy

## SYNOPSIS
Adds an authorization policy to a Kestrun host.

## SYNTAX

```
Add-KrAuthorizationPolicy [[-Server] <KestrunHost>] [-Name] <String> [[-RequireClaims] <Claim[]>]
 [[-RequireRoles] <String[]>] [[-AuthenticationSchemes] <String[]>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet adds an authorization policy to a Kestrun host instance.
The policy can require specific claims and/or roles, and can specify authentication schemes.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrAuthorizationPolicy -Name "AdminPolicy" -RequireRoles "Admin" -RequireClaims (New-Object System.Security.Claims.Claim("Department", "IT"))
Adds an authorization policy named "AdminPolicy" that requires the "Admin" role and a claim of type "Department" with value "IT".
```

## PARAMETERS

### -Server
The Kestrun host instance to which the policy will be added.
If not specified, the default server is used.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
The name of the authorization policy.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequireClaims
An array of claims that are required for the policy.

```yaml
Type: Claim[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequireRoles
An array of roles that are required for the policy.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AuthenticationSchemes
An array of authentication schemes to use for the policy.
Default is 'Negotiate'.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: @('Negotiate')
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
{{ Fill PassThru Description }}

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
