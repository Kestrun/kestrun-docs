---
layout: default
parent: PowerShell Cmdlets
title: Invoke-KrCookieSignIn
nav_order: 73
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Invoke-KrCookieSignIn

## SYNOPSIS
Signs in a user issuing an authentication cookie for the given scheme.

## SYNTAX

### BuildIdentity (Default)
```
Invoke-KrCookieSignIn [-Scheme <String>] [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### BuildIdentityTable
```
Invoke-KrCookieSignIn [-Scheme <String>] [-Name <String>] -ClaimTable <Hashtable> [-ExpiresUtc <Object>]
 [-IssuedUtc <Object>] [-IsPersistent] [-AllowRefresh] [-RedirectUri <String>] [-Items <Hashtable>]
 [-Parameters <Hashtable>] [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### BuildIdentityArray
```
Invoke-KrCookieSignIn [-Scheme <String>] [-Name <String>] -Claim <Claim[]> [-ExpiresUtc <Object>]
 [-IssuedUtc <Object>] [-IsPersistent] [-AllowRefresh] [-RedirectUri <String>] [-Items <Hashtable>]
 [-Parameters <Hashtable>] [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Identity
```
Invoke-KrCookieSignIn [-Scheme <String>] -Identity <ClaimsIdentity> [-ExpiresUtc <Object>]
 [-IssuedUtc <Object>] [-IsPersistent] [-AllowRefresh] [-RedirectUri <String>] [-Items <Hashtable>]
 [-Parameters <Hashtable>] [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Wraps SignInAsync on the current HTTP context to create a cookie-based session.
You can supply an existing ClaimsIdentity or provide claims via -Name, -Claim, or -ClaimTable.
Optionally sets authentication properties like persistence and expiration.
Designed for use inside Kestrun route script blocks where $Context is available.

## EXAMPLES

### EXAMPLE 1
```powershell
Invoke-KrCookieSignIn -Name 'admin'
```

### EXAMPLE 2
```powershell
Invoke-KrCookieSignIn -Scheme 'Cookies' -ClaimTable @{ role = 'admin'; dept = 'it' } -IsPersistent -ExpiresUtc (Get-Date).AddMinutes(30)
```

## PARAMETERS

### -Scheme
Authentication scheme to use (default 'Cookies').

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: Cookies
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Convenience parameter to add a ClaimTypes.Name claim.

```yaml
Type: String
Parameter Sets: BuildIdentityTable, BuildIdentityArray
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Claim
One or more pre-constructed System.Security.Claims.Claim objects to include.

```yaml
Type: Claim[]
Parameter Sets: BuildIdentityArray
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClaimTable
Hashtable of claimType =\> value.
Adds each as a claim.

```yaml
Type: Hashtable
Parameter Sets: BuildIdentityTable
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Identity
Existing ClaimsIdentity to use instead of constructing a new one.

```yaml
Type: ClaimsIdentity
Parameter Sets: Identity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpiresUtc
Explicit expiration timestamp for the authentication ticket.

```yaml
Type: Object
Parameter Sets: BuildIdentityTable, BuildIdentityArray, Identity
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IssuedUtc
Explicit issued timestamp for the authentication ticket.

```yaml
Type: Object
Parameter Sets: BuildIdentityTable, BuildIdentityArray, Identity
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsPersistent
Marks the cookie as persistent (survives browser session) if supported.

```yaml
Type: SwitchParameter
Parameter Sets: BuildIdentityTable, BuildIdentityArray, Identity
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowRefresh
Allows the authentication session to be refreshed (sliding expiration scenarios).

```yaml
Type: SwitchParameter
Parameter Sets: BuildIdentityTable, BuildIdentityArray, Identity
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -RedirectUri
Sets the RedirectUri property on AuthenticationProperties.

```yaml
Type: String
Parameter Sets: BuildIdentityTable, BuildIdentityArray, Identity
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Items
Hashtable of string key-value pairs to add to the Items collection on AuthenticationProperties.

```yaml
Type: Hashtable
Parameter Sets: BuildIdentityTable, BuildIdentityArray, Identity
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parameters
Hashtable of string key-value pairs to add to the Parameters collection on AuthenticationProperties.

```yaml
Type: Hashtable
Parameter Sets: BuildIdentityTable, BuildIdentityArray, Identity
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Returns the created ClaimsPrincipal instead of no output.

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

### -WhatIf
Shows what would happen if the command runs.
The command is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the command.
The command is not run unless you respond affirmatively.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

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

### System.Security.Claims.ClaimsPrincipal (when -PassThru specified)
## NOTES

## RELATED LINKS
