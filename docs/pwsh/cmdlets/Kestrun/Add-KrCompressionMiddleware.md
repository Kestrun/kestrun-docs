---
layout: default
parent: PowerShell Cmdlets
nav_order: 12
render_with_liquid: false
title: Add-KrCompressionMiddleware
---

# Add-KrCompressionMiddleware

## SYNOPSIS

Adds response compression to the server.

## SYNTAX

### Items (Default)

```powershell
Add-KrCompressionMiddleware [-EnableForHttps] [-MimeTypes <string[]>]
 [-ExcludedMimeTypes <string[]>] [-DisableGzip] [-DisableBrotli] [<CommonParameters>]
```

### Options

```powershell
Add-KrCompressionMiddleware -Options <ResponseCompressionOptions> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet allows you to configure response compression for the Kestrun server.
It can be used to compress responses using various algorithms like Gzip, Brotli, etc.

## EXAMPLES

### EXAMPLE 1

Add-KrCompressionMiddleware -EnableForHttps -MimeTypes 'text/plain', 'application/json' -ExcludedMimeTypes 'image/*' -Providers $gzipProvider, $brotliProvider
This example adds response compression to the server, enabling it for HTTPS requests, and specifying the MIME types to compress and exclude, as well as the compression providers to use.

### EXAMPLE 2

Add-KrCompressionMiddleware -Options $options
This example adds response compression to the server using the specified ResponseCompressionOptions.

## PARAMETERS

### -DisableBrotli

If specified, disables Brotli compression.

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

### -DisableGzip

If specified, disables Gzip compression.

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

### -EnableForHttps

If specified, enables response compression for HTTPS requests.

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

### -ExcludedMimeTypes

An array of MIME types to exclude from compression.

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

### -MimeTypes

An array of MIME types to compress.
If not specified, defaults to common text-based MIME types.

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

### -Options

The ResponseCompressionOptions to configure the response compression.

```yaml
Type: Microsoft.AspNetCore.ResponseCompression.ResponseCompressionOptions
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

This cmdlet is used to configure response compression for the Kestrun server, allowing you to specify which MIME types should be compressed and which should be excluded.
Providers is not supported yet.


## RELATED LINKS

- [](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.responsecompression.responsecompressionoptions?view=aspnetcore-8.0)