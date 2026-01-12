---
layout: default
parent: PowerShell Cmdlets
nav_order: 37
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.authentication.jwtbearer.jwtbearerauthenticationextensions.addjwtbearerauthentication?view=aspnetcore-8.0
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Add-KrJWTBearerAuthentication
---

# Add-KrJWTBearerAuthentication

## SYNOPSIS

Adds JWT Bearer authentication to the Kestrun server.

## SYNTAX

### Items (Default)

```powershell
Add-KrJWTBearerAuthentication [-Server <KestrunHost>] [-AuthenticationScheme <string>]
 [-DisplayName <string>] [-DocId <string[]>] [-Description <string>] [-Deprecated]
 [-ClaimPolicy <ClaimPolicyConfig>] [-ValidIssuer <string>] [-ValidIssuers <string[]>]
 [-ValidAudience <string>] [-ValidAudiences <string[]>] [-ValidAlgorithms <string[]>]
 [-SkipValidateIssuer] [-SkipValidateAudience] [-SkipValidateLifetime] [-ValidateIssuerSigningKey]
 [-DoesNotRequireExpirationTime] [-DoesNotRequireSignedTokens] [-IssuerSigningKey <SecurityKey>]
 [-IssuerSigningKeys <SecurityKey[]>] [-ClockSkew <timespan>] [-MapInboundClaims] [-SaveToken]
 [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Add-KrJWTBearerAuthentication -Options <JwtAuthOptions> [-Server <KestrunHost>]
 [-AuthenticationScheme <string>] [-DisplayName <string>] [-DocId <string[]>]
 [-ClaimPolicy <ClaimPolicyConfig>] [-PassThru] [<CommonParameters>]
```

### ValParamOption

```powershell
Add-KrJWTBearerAuthentication -ValidationParameter <TokenValidationParameters>
 [-Server <KestrunHost>] [-AuthenticationScheme <string>] [-DisplayName <string>]
 [-DocId <string[]>] [-ClaimPolicy <ClaimPolicyConfig>] [-MapInboundClaims] [-SaveToken] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Configures the Kestrun server to use JWT Bearer authentication for incoming requests.

## EXAMPLES

### EXAMPLE 1

Add-KrJWTBearerAuthentication -Server $server -Name "MyAuth" -ValidationParameter $validationParameter -ClaimPolicy $claimPolicy
Configure Kestrun server to use JWT Bearer authentication with the specified validation parameters and claim policy.

### EXAMPLE 2

Add-KrJWTBearerAuthentication -Server $server -Name "MyAuth" -ValidIssuer "https://issuer" -ValidAudience "api" -ValidAlgorithms @("HS256") -SkipValidateIssuer -PassThru
Configure Kestrun server to use JWT Bearer authentication with the specified issuer, audience, and algorithms, skipping issuer validation, and return the server instance.

### EXAMPLE 3

Add-KrJWTBearerAuthentication -Server $server -Name "MyAuth" -ValidIssuer "https://issuer" -ValidAudience "api" -ValidAlgorithms @("HS256") -SkipValidateIssuer -PassThru
Configure Kestrun server to use JWT Bearer authentication with the specified issuer, audience, and algorithms, skipping issuer validation, and return the server instance.

### EXAMPLE 4

Add-KrJWTBearerAuthentication -Server $server -Name "MyAuth" -ValidIssuer "https://issuer" -ValidAudience "api" -ValidAlgorithms @("HS256") -SkipValidateIssuer -PassThru
Configure Kestrun server to use JWT Bearer authentication with the specified issuer, audience, and algorithms, skipping issuer validation, and return the server instance.

## PARAMETERS

### -AuthenticationScheme

The name of the authentication scheme.
This name is used to identify the authentication scheme in the Kestrun server configuration.

```yaml
Type: System.String
DefaultValue: '[Kestrun.Authentication.AuthenticationDefaults]::JwtBearerAuthenticationSchemeName'
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

The claim policy configuration for the authentication scheme.

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

### -ClockSkew

The amount of time the token validation should allow for clock skew.

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

### -Deprecated

If specified, marks the authentication scheme as deprecated in OpenAPI documentation.

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

### -Description

A description of the JWT Bearer authentication scheme.

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
This name is shown in user interfaces and documentation.

```yaml
Type: System.String
DefaultValue: JWT Bearer Authentication
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

### -DoesNotRequireExpirationTime

A switch parameter that, when specified, indicates that expiration time validation is not required.

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

### -DoesNotRequireSignedTokens

A switch parameter that, when specified, indicates that signed tokens are not required.

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

### -IssuerSigningKey

The security key used to validate the issuer signing key.

```yaml
Type: Microsoft.IdentityModel.Tokens.SecurityKey
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

### -IssuerSigningKeys

An array of security keys used to validate the issuer signing key.

```yaml
Type: Microsoft.IdentityModel.Tokens.SecurityKey[]
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

### -MapInboundClaims

A switch parameter that, when specified, maps inbound claims to Microsoft identity model claims.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ValParamOption
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
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

An instance of Kestrun.Authentication.JwtAuthOptions containing the JWT Bearer authentication configuration.
This parameter is mandatory when using the 'Options' parameter set.

```yaml
Type: Kestrun.Authentication.JwtAuthOptions
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

A switch parameter that, when specified, returns the Kestrun server instance.

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

### -SaveToken

A switch parameter that, when specified, saves the token in the authentication properties after a successful authentication.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ValParamOption
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
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

### -SkipValidateAudience

A switch parameter that, when specified, skips validation of the audience.

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

### -SkipValidateIssuer

A switch parameter that, when specified, skips validation of the issuer.

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

### -SkipValidateLifetime

A switch parameter that, when specified, skips validation of the token lifetime.

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

### -ValidAlgorithms

An array of valid algorithms for the JWT tokens.
This parameter is used to validate the algorithm of incoming tokens.

```yaml
Type: System.String[]
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

### -ValidateIssuerSigningKey

A switch parameter that, when specified, validates the issuer signing key.

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

### -ValidationParameter

The token validation parameters used to validate incoming JWT tokens.
This parameter is mandatory when using the 'ValParamOption' parameter set.

```yaml
Type: Microsoft.IdentityModel.Tokens.TokenValidationParameters
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ValParamOption
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ValidAudience

The valid audience for the JWT tokens.
This parameter is used to validate the audience of incoming tokens.

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

### -ValidAudiences

An array of valid audiences for the JWT tokens.
This parameter is used to validate the audience of incoming tokens.

```yaml
Type: System.String[]
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

### -ValidIssuer

The valid issuer for the JWT tokens.
This parameter is used to validate the issuer of incoming tokens.

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

### -ValidIssuers

An array of valid issuers for the JWT tokens.
This parameter is used to validate the issuer of incoming tokens.

```yaml
Type: System.String[]
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

This function is part of the Kestrun.Authentication module and is used to configure JWT Bearer authentication for Kestrun servers.
Maps to Kestrun.Hosting.KestrunHostAuthnExtensions.AddJwtBearerAuthentication


## RELATED LINKS

- [](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.authentication.jwtbearer.jwtbearerauthenticationextensions.addjwtbearerauthentication?view=aspnetcore-8.0)