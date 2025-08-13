---
layout: default
parent: PowerShell Cmdlets
title: Add-KrApiKeyAuthentication
nav_order: 3
render_with_liquid: false
---
---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.authentication.apikey.apikeyauthenticationoptions?view=aspnetcore-8.0
schema: 2.0.0
---

# Add-KrApiKeyAuthentication

## SYNOPSIS
Adds API key authentication to the Kestrun server.

## SYNTAX

### ItemsScriptBlock (Default)
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### Options
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -Options <ApiKeyAuthenticationOptions>
 [-PassThru] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v1_i3
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -ScriptBlock <ScriptBlock>
 [-HeaderName <String>] [-AdditionalHeaderNames <String[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp]
 [-EmitChallengeHeader] [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>]
 [-ClaimPolicyConfig <ClaimPolicyConfig>] -IssueClaimsCodeFilePath <String> [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v1_i2
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -ScriptBlock <ScriptBlock>
 [-HeaderName <String>] [-AdditionalHeaderNames <String[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp]
 [-EmitChallengeHeader] [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>]
 [-ClaimPolicyConfig <ClaimPolicyConfig>] -IssueClaimsCode <String> [-IssueClaimsCodeLanguage <ScriptLanguage>]
 [-PassThru] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v1_i1
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -ScriptBlock <ScriptBlock>
 [-HeaderName <String>] [-AdditionalHeaderNames <String[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp]
 [-EmitChallengeHeader] [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>]
 [-ClaimPolicyConfig <ClaimPolicyConfig>] -IssueClaimsScriptBlock <ScriptBlock> [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v1
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -ScriptBlock <ScriptBlock>
 [-HeaderName <String>] [-AdditionalHeaderNames <String[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp]
 [-EmitChallengeHeader] [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>] [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v2_i3
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -Code <String>
 [-CodeLanguage <ScriptLanguage>] [-HeaderName <String>] [-AdditionalHeaderNames <String[]>]
 [-AllowQueryStringFallback] [-AllowInsecureHttp] [-EmitChallengeHeader]
 [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>]
 -IssueClaimsCodeFilePath <String> [-PassThru] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v2_i2
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -Code <String>
 [-CodeLanguage <ScriptLanguage>] [-HeaderName <String>] [-AdditionalHeaderNames <String[]>]
 [-AllowQueryStringFallback] [-AllowInsecureHttp] [-EmitChallengeHeader]
 [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>]
 -IssueClaimsCode <String> [-IssueClaimsCodeLanguage <ScriptLanguage>] [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v2_i1
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -Code <String>
 [-CodeLanguage <ScriptLanguage>] [-HeaderName <String>] [-AdditionalHeaderNames <String[]>]
 [-AllowQueryStringFallback] [-AllowInsecureHttp] [-EmitChallengeHeader]
 [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>]
 -IssueClaimsScriptBlock <ScriptBlock> [-PassThru] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v2
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -Code <String>
 [-CodeLanguage <ScriptLanguage>] [-HeaderName <String>] [-AdditionalHeaderNames <String[]>]
 [-AllowQueryStringFallback] [-AllowInsecureHttp] [-EmitChallengeHeader]
 [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>] [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v3_i3
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -CodeFilePath <String> [-HeaderName <String>]
 [-AdditionalHeaderNames <String[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp] [-EmitChallengeHeader]
 [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>]
 -IssueClaimsCodeFilePath <String> [-PassThru] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v3_i2
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -CodeFilePath <String> [-HeaderName <String>]
 [-AdditionalHeaderNames <String[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp] [-EmitChallengeHeader]
 [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>]
 -IssueClaimsCode <String> [-IssueClaimsCodeLanguage <ScriptLanguage>] [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v3_i1
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -CodeFilePath <String> [-HeaderName <String>]
 [-AdditionalHeaderNames <String[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp] [-EmitChallengeHeader]
 [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>]
 -IssueClaimsScriptBlock <ScriptBlock> [-PassThru] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v3
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -CodeFilePath <String> [-HeaderName <String>]
 [-AdditionalHeaderNames <String[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp] [-EmitChallengeHeader]
 [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>] [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v4_i3
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -ExpectedKey <String> [-HeaderName <String>]
 [-AdditionalHeaderNames <String[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp] [-EmitChallengeHeader]
 [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>]
 -IssueClaimsCodeFilePath <String> [-PassThru] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v4_i2
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -ExpectedKey <String> [-HeaderName <String>]
 [-AdditionalHeaderNames <String[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp] [-EmitChallengeHeader]
 [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>]
 -IssueClaimsCode <String> [-IssueClaimsCodeLanguage <ScriptLanguage>] [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v4_i1
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -ExpectedKey <String> [-HeaderName <String>]
 [-AdditionalHeaderNames <String[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp] [-EmitChallengeHeader]
 [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>]
 -IssueClaimsScriptBlock <ScriptBlock> [-PassThru] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### v4
```
Add-KrApiKeyAuthentication [-Server <KestrunHost>] -Name <String> -ExpectedKey <String> [-HeaderName <String>]
 [-AdditionalHeaderNames <String[]>] [-AllowQueryStringFallback] [-AllowInsecureHttp] [-EmitChallengeHeader]
 [-ChallengeHeaderFormat <ApiKeyChallengeFormat>] [-Logger <ILogger>] [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Configures the Kestrun server to use API key authentication for incoming requests.

## EXAMPLES

### EXAMPLE 1
```
Add-KrApiKeyAuthentication -Name 'MyApiKey' -ExpectedKey '12345' -HeaderName 'X-Api-Key'
This example adds API key authentication to the server with the specified expected key and header name.
```

### EXAMPLE 2
```
Add-KrApiKeyAuthentication -Name 'MyApiKey' -ScriptBlock {
    param($username, $password)
    return $username -eq 'admin' -and $password -eq 'password'
}
This example adds API key authentication using a script block to validate the API key.
```

### EXAMPLE 3
```
Add-KrApiKeyAuthentication -Name 'MyApiKey' -Code @"
    return username == "admin" && password == "password";
"@
This example adds API key authentication using C# code to validate the API key.
```

### EXAMPLE 4
```
Add-KrApiKeyAuthentication -Name 'MyApiKey' -CodeFilePath 'C:\path\to\code.cs'
This example adds API key authentication using a C# code file to validate the API key.
```

## PARAMETERS

### -Server
The Kestrun server instance to configure.

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
The name of the API key authentication scheme.

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
The options to configure the API key authentication.

```yaml
Type: ApiKeyAuthenticationOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock
A script block that contains the logic for validating the API key.

```yaml
Type: ScriptBlock
Parameter Sets: v1_i3, v1_i2, v1_i1, v1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Code
C# or VBNet code that contains the logic for validating the API key.

```yaml
Type: String
Parameter Sets: v2_i3, v2_i2, v2_i1, v2
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CodeLanguage
{{ Fill CodeLanguage Description }}

```yaml
Type: ScriptLanguage
Parameter Sets: v2_i3, v2_i2, v2_i1, v2
Aliases:
Accepted values: Native, PowerShell, CSharp, FSharp, Python, JavaScript, VBNet

Required: False
Position: Named
Default value: CSharp
Accept pipeline input: False
Accept wildcard characters: False
```

### -CodeFilePath
Path to a file containing C# code that contains the logic for validating the API key.

```yaml
Type: String
Parameter Sets: v3_i3, v3_i2, v3_i1, v3
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpectedKey
The expected API key to validate against.

```yaml
Type: String
Parameter Sets: v4_i3, v4_i2, v4_i1, v4
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HeaderName
The name of the header to look for the API key.

```yaml
Type: String
Parameter Sets: v1_i3, v1_i2, v1_i1, v1, v2_i3, v2_i2, v2_i1, v2, v3_i3, v3_i2, v3_i1, v3, v4_i3, v4_i2, v4_i1, v4
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AdditionalHeaderNames
Additional headers to check for the API key.

```yaml
Type: String[]
Parameter Sets: v1_i3, v1_i2, v1_i1, v1, v2_i3, v2_i2, v2_i1, v2, v3_i3, v3_i2, v3_i1, v3, v4_i3, v4_i2, v4_i1, v4
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowQueryStringFallback
If specified, allows the API key to be provided in the query string.

```yaml
Type: SwitchParameter
Parameter Sets: v1_i3, v1_i2, v1_i1, v1, v2_i3, v2_i2, v2_i1, v2, v3_i3, v3_i2, v3_i1, v3, v4_i3, v4_i2, v4_i1, v4
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowInsecureHttp
If specified, allows the API key to be provided over HTTP instead of HTTPS.

```yaml
Type: SwitchParameter
Parameter Sets: v1_i3, v1_i2, v1_i1, v1, v2_i3, v2_i2, v2_i1, v2, v3_i3, v3_i2, v3_i1, v3, v4_i3, v4_i2, v4_i1, v4
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -EmitChallengeHeader
If specified, emits a challenge header when the API key is missing or invalid.

```yaml
Type: SwitchParameter
Parameter Sets: v1_i3, v1_i2, v1_i1, v1, v2_i3, v2_i2, v2_i1, v2, v3_i3, v3_i2, v3_i1, v3, v4_i3, v4_i2, v4_i1, v4
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ChallengeHeaderFormat
The format of the challenge header to emit.

```yaml
Type: ApiKeyChallengeFormat
Parameter Sets: v1_i3, v1_i2, v1_i1, v1, v2_i3, v2_i2, v2_i1, v2, v3_i3, v3_i2, v3_i1, v3, v4_i3, v4_i2, v4_i1, v4
Aliases:
Accepted values: ApiKeyHeader, HeaderOnly

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Logger
A logger to use for logging authentication events.

```yaml
Type: ILogger
Parameter Sets: v1_i3, v1_i2, v1_i1, v1, v2_i3, v2_i2, v2_i1, v2, v3_i3, v3_i2, v3_i1, v3, v4_i3, v4_i2, v4_i1, v4
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClaimPolicyConfig
Configuration for claim policies to apply during authentication.

```yaml
Type: ClaimPolicyConfig
Parameter Sets: v1_i3, v1_i2, v1_i1, v2_i3, v2_i2, v2_i1, v3_i3, v3_i2, v3_i1, v4_i3, v4_i2, v4_i1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IssueClaimsScriptBlock
A script block that contains the logic for issuing claims after successful authentication.

```yaml
Type: ScriptBlock
Parameter Sets: v1_i1, v2_i1, v3_i1, v4_i1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IssueClaimsCode
C# or VBNet code that contains the logic for issuing claims after successful authentication.

```yaml
Type: String
Parameter Sets: v1_i2, v2_i2, v3_i2, v4_i2
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IssueClaimsCodeLanguage
The scripting language of the code used for issuing claims.

```yaml
Type: ScriptLanguage
Parameter Sets: v1_i2, v2_i2, v3_i2, v4_i2
Aliases:
Accepted values: Native, PowerShell, CSharp, FSharp, Python, JavaScript, VBNet

Required: False
Position: Named
Default value: CSharp
Accept pipeline input: False
Accept wildcard characters: False
```

### -IssueClaimsCodeFilePath
Path to a file containing the code that contains the logic for issuing claims after successful authentication

```yaml
Type: String
Parameter Sets: v1_i3, v2_i3, v3_i3, v4_i3
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
If specified, returns the modified server instance after adding the authentication.

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

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

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

### Kestrun.Hosting.KestrunHost
## NOTES
This cmdlet is used to configure API key authentication for the Kestrun server, allowing you to secure your APIs with API keys.

## RELATED LINKS

[https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.authentication.apikey.apikeyauthenticationoptions?view=aspnetcore-8.0](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.authentication.apikey.apikeyauthenticationoptions?view=aspnetcore-8.0)

