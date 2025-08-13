---
layout: default
parent: PowerShell Cmdlets
title: Add-KrJWTBearerAuthentication
nav_order: 20
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Add-KrJWTBearerAuthentication

## SYNOPSIS
Adds JWT Bearer authentication to the Kestrun server.

## SYNTAX

### Items (Default)
```
Add-KrJWTBearerAuthentication [-Server <KestrunHost>] -Name <String> [-ClaimPolicy <ClaimPolicyConfig>]
 [-ValidIssuer <String>] [-ValidIssuers <String[]>] [-ValidAudience <String>] [-ValidAudiences <String[]>]
 [-ValidAlgorithms <String[]>] [-SkipValidateIssuer] [-SkipValidateAudience] [-SkipValidateLifetime]
 [-ValidateIssuerSigningKey] [-DoesNotRequireExpirationTime] [-DoesNotRequireSignedTokens]
 [-IssuerSigningKey <SecurityKey>] [-IssuerSigningKeys <SecurityKey[]>] [-ClockSkew <TimeSpan>] [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### ValParamOption
```
Add-KrJWTBearerAuthentication [-Server <KestrunHost>] -Name <String>
 -ValidationParameter <TokenValidationParameters> [-ClaimPolicy <ClaimPolicyConfig>] [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Configures the Kestrun server to use JWT Bearer authentication for incoming requests.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

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
The name of the authentication scheme.
This name is used to identify the authentication scheme in the Kestrun server configuration.

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

### -ValidationParameter
The token validation parameters used to validate incoming JWT tokens.
This parameter is mandatory when using the 'ValParamOption' parameter set.

```yaml
Type: TokenValidationParameters
Parameter Sets: ValParamOption
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClaimPolicy
The claim policy configuration for the authentication scheme.

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

### -ValidIssuer
The valid issuer for the JWT tokens.
This parameter is used to validate the issuer of incoming tokens.

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

### -ValidIssuers
An array of valid issuers for the JWT tokens.
This parameter is used to validate the issuer of incoming tokens.

```yaml
Type: String[]
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ValidAudience
The valid audience for the JWT tokens.
This parameter is used to validate the audience of incoming tokens.

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

### -ValidAudiences
An array of valid audiences for the JWT tokens.
This parameter is used to validate the audience of incoming tokens.

```yaml
Type: String[]
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ValidAlgorithms
An array of valid algorithms for the JWT tokens.
This parameter is used to validate the algorithm of incoming tokens.

```yaml
Type: String[]
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipValidateIssuer
A switch parameter that, when specified, skips validation of the issuer.

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

### -SkipValidateAudience
A switch parameter that, when specified, skips validation of the audience.

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

### -SkipValidateLifetime
A switch parameter that, when specified, skips validation of the token lifetime.

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

### -ValidateIssuerSigningKey
A switch parameter that, when specified, validates the issuer signing key.

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

### -DoesNotRequireExpirationTime
A switch parameter that, when specified, indicates that expiration time validation is not required.

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

### -DoesNotRequireSignedTokens
A switch parameter that, when specified, indicates that signed tokens are not required.

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

### -IssuerSigningKey
The security key used to validate the issuer signing key.

```yaml
Type: SecurityKey
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IssuerSigningKeys
An array of security keys used to validate the issuer signing key.

```yaml
Type: SecurityKey[]
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClockSkew
The amount of time the token validation should allow for clock skew.

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

### -PassThru
A switch parameter that, when specified, returns the Kestrun server instance.

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

## RELATED LINKS
