---
layout: default
parent: PowerShell Cmdlets
nav_order: 63
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 03/21/2026
PlatyPS schema version: 2024-05-01
title: Add-KrRequestDecompressionMiddleware
---

# Add-KrRequestDecompressionMiddleware

## SYNOPSIS

Adds request decompression middleware to the server.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrRequestDecompressionMiddleware [[-AllowedEncoding] <string[]>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Enables ASP.NET Core RequestDecompression middleware so Content-Encoding
(gzip/deflate/br) request bodies are transparently decompressed before
Kestrun parses form payloads.

## EXAMPLES

### EXAMPLE 1

$server | Add-KrRequestDecompressionMiddleware -AllowedEncoding gzip, br

### EXAMPLE 2

Add-KrRequestDecompressionMiddleware -AllowedEncoding gzip

## PARAMETERS

### -AllowedEncoding

The allowed request encodings (gzip, deflate, br).
If omitted, defaults are used.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
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

## OUTPUTS

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
