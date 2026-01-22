---
layout: default
parent: PowerShell Cmdlets
nav_order: 2
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.antiforgery.antiforgeryoptions?view=aspnetcore-8.0
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Add-KrAntiforgeryMiddleware
---

# Add-KrAntiforgeryMiddleware

## SYNOPSIS

Adds an Antiforgery service to the server.

## SYNTAX

### Items (Default)

```powershell
Add-KrAntiforgeryMiddleware [-Server <KestrunHost>] [-FormFieldName <string>] [-CookieName <string>]
 [-HeaderName <string>] [-SuppressXFrameOptionsHeader] [-SuppressReadingTokenFromFormBody]
 [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Add-KrAntiforgeryMiddleware -Options <AntiforgeryOptions> [-Server <KestrunHost>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet allows you to configure the Antiforgery service for the Kestrun server.
It can be used to protect against Cross-Site Request Forgery (CSRF) attacks by generating and validating antiforgery tokens.

## EXAMPLES

### EXAMPLE 1

$server | Add-KrAntiforgeryMiddleware -Cookie $cookieBuilder -FormField '__RequestVerificationToken' -HeaderName 'X-CSRF-Token' -SuppressXFrameOptionsHeader
This example adds an Antiforgery service to the server with a custom cookie builder, form field name, and header name.

### EXAMPLE 2

$server | Add-KrAntiforgeryMiddleware -Options $options
This example adds an Antiforgery service to the server using the specified Antiforgery options.

## PARAMETERS

### -CookieName

The name of the cookie to use for the Antiforgery token.
Default is ".Kestrun.AntiXSRF".

```yaml
Type: System.String
DefaultValue: .Kestrun.AntiXSRF
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

### -FormFieldName

The name of the form field to use for the Antiforgery token.
If not specified, the default will be used.

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

### -HeaderName

The name of the header to use for the Antiforgery token.
Default is "X-CSRF-TOKEN".

```yaml
Type: System.String
DefaultValue: X-CSRF-TOKEN
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

### -Options

The Antiforgery options to configure the service.

```yaml
Type: Microsoft.AspNetCore.Antiforgery.AntiforgeryOptions
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

If specified, the cmdlet will return the modified server instance after adding the Antiforgery service.

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

The Kestrun server instance to which the Antiforgery service will be added.

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

### -SuppressReadingTokenFromFormBody

If specified, the Antiforgery service will not read tokens from the form body.
This option is only available in .NET 9.0+ / PowerShell 7.6+.

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

### -SuppressXFrameOptionsHeader

If specified, the X-Frame-Options header will not be added to responses.

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

## RELATED LINKS

- [](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.antiforgery.antiforgeryoptions?view=aspnetcore-8.0)