---
layout: default
parent: PowerShell Cmdlets
title: Add-KrBasicAuthentication
nav_order: 3
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrBasicAuthentication

## SYNOPSIS
Adds basic authentication to the Kestrun server.

## SYNTAX

### v1 (Default)
```
Add-KrBasicAuthentication [-Server <KestrunHost>] -Name <String> -ScriptBlock <ScriptBlock>
 [-HeaderName <String>] [-Base64Encoded] [-SuppressWwwAuthenticate] [-SeparatorRegex <Regex>] [-Realm <String>]
 [-AllowInsecureHttp] [-Logger <ILogger>] [-PassThru] [<CommonParameters>]
```

### Options
```
Add-KrBasicAuthentication [-Server <KestrunHost>] -Name <String> -Options <BasicAuthenticationOptions>
 [-PassThru] [<CommonParameters>]
```

### v1_i3
```
Add-KrBasicAuthentication [-Server <KestrunHost>] -Name <String> -ScriptBlock <ScriptBlock>
 [-HeaderName <String>] [-Base64Encoded] [-SuppressWwwAuthenticate] [-SeparatorRegex <Regex>] [-Realm <String>]
 [-AllowInsecureHttp] [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>]
 -IssueClaimsCodeFilePath <String> [-PassThru] [<CommonParameters>]
```

### v1_i2
```
Add-KrBasicAuthentication [-Server <KestrunHost>] -Name <String> -ScriptBlock <ScriptBlock>
 [-HeaderName <String>] [-Base64Encoded] [-SuppressWwwAuthenticate] [-SeparatorRegex <Regex>] [-Realm <String>]
 [-AllowInsecureHttp] [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>] -IssueClaimsCode <String>
 [-IssueClaimsCodeLanguage <ScriptLanguage>] [-PassThru] [<CommonParameters>]
```

### v1_i1
```
Add-KrBasicAuthentication [-Server <KestrunHost>] -Name <String> -ScriptBlock <ScriptBlock>
 [-HeaderName <String>] [-Base64Encoded] [-SuppressWwwAuthenticate] [-SeparatorRegex <Regex>] [-Realm <String>]
 [-AllowInsecureHttp] [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>]
 -IssueClaimsScriptBlock <ScriptBlock> [-PassThru] [<CommonParameters>]
```

### v2_i3
```
Add-KrBasicAuthentication [-Server <KestrunHost>] -Name <String> -Code <String>
 [-CodeLanguage <ScriptLanguage>] [-HeaderName <String>] [-Base64Encoded] [-SuppressWwwAuthenticate]
 [-SeparatorRegex <Regex>] [-Realm <String>] [-AllowInsecureHttp] [-Logger <ILogger>]
 [-ClaimPolicyConfig <ClaimPolicyConfig>] -IssueClaimsCodeFilePath <String> [-PassThru] [<CommonParameters>]
```

### v2_i2
```
Add-KrBasicAuthentication [-Server <KestrunHost>] -Name <String> -Code <String>
 [-CodeLanguage <ScriptLanguage>] [-HeaderName <String>] [-Base64Encoded] [-SuppressWwwAuthenticate]
 [-SeparatorRegex <Regex>] [-Realm <String>] [-AllowInsecureHttp] [-Logger <ILogger>]
 [-ClaimPolicyConfig <ClaimPolicyConfig>] -IssueClaimsCode <String> [-IssueClaimsCodeLanguage <ScriptLanguage>]
 [-PassThru] [<CommonParameters>]
```

### v2_i1
```
Add-KrBasicAuthentication [-Server <KestrunHost>] -Name <String> -Code <String>
 [-CodeLanguage <ScriptLanguage>] [-HeaderName <String>] [-Base64Encoded] [-SuppressWwwAuthenticate]
 [-SeparatorRegex <Regex>] [-Realm <String>] [-AllowInsecureHttp] [-Logger <ILogger>]
 [-ClaimPolicyConfig <ClaimPolicyConfig>] -IssueClaimsScriptBlock <ScriptBlock> [-PassThru]
 [<CommonParameters>]
```

### v2
```
Add-KrBasicAuthentication [-Server <KestrunHost>] -Name <String> -Code <String>
 [-CodeLanguage <ScriptLanguage>] [-HeaderName <String>] [-Base64Encoded] [-SuppressWwwAuthenticate]
 [-SeparatorRegex <Regex>] [-Realm <String>] [-AllowInsecureHttp] [-Logger <ILogger>] [-PassThru]
 [<CommonParameters>]
```

### v3_i3
```
Add-KrBasicAuthentication [-Server <KestrunHost>] -Name <String> -CodeFilePath <String> [-HeaderName <String>]
 [-Base64Encoded] [-SuppressWwwAuthenticate] [-SeparatorRegex <Regex>] [-Realm <String>] [-AllowInsecureHttp]
 [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>] -IssueClaimsCodeFilePath <String> [-PassThru]
 [<CommonParameters>]
```

