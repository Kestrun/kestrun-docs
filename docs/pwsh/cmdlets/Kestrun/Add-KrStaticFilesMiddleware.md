---
layout: default
parent: PowerShell Cmdlets
nav_order: 68
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.staticfileoptions?view=aspnetcore-8.0
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Add-KrStaticFilesMiddleware
---

# Add-KrStaticFilesMiddleware

## SYNOPSIS

Registers a static file server to serve files from a specified path.

## SYNTAX

### Items (Default)

```powershell
Add-KrStaticFilesMiddleware [-Server <KestrunHost>] [-RootPath <string>] [-RequestPath <string>]
 [-HttpsCompression <HttpsCompressionMode>] [-ServeUnknownFileTypes] [-DefaultContentType <string>]
 [-RedirectToAppendTrailingSlash] [-ContentTypeMap <hashtable>] [-NoCache] [-NoStore]
 [-MaxAge <int>] [-SharedMaxAge <int>] [-MaxStale] [-MaxStaleLimit <int>] [-MinFresh <int>]
 [-NoTransform] [-OnlyIfCached] [-Public] [-Private] [-MustRevalidate] [-ProxyRevalidate]
 [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Add-KrStaticFilesMiddleware -Options <StaticFileOptions> [-Server <KestrunHost>] [-NoCache]
 [-NoStore] [-MaxAge <int>] [-SharedMaxAge <int>] [-MaxStale] [-MaxStaleLimit <int>]
 [-MinFresh <int>] [-NoTransform] [-OnlyIfCached] [-Public] [-Private] [-MustRevalidate]
 [-ProxyRevalidate] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet allows you to serve static files from a specified path using the Kestrun server.
It can be used to serve files like images, stylesheets, and scripts.

## EXAMPLES

### EXAMPLE 1

$server | Add-KrStaticFilesMiddleware -RequestPath '/static' -HttpsCompression -ServeUnknownFileTypes -DefaultContentType 'application/octet-stream' -RedirectToAppendTrailingSlash
This example adds a static file service to the server for the path '/static', enabling HTTPS compression, allowing serving unknown file types,
setting the default content type to 'application/octet-stream', and redirecting requests to append a trailing slash.

### EXAMPLE 2

$server | Add-KrStaticFilesMiddleware -Options $options
This example adds a static file service to the server using the specified StaticFileOptions.

### EXAMPLE 3

$server | Add-KrStaticFilesMiddleware -RequestPath '/static' -MaxAge 600 -Public -MustRevalidate
This example adds a static file service to the server for the path '/static', setting caching headers with a max-age of 600 seconds,
marking the response as public, and adding the must-revalidate directive.

## PARAMETERS

### -ContentTypeMap

A hashtable mapping file extensions to MIME types.

```yaml
Type: System.Collections.Hashtable
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

### -DefaultContentType

The default content type to use for files served by the static file service.

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

### -HttpsCompression

The HTTPS compression mode to use for the static files.

```yaml
Type: Microsoft.AspNetCore.Http.Features.HttpsCompressionMode
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

### -MaxAge

If specified, sets the 'max-age' directive in seconds for the Cache-Control header.

```yaml
Type: System.Int32
DefaultValue: 0
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

### -MaxStale

If specified, adds a 'max-stale' directive to the Cache-Control header.

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

### -MaxStaleLimit

If specified, sets the limit in seconds for the 'max-stale' directive in the Cache-Control header.

```yaml
Type: System.Int32
DefaultValue: 0
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

### -MinFresh

If specified, sets the 'min-fresh' directive in seconds for the Cache-Control header.

```yaml
Type: System.Int32
DefaultValue: 0
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

### -MustRevalidate

If specified, adds a 'must-revalidate' directive to the Cache-Control header.

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

### -NoCache

If specified, adds a 'no-cache' directive to the Cache-Control header.

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

### -NoStore

If specified, adds a 'no-store' directive to the Cache-Control header.

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

### -NoTransform

If specified, adds a 'no-transform' directive to the Cache-Control header.

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

### -OnlyIfCached

If specified, adds an 'only-if-cached' directive to the Cache-Control header.

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

### -Options

The StaticFileOptions to configure the static file service.

```yaml
Type: Microsoft.AspNetCore.Builder.StaticFileOptions
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

If specified, the cmdlet will return the modified server instance after adding the static file service.

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

### -Private

If specified, adds a 'private' directive to the Cache-Control header.

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

### -ProxyRevalidate

If specified, adds a 'proxy-revalidate' directive to the Cache-Control header.

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

### -Public

If specified, adds a 'public' directive to the Cache-Control header.

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

### -RedirectToAppendTrailingSlash

If specified, redirects requests to append a trailing slash to the URL.

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

### -RequestPath

The path at which the static file service will be registered.

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

### -RootPath

The root path from which to serve static files.

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

The Kestrun server instance to which the static file service will be added.

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

### -ServeUnknownFileTypes

If specified, allows serving files with unknown MIME types.

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

### -SharedMaxAge

If specified, sets the 's-maxage' directive in seconds for the Cache-Control header
(used by shared caches).

```yaml
Type: System.Int32
DefaultValue: 0
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

ContentTypeProvider and ContentTypeProviderOptions are not supported yet.


## RELATED LINKS

- [](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.staticfileoptions?view=aspnetcore-8.0)