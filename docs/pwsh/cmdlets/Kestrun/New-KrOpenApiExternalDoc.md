---
layout: default
parent: PowerShell Cmdlets
nav_order: 137
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: New-KrOpenApiExternalDoc
---

# New-KrOpenApiExternalDoc

## SYNOPSIS

Creates a new OpenAPI external documentation object.

## SYNTAX

### __AllParameterSets

```powershell
New-KrOpenApiExternalDoc [[-Description] <string>] [-Url] <uri> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function creates a new OpenAPI external documentation object using the provided parameters.

## EXAMPLES

### EXAMPLE 1

$externalDocs = New-KrOpenApiExternalDoc -Description 'Find out more about our API here.' -Url 'https://example.com/api-docs'

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
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
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
  Position: 1
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

### Microsoft.OpenApi.OpenApiExternalDocs

{{ Fill in the Description }}

## NOTES

This cmdlet is part of the OpenAPI module.


## RELATED LINKS

{{ Fill in the related links here }}
