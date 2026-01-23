---
layout: default
parent: PowerShell Cmdlets
nav_order: 5
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.authentication.apikey.apikeyauthenticationoptions?view=aspnetcore-8.0
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Add-KrApiKeyAuthentication
---

# Add-KrApiKeyAuthentication

## SYNOPSIS

Adds API key authentication to the Kestrun server.

## SYNTAX

### ScriptBlock (Default)

```powershell
Add-KrApiKeyAuthentication -ScriptBlock <scriptblock> [-Server <KestrunHost>]
 [-AuthenticationScheme <string>] [-DisplayName <string>] [-Description <string>] [-Deprecated]
 [-DocId <string[]>] [-In <ParameterLocation>] [-ApiKeyName <string>]
 [-AdditionalHeaderNames <string[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp]
 [-EmitChallengeHeader] [-ChallengeHeaderFormat <ApiKeyChallengeFormat>]
 [-ClaimPolicyConfig <ClaimPolicyConfig>] [-IssueClaimsScriptBlock <scriptblock>]
 [-IssueClaimsCode <string>] [-IssueClaimsCodeLanguage <ScriptLanguage>]
 [-IssueClaimsCodeFilePath <string>] [-PassThru] [<CommonParameters>]
```

### CodeFile

```powershell
Add-KrApiKeyAuthentication -CodeFilePath <string> [-Server <KestrunHost>]
 [-AuthenticationScheme <string>] [-DisplayName <string>] [-Description <string>] [-Deprecated]
 [-DocId <string[]>] [-In <ParameterLocation>] [-ApiKeyName <string>]
 [-AdditionalHeaderNames <string[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp]
 [-EmitChallengeHeader] [-ChallengeHeaderFormat <ApiKeyChallengeFormat>]
 [-ClaimPolicyConfig <ClaimPolicyConfig>] [-IssueClaimsScriptBlock <scriptblock>]
 [-IssueClaimsCode <string>] [-IssueClaimsCodeLanguage <ScriptLanguage>]
 [-IssueClaimsCodeFilePath <string>] [-PassThru] [<CommonParameters>]
```

### StaticKey

```powershell
Add-KrApiKeyAuthentication -StaticApiKey <string> [-Server <KestrunHost>]
 [-AuthenticationScheme <string>] [-DisplayName <string>] [-Description <string>] [-Deprecated]
 [-DocId <string[]>] [-In <ParameterLocation>] [-ApiKeyName <string>]
 [-AdditionalHeaderNames <string[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp]
 [-EmitChallengeHeader] [-ChallengeHeaderFormat <ApiKeyChallengeFormat>]
 [-ClaimPolicyConfig <ClaimPolicyConfig>] [-IssueClaimsScriptBlock <scriptblock>]
 [-IssueClaimsCode <string>] [-IssueClaimsCodeLanguage <ScriptLanguage>]
 [-IssueClaimsCodeFilePath <string>] [-PassThru] [<CommonParameters>]
```

### CodeInline

```powershell
Add-KrApiKeyAuthentication -Code <string> [-Server <KestrunHost>] [-AuthenticationScheme <string>]
 [-DisplayName <string>] [-Description <string>] [-Deprecated] [-DocId <string[]>]
 [-CodeLanguage <ScriptLanguage>] [-In <ParameterLocation>] [-ApiKeyName <string>]
 [-AdditionalHeaderNames <string[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp]
 [-EmitChallengeHeader] [-ChallengeHeaderFormat <ApiKeyChallengeFormat>]
 [-ClaimPolicyConfig <ClaimPolicyConfig>] [-IssueClaimsScriptBlock <scriptblock>]
 [-IssueClaimsCode <string>] [-IssueClaimsCodeLanguage <ScriptLanguage>]
 [-IssueClaimsCodeFilePath <string>] [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Add-KrApiKeyAuthentication -Options <ApiKeyAuthenticationOptions> [-Server <KestrunHost>]
 [-AuthenticationScheme <string>] [-DisplayName <string>] [-DocId <string[]>]
 [-In <ParameterLocation>] [-ApiKeyName <string>] [-AdditionalHeaderNames <string[]>]
 [-AllowQueryStringFallback] [-AllowInsecureHttp] [-EmitChallengeHeader]
 [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-ClaimPolicyConfig <ClaimPolicyConfig>]
 [-IssueClaimsScriptBlock <scriptblock>] [-IssueClaimsCode <string>]
 [-IssueClaimsCodeLanguage <ScriptLanguage>] [-IssueClaimsCodeFilePath <string>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Configures the Kestrun server to use API key authentication for incoming requests.

## EXAMPLES

### EXAMPLE 1

Add-KrApiKeyAuthentication -AuthenticationScheme 'MyApiKey' -StaticApiKey '12345' -ApiKeyName 'X-Api-Key'
This example adds API key authentication to the server with the specified expected key and header name.

### EXAMPLE 2

Add-KrApiKeyAuthentication -AuthenticationScheme 'MyApiKey' -ScriptBlock {
    param($username, $password)
    return $username -eq 'admin' -and $password -eq 'password'
}
This example adds API key authentication using a script block to validate the API key.

### EXAMPLE 3

Add-KrApiKeyAuthentication -AuthenticationScheme 'MyApiKey' -Code @"
    return username == "admin" && password == "password";
"@
This example adds API key authentication using C# code to validate the API key.

### EXAMPLE 4

Add-KrApiKeyAuthentication -AuthenticationScheme 'MyApiKey' -CodeFilePath 'C:\path\to\code.cs'
This example adds API key authentication using a C# code file to validate the API key.

## PARAMETERS

### -AdditionalHeaderNames

Additional headers to check for the API key.

```yaml
Type: System.String[]
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

