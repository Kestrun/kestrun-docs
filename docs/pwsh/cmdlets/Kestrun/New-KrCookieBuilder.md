---
layout: default
parent: PowerShell Cmdlets
nav_order: 139
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: New-KrCookieBuilder
---

# New-KrCookieBuilder

## SYNOPSIS

Creates and configures a new [Microsoft.AspNetCore.Http.CookieBuilder] instance.

## SYNTAX

### __AllParameterSets

```powershell
New-KrCookieBuilder [[-Name] <string>] [[-Domain] <string>] [[-Path] <string>] [[-MaxAge] <Object>]
 [[-Expiration] <Object>] [[-SecurePolicy] <CookieSecurePolicy>] [[-SameSite] <SameSiteMode>]
 [[-Extensions] <string[]>] [-HttpOnly] [-IsEssential] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Provides a PowerShell-friendly wrapper for constructing CookieBuilder objects with strongly-typed
properties commonly used when configuring cookie authentication.
All parameters are optional; any
not supplied retain the underlying default from CookieBuilder / ASP.NET Core.
This helper simplifies scripts by avoiding direct new() object + property assignment sequences.

## EXAMPLES

### EXAMPLE 1

# Basic cookie
$cookie = New-KrCookieBuilder -Name 'AuthCookie' -HttpOnly -SameSite Lax

### EXAMPLE 2

# Full configuration
$cookie = New-KrCookieBuilder -Name 'AuthCookie' -Domain 'example.local' -Path '/' -SecurePolicy Always \
    -IsEssential -MaxAge (New-TimeSpan -Hours 1) -Expires (Get-Date).AddHours(1) -SameSite Strict -HttpOnly

## PARAMETERS

### -Confirm

Prompts you for confirmation before running the command.
The command is not run unless you respond affirmatively.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- cf
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

### -Domain

The domain to associate the cookie with.
If not specified, the cookie is associated with the host of the request.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Expiration

Alias for Expires; provided for convenience.
Accepts the same types and conversion as Expires.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Extensions

Additional cookie attributes to append to the Set-Cookie header.
Accepts an array of strings

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -HttpOnly

Indicates whether a cookie is inaccessible by client-side script but specific components may use a different value.

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

### -IsEssential

Indicates if this cookie is essential for the application to function correctly.
If true then
consent policy checks may be bypassed.SameSiteMode Default is $false.

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

### -MaxAge

The maximum age of the cookie.
Accepts a TimeSpan or a value convertible to Time
Span (e.g.
string like '00:30:00' or integer seconds).
If not specified, the cookie is a session cookie.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Name

The name of the cookie.
If not specified, a framework default may be used by the consumer.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Path

The path to associate the cookie with.
If not specified, the cookie is associated with the root path ('/').

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SameSite

The SameSite mode for the cookie.
Accepts a value from the [Microsoft.AspNetCore.Http.SameSiteMode] enum:
- Unspecified (-1): No SameSite field will be set; the client should follow its default cookie policy.
- None (0): Indicates the client should disable same-site restrictions.
- Lax: Indicates the client should send the cookie with "same-site" requests, and with "cross-site" top-level navigations.
- Strict: Indicates the client should only send the cookie with "same-site" requests.

```yaml
Type: Microsoft.AspNetCore.Http.SameSiteMode
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SecurePolicy

The secure policy for the cookie.
Accepts a value from the CookieSecurePolicy enum.
If not specified, the default is CookieSecurePolicy.SameAsRequest.
- SameAsRequest: Cookie is secure if the request is HTTPS; supports both HTTP and HTTPS for development.
- Always: Cookie is always marked secure; use when all pages are served over HTTPS.
- None: Cookie is never marked secure; not recommended due to potential security risks on HTTP connections.

```yaml
Type: Microsoft.AspNetCore.Http.CookieSecurePolicy
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -WhatIf

Shows what would happen if the command runs.
The command is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- wi
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.AspNetCore.Http.CookieBuilder

{{ Fill in the Description }}

## NOTES

Setting both -MaxAge and -Expires is allowed; ASP.NET Core will honour both where applicable.
If -Name is omitted a framework default may be used by the consumer.


## RELATED LINKS

{{ Fill in the related links here }}
