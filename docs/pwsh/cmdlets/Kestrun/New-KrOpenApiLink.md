---
layout: default
parent: PowerShell Cmdlets
nav_order: 138
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: New-KrOpenApiLink
---

# New-KrOpenApiLink

## SYNOPSIS

Creates a new OpenAPI Link object.

## SYNTAX

### __AllParameterSets

```powershell
New-KrOpenApiLink [[-OperationRef] <string>] [[-OperationId] <string>] [[-Description] <string>]
 [[-Server] <OpenApiServer>] [[-Parameters] <hashtable>] [[-RequestBody] <Object>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function creates a new OpenAPI Link object that can be used to define relationships between operations
in an OpenAPI specification.
Links allow you to specify how the output of one operation can be used as input to another operation.

## EXAMPLES

### EXAMPLE 1

$link = New-KrOpenApiLink -OperationId "getUser" -Description "Link to get user details" -Parameters @{ "userId" = "$response.body#/id" }
This example creates a new OpenAPI Link object that links to the "getUser" operation, with a description and parameters.

## PARAMETERS

### -Description

A description of the link.

```yaml
Type: System.String
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

### -OperationId

The operationId of an existing operation in the OpenAPI specification.

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

### -OperationRef

A reference to an existing operation in the OpenAPI specification using a JSON Reference.

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

### -Parameters

A hashtable mapping parameter names to runtime expressions or literal objects that define the parameters for the linked operation.

```yaml
Type: System.Collections.Hashtable
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

### -RequestBody

A runtime expression or literal object that defines the request body for the linked operation.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

An OpenAPI Server object that specifies the server to be used for the linked operation.

```yaml
Type: Microsoft.OpenApi.OpenApiServer
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

## INPUTS

## OUTPUTS

## NOTES

This function is part of the Kestrun PowerShell module for working with OpenAPI specifications.


## RELATED LINKS

{{ Fill in the related links here }}
