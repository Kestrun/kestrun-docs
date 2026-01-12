---
layout: default
parent: PowerShell Cmdlets
nav_order: 12
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.kestrun.dev/docs/powershell/kestrun/authentication
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Add-KrCookiesAuthentication
---

# Add-KrCookiesAuthentication

## SYNOPSIS

Adds cookie authentication to the Kestrun server.

## SYNTAX

### Items (Default)

```powershell
Add-KrCookiesAuthentication [-Server <KestrunHost>] [-AuthenticationScheme <string>]
 [-DisplayName <string>] [-DocId <string[]>] [-Description <string>] [-Deprecated <string>]
 [-ClaimPolicy <ClaimPolicyConfig>] [-SlidingExpiration] [-LoginPath <string>]
 [-LogoutPath <string>] [-AccessDeniedPath <string>] [-ReturnUrlParameter <string>]
 [-ExpireTimeSpan <timespan>] [-Cookie <CookieBuilder>] [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Add-KrCookiesAuthentication -Options <CookieAuthenticationOptions> [-Server <KestrunHost>]
 [-AuthenticationScheme <string>] [-DisplayName <string>] [-DocId <string[]>]
 [-ClaimPolicy <ClaimPolicyConfig>] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Configures the Kestrun server to use cookie authentication for incoming requests.

## EXAMPLES

### EXAMPLE 1

Add-KrCookiesAuthentication -Server $myServer -Name 'MyCookieAuth' -Options $myCookieOptions -ClaimPolicy $myClaimPolicy
Adds cookie authentication to the specified Kestrun server with the provided options and claim policy.

### EXAMPLE 2

Add-KrCookiesAuthentication -AuthenticationScheme 'MyCookieAuth' -SlidingExpiration -LoginPath '/Login' -LogoutPath '/Logout' -AccessDeniedPath '/Denied' -ExpireTimeSpan (New-TimeSpan -Days 14)
Configures cookie authentication with sliding expiration and custom paths for login, logout, and access denied

### EXAMPLE 3

$cookie = New-KrCookieBuilder -Name 'AuthCookie' -HttpOnly -SameSite Lax
Add-KrCookiesAuthentication -AuthenticationScheme 'MyCookieAuth' -Cookie $cookie -SlidingExpiration -ExpireTimeSpan (New-TimeSpan -Days 7)
Configures cookie authentication using a custom cookie with HttpOnly and SameSite=Lax, along with sliding expiration.

### EXAMPLE 4

New-KrCookieBuilder -Name 'AuthCookie' -HttpOnly -SameSite Lax |
    Add-KrCookiesAuthentication -AuthenticationScheme 'MyCookieAuth' -SlidingExpiration -ExpireTimeSpan (New-TimeSpan -Days 7)
Configures cookie authentication using a custom cookie created via pipeline with HttpOnly and SameSite=Lax, along with sliding expiration.

## PARAMETERS

### -AccessDeniedPath

The path to the access denied page.
If not specified, defaults to "/Account/AccessDenied".

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AuthenticationScheme

The name of the cookie authentication scheme.

```yaml
Type: System.String
DefaultValue: '[Kestrun.Authentication.AuthenticationDefaults]::CookiesAuthenticationSchemeName'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ClaimPolicy

The claim policy configuration to apply to the authentication scheme.

```yaml
Type: Kestrun.Claims.ClaimPolicyConfig
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Cookie

The cookie configuration to use.
If not specified, default cookie settings are applied.
Can be created with New-KrCookieBuilder and passed via pipeline.

```yaml
Type: Microsoft.AspNetCore.Http.CookieBuilder
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Deprecated

If specified, marks the authentication scheme as deprecated in OpenAPI documentation.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Description

A description of the cookie authentication scheme.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DisplayName

The display name for the authentication scheme.

```yaml
Type: System.String
DefaultValue: Cookies Authentication
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DocId

Documentation IDs for the authentication scheme.

```yaml
Type: System.String[]
DefaultValue: '[Kestrun.OpenApi.OpenApiDocDescriptor]::DefaultDocumentationIds'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ExpireTimeSpan

The time span after which the cookie expires.
Defaults to 14 days.

```yaml
Type: System.TimeSpan
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LoginPath

The path to the login page.
If not specified, defaults to "/Account/Login".

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LogoutPath

The path to the logout page.
If not specified, defaults to "/Account/Logout".

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Options

The cookie authentication options to configure.
If not specified, default options are used.

```yaml
Type: Microsoft.AspNetCore.Authentication.Cookies.CookieAuthenticationOptions
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Options
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If specified, the cmdlet returns the modified server instance after configuration.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ReturnUrlParameter

The name of the query parameter used to return the URL after login.
Defaults to "ReturnUrl".

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance to configure.
If not specified, the current server instance is used.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SlidingExpiration

Indicates whether the cookie expiration should be sliding.
Defaults to false.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

### Microsoft.AspNetCore.Http.CookieBuilder

{{ Fill in the Description }}

## OUTPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This cmdlet is part of the Kestrun PowerShell module and is used to configure cookie authentication for Kestrun servers.


## RELATED LINKS

- [](https://docs.kestrun.dev/docs/powershell/kestrun/authentication)