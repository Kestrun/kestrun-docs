---
layout: default
parent: PowerShell Cmdlets
nav_order: 139
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: New-KrOpenApiServer
---

# New-KrOpenApiServer

## SYNOPSIS

Creates a new OpenAPI server.

## SYNTAX

### __AllParameterSets

```powershell
New-KrOpenApiServer [-Url] <string> [[-Description] <string>] [[-Variables] <ordered>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function creates a new OpenAPI server using the provided parameters.

## EXAMPLES

### EXAMPLE 1

$variables = @{
    env = New-KrOpenApiServerVariable -Default 'dev' -Enum @('dev', 'staging', 'prod') -Description 'Environment name'
}
$server = New-KrOpenApiServer -Description 'My API Server' -Url 'https://api.example.com' -Variables $variables

## PARAMETERS

### -Description

A description of the server.

```yaml
Type: System.String
DefaultValue: ''
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

### -Url

The URL of the server.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Variables

A dictionary of server variables.

```yaml
Type: System.Collections.Specialized.OrderedDictionary
DefaultValue: ''
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.OpenApi.OpenApiServer

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
