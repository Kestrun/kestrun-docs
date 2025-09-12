---
layout: default
parent: PowerShell Cmdlets
title: New-KrCookieBuilder
nav_order: 83
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# New-KrCookieBuilder

## SYNOPSIS
Creates and configures a new \[Microsoft.AspNetCore.Http.CookieBuilder\] instance.

## SYNTAX

```
New-KrCookieBuilder [[-Name] <String>] [[-Domain] <String>] [[-Path] <String>] [-HttpOnly] [-IsEssential]
 [[-MaxAge] <Object>] [[-Expiration] <Object>] [[-SecurePolicy] <CookieSecurePolicy>]
 [[-SameSite] <SameSiteMode>] [[-Extensions] <String[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Provides a PowerShell-friendly wrapper for constructing CookieBuilder objects with strongly-typed
properties commonly used when configuring cookie authentication.
All parameters are optional; any
not supplied retain the underlying default from CookieBuilder / ASP.NET Core.
This helper simplifies scripts by avoiding direct new() object + property assignment sequences.

## EXAMPLES

### EXAMPLE 1
```powershell
# Basic cookie
$cookie = New-KrCookieBuilder -Name 'AuthCookie' -HttpOnly -SameSite Lax
```

### EXAMPLE 2
```powershell
# Full configuration
$cookie = New-KrCookieBuilder -Name 'AuthCookie' -Domain 'example.local' -Path '/' -SecurePolicy Always \
    -IsEssential -MaxAge (New-TimeSpan -Hours 1) -Expires (Get-Date).AddHours(1) -SameSite Strict -HttpOnly
```

## PARAMETERS

### -Name
The name of the cookie.
If not specified, a framework default may be used by the consumer.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Domain
The domain to associate the cookie with.
If not specified, the cookie is associated with the host of the request.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
The path to associate the cookie with.
If not specified, the cookie is associated with the root path ('/').

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HttpOnly
Indicates whether a cookie is inaccessible by client-side script but specific components may use a different value.

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

### -IsEssential
Indicates if this cookie is essential for the application to function correctly.
If true then
consent policy checks may be bypassed.SameSiteMode Default is $false.

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

### -MaxAge
The maximum age of the cookie.
Accepts a TimeSpan or a value convertible to Time
Span (e.g.
string like '00:30:00' or integer seconds).
If not specified, the cookie is a session cookie.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Expiration
Alias for Expires; provided for convenience.
Accepts the same types and conversion as Expires.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SecurePolicy
The secure policy for the cookie.
Accepts a value from the CookieSecurePolicy enum.
If not specified, the default is CookieSecurePolicy.SameAsRequest.
- SameAsRequest: Cookie is secure if the request is HTTPS; supports both HTTP and HTTPS for development.
- Always: Cookie is always marked secure; use when all pages are served over HTTPS.
- None: Cookie is never marked secure; not recommended due to potential security risks on HTTP connections.

```yaml
Type: CookieSecurePolicy
Parameter Sets: (All)
Aliases:
Accepted values: SameAsRequest, Always, None

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SameSite
The SameSite mode for the cookie.
Accepts a value from the \[Microsoft.AspNetCore.Http.SameSiteMode\] enum:
- Unspecified (-1): No SameSite field will be set; the client should follow its default cookie policy.
- None (0): Indicates the client should disable same-site restrictions.
- Lax: Indicates the client should send the cookie with "same-site" requests, and with "cross-site" top-level navigations.
- Strict: Indicates the client should only send the cookie with "same-site" requests.

```yaml
Type: SameSiteMode
Parameter Sets: (All)
Aliases:
Accepted values: None, Lax, Strict, Unspecified

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Extensions
Additional cookie attributes to append to the Set-Cookie header.
Accepts an array of strings

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
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

### Microsoft.AspNetCore.Http.CookieBuilder
## NOTES
Setting both -MaxAge and -Expires is allowed; ASP.NET Core will honour both where applicable.
If -Name is omitted a framework default may be used by the consumer.

## RELATED LINKS
