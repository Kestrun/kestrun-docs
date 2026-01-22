---
layout: default
parent: PowerShell Cmdlets
nav_order: 80
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Build-KrOpenApiDocument
---

# Build-KrOpenApiDocument

## SYNOPSIS

Builds the OpenAPI document for the specified Kestrun server.

## SYNTAX

### __AllParameterSets

```powershell
Build-KrOpenApiDocument [[-Server] <KestrunHost>] [[-DocId] <string>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function builds the OpenAPI document for the specified Kestrun server using the discovered components.

## EXAMPLES

### EXAMPLE 1

# Build the OpenAPI document for the default document ID
Build-KrOpenApiDocument -Server $myServer -DocId 'default'

## PARAMETERS

### -DocId

The ID of the OpenAPI document to build.
Default is 'default'.

```yaml
Type: System.String
DefaultValue: Default
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

### -Server

The Kestrun server instance for which the OpenAPI document will be built.
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

### Kestrun.OpenApi.OpenApiDocumentDescriptor

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