### v3_i2
```
Add-KrBasicAuthentication [-Server <KestrunHost>] -Name <String> -CodeFilePath <String> [-HeaderName <String>]
 [-Base64Encoded] [-SuppressWwwAuthenticate] [-SeparatorRegex <Regex>] [-Realm <String>] [-AllowInsecureHttp]
 [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>] -IssueClaimsCode <String>
 [-IssueClaimsCodeLanguage <ScriptLanguage>] [-PassThru] [<CommonParameters>]
```

### v3_i1
```
Add-KrBasicAuthentication [-Server <KestrunHost>] -Name <String> -CodeFilePath <String> [-HeaderName <String>]
 [-Base64Encoded] [-SuppressWwwAuthenticate] [-SeparatorRegex <Regex>] [-Realm <String>] [-AllowInsecureHttp]
 [-Logger <ILogger>] [-ClaimPolicyConfig <ClaimPolicyConfig>] -IssueClaimsScriptBlock <ScriptBlock> [-PassThru]
 [<CommonParameters>]
```

### v3
```
Add-KrBasicAuthentication [-Server <KestrunHost>] -Name <String> -CodeFilePath <String> [-HeaderName <String>]
 [-Base64Encoded] [-SuppressWwwAuthenticate] [-SeparatorRegex <Regex>] [-Realm <String>] [-AllowInsecureHttp]
 [-Logger <ILogger>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Configures the Kestrun server to use basic authentication for incoming requests.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrBasicAuthentication -Server $server -Name "MyAuth" -Options $options -ScriptBlock $scriptBlock
Configure Kestrun server to use basic authentication with the specified script block.
```

### EXAMPLE 2
```powershell
Add-KrBasicAuthentication -Server $server -Name "MyAuth" -Options $options -Code $code -CodeLanguage $codeLanguage
Configure Kestrun server to use basic authentication with the specified code.
```

### EXAMPLE 3
```powershell
Add-KrBasicAuthentication -Server $server -Name "MyAuth" -Options $options -CodeFilePath $codeFilePath
Configure Kestrun server to use basic authentication with the specified code file.
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
The name of the basic authentication scheme.

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
The options to configure the basic authentication.

```yaml
Type: BasicAuthenticationOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock
A script block that contains the logic for validating the username and password.

```yaml
Type: ScriptBlock
Parameter Sets: v1, v1_i3, v1_i2, v1_i1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Code
C# or VBNet code that contains the logic for validating the username and password.

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
The scripting language of the code used for validating the username and password.

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
Path to a file containing C# code that contains the logic for validating the username and password.

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

### -HeaderName
The name of the header to look for the basic authentication credentials.

```yaml
Type: String
Parameter Sets: v1, v1_i3, v1_i2, v1_i1, v2_i3, v2_i2, v2_i1, v2, v3_i3, v3_i2, v3_i1, v3
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Base64Encoded
If specified, the credentials are expected to be Base64 encoded.

```yaml
Type: SwitchParameter
Parameter Sets: v1, v1_i3, v1_i2, v1_i1, v2_i3, v2_i2, v2_i1, v2, v3_i3, v3_i2, v3_i1, v3
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SuppressWwwAuthenticate
If specified, the server will not emit the WWW-Authenticate header in responses.

```yaml
Type: SwitchParameter
Parameter Sets: v1, v1_i3, v1_i2, v1_i1, v2_i3, v2_i2, v2_i1, v2, v3_i3, v3_i2, v3_i1, v3
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SeparatorRegex
A regular expression to use for separating multiple credentials in the header.

```yaml
Type: Regex
Parameter Sets: v1, v1_i3, v1_i2, v1_i1, v2_i3, v2_i2, v2_i1, v2, v3_i3, v3_i2, v3_i1, v3
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Realm
The realm for the basic authentication.

```yaml
Type: String
Parameter Sets: v1, v1_i3, v1_i2, v1_i1, v2_i3, v2_i2, v2_i1, v2, v3_i3, v3_i2, v3_i1, v3
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowInsecureHttp
If specified, allows the basic authentication to be used over HTTP instead of HTTPS.

```yaml
Type: SwitchParameter
Parameter Sets: v1, v1_i3, v1_i2, v1_i1, v2_i3, v2_i2, v2_i1, v2, v3_i3, v3_i2, v3_i1, v3
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Logger
A logger to use for logging authentication events.

```yaml
Type: ILogger
Parameter Sets: v1, v1_i3, v1_i2, v1_i1, v2_i3, v2_i2, v2_i1, v2, v3_i3, v3_i2, v3_i1, v3
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
Parameter Sets: v1_i3, v1_i2, v1_i1, v2_i3, v2_i2, v2_i1, v3_i3, v3_i2, v3_i1
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
Parameter Sets: v1_i1, v2_i1, v3_i1
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
Parameter Sets: v1_i2, v2_i2, v3_i2
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
Parameter Sets: v1_i2, v2_i2, v3_i2
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
Parameter Sets: v1_i3, v2_i3, v3_i3
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Kestrun.Hosting.KestrunHost
## NOTES
This function is part of the Kestrun.Authentication module and is used to configure basic authentication for Kestrun servers.
Maps to Kestrun.Hosting.KestrunHostAuthnExtensions.AddBasicAuthentication

## RELATED LINKS
