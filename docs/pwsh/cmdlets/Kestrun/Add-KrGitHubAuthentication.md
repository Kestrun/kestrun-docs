---
layout: default
parent: PowerShell Cmdlets
nav_order: 27
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Add-KrGitHubAuthentication
---

# Add-KrGitHubAuthentication

## SYNOPSIS

Adds GitHub OAuth (Authorization Code) authentication to the Kestrun server.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrGitHubAuthentication [[-Server] <KestrunHost>] [[-AuthenticationScheme] <string>]
 [[-DisplayName] <string>] [[-DocId] <string[]>] [[-Description] <string>] [-ClientId] <string>
 [-ClientSecret] <string> [[-CallbackPath] <string>] [-Deprecated] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Convenience wrapper around the C# extension AddGitHubOAuthAuthentication.
Registers three schemes:
  <Name>, <Name>.Cookies, <Name>.Policy
Includes PKCE, saves tokens, maps login & avatar claims, and can enrich email from /user/emails.

## EXAMPLES

### EXAMPLE 1

Add-KrGitHubAuthentication -ClientId $env:GITHUB_CLIENT_ID -ClientSecret $env:GITHUB_CLIENT_SECRET

### EXAMPLE 2

Add-KrGitHubAuthentication -AuthenticationScheme 'GitHubMain' -ClientId 'abc' -ClientSecret 'secret' -Scope 'gist' -DisableEmailEnrichment

## PARAMETERS

### -AuthenticationScheme

Base scheme name (default 'GitHub').

```yaml
Type: System.String
DefaultValue: '[Kestrun.Authentication.AuthenticationDefaults]::GitHubAuthenticationSchemeName'
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

### -CallbackPath

Optional callback path (default '/signin-oauth').
Must match your GitHub OAuth App redirect URL path.

```yaml
Type: System.String
DefaultValue: /signin-oauth
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

### -ClientId

GitHub OAuth App Client ID.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ClientSecret

GitHub OAuth App Client Secret.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Deprecated

If specified, marks the authentication scheme as deprecated in OpenAPI documentation.

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

### -Description

A description of the GitHub authentication scheme.

```yaml
Type: System.String
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

### -DisplayName

Display name for the authentication scheme.

```yaml
Type: System.String
DefaultValue: GitHub Authentication
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

### -DocId

Documentation IDs for the authentication scheme.

```yaml
Type: System.String[]
DefaultValue: '[Kestrun.OpenApi.OpenApiDocDescriptor]::DefaultDocumentationIds'
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

### -PassThru

Return the modified server object.

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

### -Server

The Kestrun server instance.
If omitted, uses the current active server.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
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

## OUTPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

Requires the generic OAuth2 infrastructure plus provider-specific handling in C#.


## RELATED LINKS

{{ Fill in the related links here }}
