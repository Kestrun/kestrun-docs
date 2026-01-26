---
layout: default
parent: PowerShell Cmdlets
nav_order: 96
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Export-KrOpenApiDocument
---

# Export-KrOpenApiDocument

## SYNOPSIS

Exports the OpenAPI document for the specified Kestrun server in the desired format.

## SYNTAX

### __AllParameterSets

```powershell
Export-KrOpenApiDocument [[-Server] <KestrunHost>] [[-DocId] <string>] [[-Format] <string>]
 [[-Version] <OpenApiSpecVersion>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function exports the OpenAPI document for the specified Kestrun server in either JSON or YAML format.

## EXAMPLES

### EXAMPLE 1

# Export the OpenAPI document for the default document ID in JSON format
$openApiJson = Export-KrGenerateOpenApiDocument -Server $myServer -DocId 'default' -Format 'Json'

## PARAMETERS

### -DocId

The ID of the OpenAPI document to export.
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

### -Format

The format in which to export the OpenAPI document.
Valid values are 'Json' and 'Yaml'.
Default is 'Json'.

```yaml
Type: System.String
DefaultValue: Json
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance for which the OpenAPI document will be exported.
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

### -Version

The OpenAPI specification version to use for the export.
Default is OpenApi3_1.

```yaml
Type: Microsoft.OpenApi.OpenApiSpecVersion
DefaultValue: OpenApi3_1
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### string representing the OpenAPI document in the specified format.
This will be the JSON or YAML representation of the OpenAPI document.

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
