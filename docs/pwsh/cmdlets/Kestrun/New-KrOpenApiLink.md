---
layout: default
parent: PowerShell Cmdlets
nav_order: 145
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: New-KrOpenApiLink
---

# New-KrOpenApiLink

## SYNOPSIS

Creates a new OpenAPI Link object.

## SYNTAX

### ByOperationId (Default)

```powershell
New-KrOpenApiLink -OperationId <string> [-Description <string>] [-Server <OpenApiServer>]
 [-Parameters <hashtable>] [-RequestBody <Object>] [<CommonParameters>]
```

### ByOperationRef

```powershell
New-KrOpenApiLink -OperationRef <string> [-Description <string>] [-Server <OpenApiServer>]
 [-Parameters <hashtable>] [-RequestBody <Object>] [<CommonParameters>]
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
This link creates a new OpenAPI Link object that links to the "getUser" operation, with a description and parameters.

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
  Position: Named
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
- Name: ByOperationId
  Position: Named
  IsRequired: true
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
- Name: ByOperationRef
  Position: Named
  IsRequired: true
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
  Position: Named
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

An OpenAPI Server object that specifies the server to be used for the linked operation.

```yaml
Type: Microsoft.OpenApi.OpenApiServer
DefaultValue: ''
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

This function is part of the Kestrun PowerShell module for working with OpenAPI specifications.


## RELATED LINKS

{{ Fill in the related links here }}
