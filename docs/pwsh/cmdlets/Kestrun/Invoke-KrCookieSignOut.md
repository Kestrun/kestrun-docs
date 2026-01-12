---
layout: default
parent: PowerShell Cmdlets
nav_order: 130
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Invoke-KrCookieSignOut
---

# Invoke-KrCookieSignOut

## SYNOPSIS

Signs out the current user by removing their authentication cookie for the given scheme.

## SYNTAX

### SimpleIdentity (Default)

```powershell
Invoke-KrCookieSignOut [[-Scheme] <string>] [[-AuthKind] <string>] [[-RedirectUri] <string>]
 [[-Properties] <hashtable>] [-Redirect] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Wraps SignOutAsync on the current HTTP context to remove a cookie-based session.
Designed for use inside Kestrun route script blocks where $Context is available.

For OIDC logout, use -OidcScheme to sign out from both the cookie and OIDC provider.
This will redirect to the OIDC provider's logout endpoint automatically.

## EXAMPLES

### EXAMPLE 1

Invoke-KrCookieSignOut  # Signs out the current user from the default 'Cookies' scheme.

### EXAMPLE 2

Invoke-KrCookieSignOut -Scheme 'MyCookieScheme'  # Signs out the current user from the specified scheme.

### EXAMPLE 3

Invoke-KrCookieSignOut -OidcScheme 'oidc' -RedirectUri '/'  # Signs out from both Cookies and OIDC, redirects to root after OIDC logout.

## PARAMETERS

### -AuthKind

Authentication kind: 'Cookies' (default), 'OAuth2', or 'Oidc'.
Use 'OAuth2' to sign out from both Cookies and OAuth2 schemes.
Use 'Oidc' to sign out from both Cookies and OIDC schemes (triggers redirect to IdP logout).

```yaml
Type: System.String
DefaultValue: Cookies
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

### -Confirm

Prompts you for confirmation before running the command.
The command is not run unless you respond
affirmatively.

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

### -Properties

Additional sign-out authentication properties to pass to the SignOut call.

```yaml
Type: System.Collections.Hashtable
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

### -Redirect

If specified, redirects the user to the login path after signing out.
If the login path is not configured, redirects to '/'.
NOTE: This is ignored when OidcScheme is used, as the OIDC handler manages the redirect.

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

### -RedirectUri

URI to redirect to after OIDC logout completes (default '/').
Only used when OidcScheme is specified.

```yaml
Type: System.String
DefaultValue: /
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

### -Scheme

Authentication scheme to use (default 'Cookies').

```yaml
Type: System.String
DefaultValue: Cookies
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

### System.Void

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
