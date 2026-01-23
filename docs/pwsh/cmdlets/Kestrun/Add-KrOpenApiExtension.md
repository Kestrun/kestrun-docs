---
layout: default
parent: PowerShell Cmdlets
nav_order: 49
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Add-KrOpenApiExtension
---

# Add-KrOpenApiExtension

## SYNOPSIS

Adds an OpenAPI extension to specified OpenAPI documents.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrOpenApiExtension [[-Server] <KestrunHost>] [[-DocId] <string[]>] [-Extensions] <IDictionary>
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function adds an OpenAPI extension to the specified OpenAPI documents in the Kestrun server.

## EXAMPLES

### EXAMPLE 1

# Add an extension to the default document
$extensions = [ordered]@{
    'x-logo' = @{
        'url' = 'https://example.com/logo.png'
        'backgroundColor' = '#FFFFFF'
        'altText' = 'Company Logo'
    }
}
Add-KrOpenApiExtension -Extensions $extensions
Adds the specified extension to the default OpenAPI document.

### EXAMPLE 2

# Add an extension to multiple documents
$extensions = [ordered]@{
    'x-api-status' = 'beta'
}
Add-KrOpenApiExtension -DocId @('Default', 'v2') -Extensions $extensions
Adds the specified extension to both the 'Default' and 'v2' OpenAPI documents.

## PARAMETERS

### -DocId

An array of OpenAPI document IDs to which the extension will be added.
Default is 'default'.

```yaml
Type: System.String[]
DefaultValue: '[Kestrun.OpenApi.OpenApiDocDescriptor]::DefaultDocumentationIds'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Extensions

A collection of OpenAPI extensions to add.

```yaml
Type: System.Collections.IDictionary
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance to which the OpenAPI extension will be added.
If not specified, the function will attempt to resolve the current server context.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
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

## NOTES

This cmdlet is part of the OpenAPI module.


## RELATED LINKS

{{ Fill in the related links here }}
