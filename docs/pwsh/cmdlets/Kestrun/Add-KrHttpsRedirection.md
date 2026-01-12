---
layout: default
parent: PowerShell Cmdlets
nav_order: 35
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Add-KrHttpsRedirection
---

# Add-KrHttpsRedirection

## SYNOPSIS

Adds HTTPS redirection middleware to the Kestrun server.

## SYNTAX

### Items (Default)

```powershell
Add-KrHttpsRedirection [-Server <KestrunHost>] [-RedirectStatusCode <int>] [-HttpsPort <int>]
 [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Add-KrHttpsRedirection -Options <HttpsRedirectionOptions> [-Server <KestrunHost>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet allows you to add HTTPS redirection middleware to a Kestrun server instance.
It can be used to enforce HTTPS by redirecting HTTP requests to HTTPS.

## EXAMPLES

### EXAMPLE 1

Add-KrHttpsRedirection -Server $myServer -RedirectStatusCode 301 -HttpsPort 8443
Adds HTTPS redirection middleware to the specified Kestrun server instance,
using a 301 (Permanent Redirect) status code and redirecting to port 8443.

### EXAMPLE 2

$options = [Microsoft.AspNetCore.HttpsPolicy.HttpsRedirectionOptions]::new()
$options.RedirectStatusCode = 308
$options.HttpsPort = 8443
Add-KrHttpsRedirection -Server $myServer -Options $options -PassThru
Adds HTTPS redirection middleware to the specified Kestrun server instance,
using the provided HttpsRedirectionOptions and returns the modified server instance.

## PARAMETERS

### -HttpsPort

The HTTPS port to which requests should be redirected.
If not specified, the default port (443) is used.
This parameter is ignored if the Options parameter is provided.

```yaml
Type: System.Int32
DefaultValue: 0
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

An instance of HttpsRedirectionOptions to configure the HTTPS redirection behavior.
If this parameter is provided, it takes precedence over the individual parameters.

```yaml
Type: Microsoft.AspNetCore.HttpsPolicy.HttpsRedirectionOptions
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

If specified, the cmdlet returns the modified Kestrun server instance.

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

### -RedirectStatusCode

The HTTP status code to use for redirection.
Default is 307 (Temporary Redirect).
This parameter is ignored if the Options parameter is provided.

```yaml
Type: System.Int32
DefaultValue: 307
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

### -Server

The Kestrun server instance to which the HTTPS redirection middleware will be added.

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

This cmdlet is part of the Kestrun PowerShell module.


## RELATED LINKS

{{ Fill in the related links here }}
