---
layout: default
parent: PowerShell Cmdlets
nav_order: 123
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Invoke-KrChallenge
---

# Invoke-KrChallenge

## SYNOPSIS

Challenges the current request to authenticate with the specified authentication scheme.

## SYNTAX

### __AllParameterSets

```powershell
Invoke-KrChallenge [-Scheme] <string> [[-RedirectUri] <string>] [[-Properties] <hashtable>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Wraps ChallengeAsync on the current HTTP context to trigger an authentication challenge.
This is typically used to redirect users to an external identity provider (e.g., OIDC, OAuth2).
Designed for use inside Kestrun route script blocks where $Context is available.

## EXAMPLES

### EXAMPLE 1

Invoke-KrChallenge -Scheme 'oidc' -RedirectUri '/dashboard'

Challenges the user to authenticate with OIDC, redirecting to /dashboard after login.

### EXAMPLE 2

Invoke-KrChallenge -Scheme 'Google'

Challenges the user to authenticate with Google OAuth, redirecting back to the current page.

### EXAMPLE 3

$props = @{
    prompt = 'login'
    login_hint = 'user@example.com'
}
Invoke-KrChallenge -Scheme 'oidc' -RedirectUri '/hello' -Properties $props

Challenges with additional properties (forces login prompt and hints the username).

## PARAMETERS

### -Confirm

Prompts you for confirmation before running the command.

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

Additional authentication properties to pass to the challenge.

```yaml
Type: System.Collections.Hashtable
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

### -RedirectUri

URI to redirect to after successful authentication (default is current request path).

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

### -Scheme

Authentication scheme to challenge (e.g., 'oidc', 'Google', 'AzureAD').

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
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

### None. This function initiates an authentication challenge and does not return a value.

{{ Fill in the Description }}

### System.Void

{{ Fill in the Description }}

## NOTES

This function must be called from within a route handler where $Context is available.
After calling this function, the route should return immediately to allow the authentication
middleware to complete the redirect.


## RELATED LINKS

{{ Fill in the related links here }}
