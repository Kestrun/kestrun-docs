---
layout: default
parent: PowerShell Cmdlets
title: Invoke-KrCookieSignIn
nav_order: 102
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

### Claims (Default)
```
Invoke-KrCookieSignIn [-Scheme <String>] [-Claims <Claim[]>] [-PassThru] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### SimpleIdentity
```
Invoke-KrCookieSignIn [-Scheme <String>] [-Name <String>] [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AuthenticationProperties_Claim
```
Invoke-KrCookieSignIn [-Scheme <String>] [-Claims <Claim[]>]
 -AuthenticationProperties <AuthenticationProperties> [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AuthenticationPropertiesItems_BuildIdentity
```
Invoke-KrCookieSignIn [-Scheme <String>] [-Claims <Claim[]>] [-ExpiresUtc <Object>] [-IssuedUtc <Object>]
 [-IsPersistent] [-AllowRefresh] [-RedirectUri <String>] [-Items <Hashtable>] [-Parameters <Hashtable>]
 [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### BuildIdentity
```
Invoke-KrCookieSignIn [-Scheme <String>] [-Claims <Claim[]>] [-PassThru] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### AuthenticationProperties_Identity
```
Invoke-KrCookieSignIn [-Scheme <String>] [-Identity <ClaimsIdentity>]
 [-AuthenticationProperties <AuthenticationProperties>] [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AuthenticationPropertiesItems_Identity
```
Invoke-KrCookieSignIn [-Scheme <String>] [-Identity <ClaimsIdentity>] [-ExpiresUtc <Object>]
 [-IssuedUtc <Object>] [-IsPersistent] [-AllowRefresh] [-RedirectUri <String>] [-Items <Hashtable>]
 [-Parameters <Hashtable>] [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Identity
```
Invoke-KrCookieSignIn [-Scheme <String>] -Identity <ClaimsIdentity> [-PassThru] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### SimpleIdentity_BuildIdentity
```
Invoke-KrCookieSignIn [-Scheme <String>] [-ExpiresUtc <Object>] [-IssuedUtc <Object>] [-IsPersistent]
 [-AllowRefresh] [-RedirectUri <String>] [-Items <Hashtable>] [-Parameters <Hashtable>] [-PassThru] [-WhatIf]
 [-Confirm] [<CommonParameters>]
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
Parameter Sets: SimpleIdentity
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Claims
One or more pre-constructed System.Security.Claims.Claim objects to include.

```yaml
Type: Claim[]
Parameter Sets: Claims, AuthenticationProperties_Claim, AuthenticationPropertiesItems_BuildIdentity, BuildIdentity
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Identity
Existing ClaimsIdentity to use instead of constructing a new one.

```yaml
Type: ClaimsIdentity
Parameter Sets: AuthenticationProperties_Identity, AuthenticationPropertiesItems_Identity
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

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

### -AuthenticationProperties
Existing AuthenticationProperties to use instead of constructing a new one.

```yaml
Type: AuthenticationProperties
Parameter Sets: AuthenticationProperties_Claim
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: AuthenticationProperties
Parameter Sets: AuthenticationProperties_Identity
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpiresUtc
Explicit expiration timestamp for the authentication ticket.

```yaml
Type: Object
Parameter Sets: AuthenticationPropertiesItems_BuildIdentity, AuthenticationPropertiesItems_Identity, SimpleIdentity_BuildIdentity
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
Parameter Sets: AuthenticationPropertiesItems_BuildIdentity, AuthenticationPropertiesItems_Identity, SimpleIdentity_BuildIdentity
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
Parameter Sets: AuthenticationPropertiesItems_BuildIdentity, AuthenticationPropertiesItems_Identity, SimpleIdentity_BuildIdentity
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
Parameter Sets: AuthenticationPropertiesItems_BuildIdentity, AuthenticationPropertiesItems_Identity, SimpleIdentity_BuildIdentity
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
Parameter Sets: AuthenticationPropertiesItems_BuildIdentity, AuthenticationPropertiesItems_Identity, SimpleIdentity_BuildIdentity
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Items
Hashtable of string key-Value pairs to add to the Items collection on AuthenticationProperties.

```yaml
Type: Hashtable
Parameter Sets: AuthenticationPropertiesItems_BuildIdentity, AuthenticationPropertiesItems_Identity, SimpleIdentity_BuildIdentity
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parameters
Hashtable of string key-Value pairs to add to the Parameters collection on AuthenticationProperties.

```yaml
Type: Hashtable
Parameter Sets: AuthenticationPropertiesItems_BuildIdentity, AuthenticationPropertiesItems_Identity, SimpleIdentity_BuildIdentity
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
