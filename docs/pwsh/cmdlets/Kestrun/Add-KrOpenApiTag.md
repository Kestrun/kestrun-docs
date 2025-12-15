---
layout: default
parent: PowerShell Cmdlets
nav_order: 52
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Add-KrOpenApiTag
---

# Add-KrOpenApiTag

## SYNOPSIS

Adds a tag to the OpenAPI document.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrOpenApiTag [[-Server] <KestrunHost>] [[-DocId] <string[]>] [-Name] <string>
 [[-Description] <string>] [[-ExternalDocs] <OpenApiExternalDocs>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function adds a tag to the OpenAPI document using the provided parameters in the specified OpenAPI documents in the Kestrun server.

## EXAMPLES

### EXAMPLE 1

# Add a tag to the default document
Add-KrOpenApiTag -Name 'MyTag' -Description 'This is my tag.' `
    -ExternalDocs (New-KrOpenApiExternalDoc -Description 'More info' -Url 'https://example.com/tag-info')

## PARAMETERS

### -Description

A description of the tag.

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

An array of OpenAPI document IDs to which the tag will be added.
Default is 'default'.

```yaml
Type: System.String[]
DefaultValue: '[Kestrun.Authentication.IOpenApiAuthenticationOptions]::DefaultDocumentationIds'
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

### -ExternalDocs

An OpenAPI External Documentation object associated with the tag.

```yaml
Type: Microsoft.OpenApi.OpenApiExternalDocs
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

### -Name

The name of the tag.

```yaml
Type: System.String
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

The Kestrun server instance to which the OpenAPI tag will be added.
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
