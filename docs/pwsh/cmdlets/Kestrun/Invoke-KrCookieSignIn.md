---
layout: default
parent: PowerShell Cmdlets
nav_order: 124
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Invoke-KrCookieSignIn
---

# Invoke-KrCookieSignIn

## SYNOPSIS

Signs in a user issuing an authentication cookie for the given scheme.

## SYNTAX

### Claims (Default)

```powershell
Invoke-KrCookieSignIn [-Scheme <string>] [-Claims <Claim[]>] [-PassThru] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### SimpleIdentity

```powershell
Invoke-KrCookieSignIn [-Scheme <string>] [-Name <string>] [-PassThru] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### AuthenticationProperties_Claim

```powershell
Invoke-KrCookieSignIn -AuthenticationProperties <AuthenticationProperties> [-Scheme <string>]
 [-Claims <Claim[]>] [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AuthenticationPropertiesItems_BuildIdentity

```powershell
Invoke-KrCookieSignIn [-Scheme <string>] [-Claims <Claim[]>] [-ExpiresUtc <Object>]
 [-IssuedUtc <Object>] [-IsPersistent] [-AllowRefresh] [-RedirectUri <string>] [-Items <hashtable>]
 [-Parameters <hashtable>] [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### BuildIdentity

```powershell
Invoke-KrCookieSignIn [-Scheme <string>] [-Claims <Claim[]>] [-PassThru] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### AuthenticationProperties_Identity

```powershell
Invoke-KrCookieSignIn [-Scheme <string>] [-Identity <ClaimsIdentity>]
 [-AuthenticationProperties <AuthenticationProperties>] [-PassThru] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### AuthenticationPropertiesItems_Identity

```powershell
Invoke-KrCookieSignIn [-Scheme <string>] [-Identity <ClaimsIdentity>] [-ExpiresUtc <Object>]
 [-IssuedUtc <Object>] [-IsPersistent] [-AllowRefresh] [-RedirectUri <string>] [-Items <hashtable>]
 [-Parameters <hashtable>] [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Identity

```powershell
Invoke-KrCookieSignIn -Identity <ClaimsIdentity> [-Scheme <string>] [-PassThru] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### SimpleIdentity_BuildIdentity

```powershell
Invoke-KrCookieSignIn [-Scheme <string>] [-ExpiresUtc <Object>] [-IssuedUtc <Object>]
 [-IsPersistent] [-AllowRefresh] [-RedirectUri <string>] [-Items <hashtable>]
 [-Parameters <hashtable>] [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Wraps SignInAsync on the current HTTP context to create a cookie-based session.
You can supply an existing ClaimsIdentity or provide claims via -Name, -Claim, or -ClaimTable.
Optionally sets authentication properties like persistence and expiration.
Designed for use inside Kestrun route script blocks where $Context is available.

## EXAMPLES

### EXAMPLE 1

Invoke-KrCookieSignIn -Name 'admin'

### EXAMPLE 2

Invoke-KrCookieSignIn -Scheme 'Cookies' -ClaimTable @{ role = 'admin'; dept = 'it' } -IsPersistent -ExpiresUtc (Get-Date).AddMinutes(30)

## PARAMETERS

### -AllowRefresh

Allows the authentication session to be refreshed (sliding expiration scenarios).

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SimpleIdentity_BuildIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_Identity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_BuildIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AuthenticationProperties

Existing AuthenticationProperties to use instead of constructing a new one.

```yaml
Type: Microsoft.AspNetCore.Authentication.AuthenticationProperties
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AuthenticationProperties_Identity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationProperties_Claim
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Claims

One or more pre-constructed System.Security.Claims.Claim objects to include.

```yaml
Type: System.Security.Claims.Claim[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Claims
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationProperties_Claim
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_BuildIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: BuildIdentity
  Position: Named
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

### -ExpiresUtc

Explicit expiration timestamp for the authentication ticket.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SimpleIdentity_BuildIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_Identity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_BuildIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Identity

Existing ClaimsIdentity to use instead of constructing a new one.

```yaml
Type: System.Security.Claims.ClaimsIdentity
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AuthenticationProperties_Identity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_Identity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Identity
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IsPersistent

Marks the cookie as persistent (survives browser session) if supported.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SimpleIdentity_BuildIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_Identity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_BuildIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IssuedUtc

Explicit issued timestamp for the authentication ticket.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SimpleIdentity_BuildIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_Identity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_BuildIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Items

Hashtable of string key-Value pairs to add to the Items collection on AuthenticationProperties.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SimpleIdentity_BuildIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_Identity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_BuildIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Name

Convenience parameter to add a ClaimTypes.Name claim.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SimpleIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Parameters

Hashtable of string key-Value pairs to add to the Parameters collection on AuthenticationProperties.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SimpleIdentity_BuildIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_Identity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_BuildIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

Returns the created ClaimsPrincipal instead of no output.

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

Sets the RedirectUri property on AuthenticationProperties.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SimpleIdentity_BuildIdentity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_Identity
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AuthenticationPropertiesItems_BuildIdentity
  Position: Named
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
  Position: Named
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

### System.Security.Claims.ClaimsPrincipal (when -PassThru specified)

{{ Fill in the Description }}

### System.Security.Claims.ClaimsPrincipal

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
