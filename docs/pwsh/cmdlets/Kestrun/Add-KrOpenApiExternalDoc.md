---
layout: default
parent: PowerShell Cmdlets
nav_order: 50
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Add-KrOpenApiExternalDoc
---

# Add-KrOpenApiExternalDoc

## SYNOPSIS

Adds an OpenAPI External Documentation object to specified OpenAPI documents.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrOpenApiExternalDoc [[-Server] <KestrunHost>] [[-DocId] <string[]>] [-Url] <uri>
 [[-Description] <string>] [[-Extensions] <ordered>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function adds an OpenAPI External Documentation object to the specified OpenAPI documents in the Kestrun server.

## EXAMPLES

### EXAMPLE 1

# Add external documentation to the default document
Add-KrOpenApiExternalDoc -Description 'Find out more about our API here.' -Url 'https://example.com/api-docs'
Adds external documentation with the specified description and URL to the default OpenAPI document.

### EXAMPLE 2

# Add external documentation to multiple documents
Add-KrOpenApiExternalDoc -DocId @('Default', 'v2') -Description 'API Docs' -Url 'https://example.com/docs'
Adds external documentation with the specified description and URL to both the 'Default' and 'v2' OpenAPI documents.

### EXAMPLE 3

# Add external documentation with extensions
$extensions = [ordered]@{
    'x-doc-type' = 'comprehensive'
    'x-contact' = 'Admin Team'
}
Add-KrOpenApiExternalDoc -Description 'Comprehensive API docs' -Url 'https://example.com/full-api-docs' -Extensions $extensions
Adds external documentation with the specified description, URL, and extensions to the default OpenAPI document.

## PARAMETERS

### -Description

A description of the external documentation.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DocId

An array of OpenAPI document IDs to which the external documentation will be added.
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

A collection of OpenAPI extensions to add to the external documentation.

```yaml
Type: System.Collections.Specialized.OrderedDictionary
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance to which the OpenAPI external documentation will be added.
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

### -Url

A URI to the external documentation.

```yaml
Type: System.Uri
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
