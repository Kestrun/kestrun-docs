---
layout: default
parent: PowerShell Cmdlets
nav_order: 55
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.mvc.razorpages.razorpagesoptions?view=aspnetcore-8.0
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Add-KrRazorPageService
---

# Add-KrRazorPageService

## SYNOPSIS

Adds Razor Pages service to the server.

## SYNTAX

### Items (Default)

```powershell
Add-KrRazorPageService [-Server <KestrunHost>] [-RootDirectory <string>]
 [-Conventions <IPageConvention[]>] [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Add-KrRazorPageService -Options <RazorPagesOptions> [-Server <KestrunHost>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet allows you to register Razor Pages with the Kestrun server.
It can be used to serve dynamic web pages using Razor syntax.

## EXAMPLES

### EXAMPLE 1

$server | Add-KrRazorPageService -RootDirectory '/Pages' -Conventions $conventions
This example adds Razor Pages service to the server, specifying the root directory and conventions for the pages.

### EXAMPLE 2

$server | Add-KrRazorPageService -Options $options
This example adds Razor Pages service to the server using the specified RazorPagesOptions.

## PARAMETERS

### -Conventions

An array of page conventions to apply to the Razor Pages.

```yaml
Type: Microsoft.AspNetCore.Mvc.ApplicationModels.IPageConvention[]
DefaultValue: '@()'
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

The RazorPagesOptions to configure the Razor Pages service.

```yaml
Type: Microsoft.AspNetCore.Mvc.RazorPages.RazorPagesOptions
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

If specified, the cmdlet will return the modified server instance.

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

### -RootDirectory

The root directory for the Razor Pages.

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

### -Server

The Kestrun server instance to which the Razor Pages service will be added.

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

This cmdlet is used to register Razor Pages with the Kestrun server, allowing you to serve dynamic web pages using Razor syntax.


## RELATED LINKS

- [](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.mvc.razorpages.razorpagesoptions?view=aspnetcore-8.0)