### -AllowInsecureHttp

If specified, allows the API key to be provided over HTTP instead of HTTPS.

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

### -AllowQueryStringFallback

If specified, allows the API key to be provided in the query string.

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

### -ApiKeyName

The name of the header to look for the API key.

```yaml
Type: System.String
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

### -AuthenticationScheme

The name of the API key authentication scheme.

```yaml
Type: System.String
DefaultValue: ApiKey
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

### -ChallengeHeaderFormat

The format of the challenge header to emit.

```yaml
Type: Kestrun.Authentication.ApiKeyChallengeFormat
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

### -ClaimPolicyConfig

Configuration for claim policies to apply during authentication.

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

### -Code

C# or VBNet code that contains the logic for validating the API key.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeInline
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CodeFilePath

Path to a file containing C# code that contains the logic for validating the API key.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFile
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CodeLanguage

The scripting language of the code used for validating the API key.

```yaml
Type: Kestrun.Scripting.ScriptLanguage
DefaultValue: CSharp
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeInline
  Position: Named
  IsRequired: false
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
- Name: CodeFile
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: StaticKey
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: CodeInline
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ScriptBlock
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

A description of the API key authentication scheme.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFile
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: StaticKey
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: CodeInline
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ScriptBlock
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

The display name of the API key authentication scheme.

```yaml
Type: System.String
DefaultValue: API Key Authentication
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

The documentation IDs to associate with this authentication scheme in OpenAPI documentation.

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

### -EmitChallengeHeader

If specified, emits a challenge header when the API key is missing or invalid.

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

### -In

Common API key config (all parameter sets)

```yaml
Type: Microsoft.OpenApi.ParameterLocation
DefaultValue: Header
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

### -IssueClaimsCode

C# or VBNet code that contains the logic for issuing claims after successful authentication.

```yaml
Type: System.String
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

### -IssueClaimsCodeFilePath

Path to a file containing the code that contains the logic for issuing claims after successful authentication

```yaml
Type: System.String
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

### -IssueClaimsCodeLanguage

The scripting language of the code used for issuing claims.

```yaml
Type: Kestrun.Scripting.ScriptLanguage
DefaultValue: CSharp
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

### -IssueClaimsScriptBlock

A script block that contains the logic for issuing claims after successful authentication.

```yaml
Type: System.Management.Automation.ScriptBlock
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

### -Options

The options to configure the API key authentication.

```yaml
Type: Kestrun.Authentication.ApiKeyAuthenticationOptions
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

If specified, returns the modified server instance after adding the authentication.

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

### -ScriptBlock

A script block that contains the logic for validating the API key.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ScriptBlock
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance to configure.

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

### -StaticApiKey

The expected API key to validate against.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: StaticKey
  Position: Named
  IsRequired: true
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

## OUTPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This cmdlet is used to configure API key authentication for the Kestrun server, allowing you to secure your APIs with API keys.


## RELATED LINKS

- [](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.authentication.apikey.apikeyauthenticationoptions?view=aspnetcore-8.0)