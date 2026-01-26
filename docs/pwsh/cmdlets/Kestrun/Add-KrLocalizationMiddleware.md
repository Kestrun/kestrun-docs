---
layout: default
parent: PowerShell Cmdlets
nav_order: 44
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Add-KrLocalizationMiddleware
---

# Add-KrLocalizationMiddleware

## SYNOPSIS

Adds localization middleware to the Kestrun server.

## SYNTAX

### Items (Default)

```powershell
Add-KrLocalizationMiddleware [-Server <KestrunHost>] [-DefaultCulture <string>]
 [-ResourcesBasePath <string>] [-FileName <string>] [-QueryKey <string>] [-CookieName <string>]
 [-DisableAcceptLanguage] [-EnableQuery] [-EnableCookie] [-SetDefaultThreadCulture] [-PassThru]
 [<CommonParameters>]
```

### Options

```powershell
Add-KrLocalizationMiddleware -Options <KestrunLocalizationOptions> [-Server <KestrunHost>]
 [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Enables PowerShell-style localization using string table files (Messages.psd1).
The middleware resolves the culture once per request and exposes localized strings via
Context.LocalizedStrings (alias: Context.Strings) and the Localizer variable in route runspaces.

## EXAMPLES

### EXAMPLE 1

Add-KrLocalizationMiddleware -ResourcesBasePath './Assets/i18n'

### EXAMPLE 2

$opts = [Kestrun.Localization.KestrunLocalizationOptions]::new()
$opts.DefaultCulture = 'en-US'
$opts.ResourcesBasePath = 'i18n'
Add-KrLocalizationMiddleware -Options $opts -PassThru

## PARAMETERS

### -CookieName

Cookie name used to request a culture.
Default is 'lang'.

```yaml
Type: System.String
DefaultValue: lang
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

### -DefaultCulture

Default culture used when no match is found.
Default is 'en-US'.

```yaml
Type: System.String
DefaultValue: en-US
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

### -DisableAcceptLanguage

Disables Accept-Language header resolution when specified.

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

### -EnableCookie

Enables cookie resolution when specified.
Default is false.

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

### -EnableQuery

Enables query string resolution when specified.
Default is false.

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

### -FileName

Localization file name.
Default is 'Messages.psd1'.

```yaml
Type: System.String
DefaultValue: Messages.psd1
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

A Kestrun.Localization.KestrunLocalizationOptions instance.
Overrides individual parameters.

```yaml
Type: Kestrun.Localization.KestrunLocalizationOptions
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

Returns the server instance for chaining.

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

### -QueryKey

Query string key used to request a culture.
Default is 'lang'.

```yaml
Type: System.String
DefaultValue: lang
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

### -ResourcesBasePath

Base path for localization resources.
Default is 'i18n'.

```yaml
Type: System.String
DefaultValue: i18n
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

### -SetDefaultThreadCulture

When specified, sets the process-wide default thread culture
(CultureInfo.DefaultThreadCurrentCulture and
CultureInfo.DefaultThreadCurrentUICulture) once during application
startup, using the configured DefaultCulture.
This culture is used as a fallback for newly created threads that do
not have an explicit CurrentCulture set.
It does not change the culture
of existing threads or runspaces and does not replace per-request
culture handling.
Default is false.

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

{{ Fill in the related links here }}
