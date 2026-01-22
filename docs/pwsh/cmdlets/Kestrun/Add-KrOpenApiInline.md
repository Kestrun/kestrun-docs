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
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Add-KrOpenApiInline
---

# Add-KrOpenApiInline

## SYNOPSIS

Adds an inline OpenAPI element (Example or Link) to the specified OpenAPI document(s).

## SYNTAX

### __AllParameterSets

```powershell
Add-KrOpenApiInline [[-Server] <KestrunHost>] [[-DocId] <string[]>] [-Name] <string>
 [-Element] <Object> [[-IfExists] <OpenApiComponentConflictResolution>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet adds an inline OpenAPI element, either an Example or a Link, to one or more OpenAPI documents managed by the Kestrun server.

## EXAMPLES

### EXAMPLE 1

$example = New-KrOpenApiExample -Summary "User Example" -Description "An example of a user object." -Value @{ id = 1; name = "John Doe" }
Add-KrOpenApiInline -Name "UserExample" -Element $example -DocId "MyApiDoc"
This example creates a new OpenAPI Inline Example and adds it to the "MyApiDoc" OpenAPI document.

### EXAMPLE 2

$link = New-KrOpenApiLink -OperationId "getUser" -Description "Link to get user details" -Parameters @{ "userId" = "$response.body#/id" }
Add-KrOpenApiInline -Name "GetUserLink" -Element $link -DocId "MyApiDoc"
This example creates a new OpenAPI Inline Link and adds it to the "MyApiDoc" OpenAPI document.

## PARAMETERS

### -DocId

An array of OpenAPI document IDs to which the element will be added.
Defaults to the standard documentation IDs.

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

### -Element

The OpenAPI inline element object to be added.
This can be an OpenApiExample or OpenApiLink object.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IfExists

Specifies the conflict resolution strategy if an element with the same name already exists in the document.
Options are Overwrite, Ignore, or Error.
Defaults to Overwrite.

```yaml
Type: Kestrun.OpenApi.OpenApiComponentConflictResolution
DefaultValue: Overwrite
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

The name of the inline element to be added.
This can be provided via the pipeline or as a parameter.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Key
- Id
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance where the OpenAPI documents are managed.
If not specified, the default server instance is used.

```yaml
Type: Kestrun.Hosting.KestrunHost
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

{{ Fill in the Description }}

### System.Object

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
