---
layout: default
parent: PowerShell Cmdlets
nav_order: 100
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Get-KrOpenApiDocument
---

# Get-KrOpenApiDocument

## SYNOPSIS

Retrieves the OpenAPI document for the specified Kestrun server.

## SYNTAX

### HashTable (Default)

```powershell
Get-KrOpenApiDocument [-Server <KestrunHost>] [-DocId <string>] [-Version <OpenApiSpecVersion>]
 [<CommonParameters>]
```

### Yaml

```powershell
Get-KrOpenApiDocument [-Server <KestrunHost>] [-DocId <string>] [-Version <OpenApiSpecVersion>]
 [-Yaml] [<CommonParameters>]
```

### Json

```powershell
Get-KrOpenApiDocument [-Server <KestrunHost>] [-DocId <string>] [-Version <OpenApiSpecVersion>]
 [-Json] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function retrieves the OpenAPI document for the specified Kestrun server using the discovered components.

## EXAMPLES

### EXAMPLE 1

# Retrieve the OpenAPI document as a hashtable
$openApiDoc = Get-KrOpenApiDocument -Server $myServer -DocId 'default'

### EXAMPLE 2

# Retrieve the OpenAPI document in JSON format
$openApiJson = Get-KrOpenApiDocument -Server $myServer -Doc Id 'default' -Json

### EXAMPLE 3

# Retrieve the OpenAPI document in YAML format
$openApiYaml = Get-KrOpenApiDocument -Server $myServer -DocId 'default' -Yaml

## PARAMETERS

### -DocId

The ID of the OpenAPI document to retrieve.
Default is 'default'.

```yaml
Type: System.String
DefaultValue: Default
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

### -Json

If specified, the function will return the OpenAPI document in JSON format.
If neither Yaml nor Json is specified, the function will return the document as a PowerShell ordered hashtable.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Json
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

The Kestrun server instance for which the OpenAPI document will be retrieved.
If not specified, the function will attempt to resolve the current server context.

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

### -Version

The OpenAPI specification version to use for retrieval.
Default is OpenApi3_1.

```yaml
Type: Microsoft.OpenApi.OpenApiSpecVersion
DefaultValue: OpenApi3_1
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

### -Yaml

If specified, the function will return the OpenAPI document in YAML format.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Yaml
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

### [string] (if Yaml or Json is specified)
[System.Management.Automation.OrderedHashtable] (if neither Yaml nor Json is specified)

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

### System.Management.Automation.OrderedHashtable

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
