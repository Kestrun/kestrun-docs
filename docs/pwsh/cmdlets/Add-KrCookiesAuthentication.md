---
layout: default
parent: PowerShell Cmdlets
title: Add-KrCookiesAuthentication
nav_order: 6
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.kestrun.dev/docs/powershell/kestrun/authentication
schema: 2.0.0
---

# Add-KrCookiesAuthentication

## SYNOPSIS
Adds cookie authentication to the Kestrun server.

## SYNTAX

### Items (Default)
```
Add-KrCookiesAuthentication [-Server <KestrunHost>] -Name <String> [-ClaimPolicy <ClaimPolicyConfig>]
 [-SlidingExpiration] [-LoginPath <String>] [-LogoutPath <String>] [-AccessDeniedPath <String>]
 [-ReturnUrlParameter <String>] [-ExpireTimeSpan <TimeSpan>] [-Cookie <CookieBuilder>] [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### Options
```
Add-KrCookiesAuthentication [-Server <KestrunHost>] -Name <String> -Options <CookieAuthenticationOptions>
 [-ClaimPolicy <ClaimPolicyConfig>] [-Cookie <CookieBuilder>] [-PassThru] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
Configures the Kestrun server to use cookie authentication for incoming requests.

## EXAMPLES

### EXAMPLE 1
```
Add-KrCookiesAuthentication -Server $myServer -Name 'MyCookieAuth' -Options $myCookieOptions -ClaimPolicy $myClaimPolicy
Adds cookie authentication to the specified Kestrun server with the provided options and claim policy.
```

### EXAMPLE 2
```
Add-KrCookiesAuthentication -Name 'MyCookieAuth' -SlidingExpiration -LoginPath '/Login' -LogoutPath '/Logout' -AccessDeniedPath '/Denied' -ExpireTimeSpan (New-TimeSpan -Days 14)
Configures cookie authentication with sliding expiration and custom paths for login, logout, and access denied
```

## PARAMETERS

### -Server
The Kestrun server instance to configure.
If not specified, the current server instance is used.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
The name of the cookie authentication scheme.

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

### -Options
The cookie authentication options to configure.
If not specified, default options are used.

```yaml
Type: CookieAuthenticationOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClaimPolicy
The claim policy configuration to apply to the authentication scheme.

```yaml
Type: ClaimPolicyConfig
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SlidingExpiration
Indicates whether the cookie expiration should be sliding.
Defaults to false.

```yaml
Type: SwitchParameter
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoginPath
The path to the login page.
If not specified, defaults to "/Account/Login".

```yaml
Type: String
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogoutPath
The path to the logout page.
If not specified, defaults to "/Account/Logout".

```yaml
Type: String
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccessDeniedPath
The path to the access denied page.
If not specified, defaults to "/Account/AccessDenied".

```yaml
Type: String
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReturnUrlParameter
The name of the query parameter used to return the URL after login.
Defaults to "ReturnUrl".

```yaml
Type: String
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpireTimeSpan
The time span after which the cookie expires.
Defaults to 14 days.

```yaml
Type: TimeSpan
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Cookie
The cookie configuration to use.
If not specified, default cookie settings are applied.

```yaml
Type: CookieBuilder
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
If specified, the cmdlet returns the modified server instance after configuration.

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

### Kestrun.Hosting.KestrunHost
## NOTES
This cmdlet is part of the Kestrun PowerShell module and is used to configure cookie authentication for Kestrun servers.

## RELATED LINKS

[https://docs.kestrun.dev/docs/powershell/kestrun/authentication](https://docs.kestrun.dev/docs/powershell/kestrun/authentication)

