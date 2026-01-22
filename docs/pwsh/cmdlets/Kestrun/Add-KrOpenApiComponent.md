---
layout: default
parent: PowerShell Cmdlets
nav_order: 47
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Add-KrOpenApiComponent
---

# Add-KrOpenApiComponent

## SYNOPSIS

Adds an OpenAPI component (Example or Link) to the specified OpenAPI document(s).

## SYNTAX

### __AllParameterSets

```powershell
Add-KrOpenApiComponent [[-Server] <KestrunHost>] [[-DocId] <string[]>] [-Name] <string>
 [-Component] <Object> [[-IfExists] <OpenApiComponentConflictResolution>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet adds an OpenAPI component, either an Example or a Link, to one or more OpenAPI documents managed by the Kestrun server.

## EXAMPLES

### EXAMPLE 1

$example = New-KrOpenApiExample -Summary "User Example" -Description "An example of a user object." -Value @{ id = 1; name = "John Doe" }
Add-KrOpenApiComponent -Name "UserExample" -Component $example -DocId "MyApiDoc"
This example creates a new OpenAPI Component Example and adds it to the "MyApiDoc" OpenAPI document.

### EXAMPLE 2

$link = New-KrOpenApiLink -OperationId "getUser" -Description "Link to get user details" -Parameters @{ "userId" = "$response.body#/id" }
Add-KrOpenApiComponent -Name "GetUserLink" -Component $link -DocId "MyApiDoc"
This example creates a new OpenAPI Link and adds it to the "MyApiDoc" OpenAPI document.

### EXAMPLE 3

New-KrOpenApiExample -Summary "Product Example" -Value @{ id = 101; name = "Widget"; price = 9.99 } | Add-KrOpenApiComponent -Name "ProductExample" -DocId "ECommerceApi"
This example creates a new OpenAPI Component Example for a product and pipes it directly to the Add-KrOpenApiComponent cmdlet to add it to the "ECommerceApi" document.

### EXAMPLE 4

New-KrOpenApiLink -OperationId "getOrder" -Description "Link to get order details" -Parameters @{ "orderId" = "$response.body#/id" } | Add-KrOpenApiComponent -Name "GetOrderLink" -DocId "ECommerceApi"
This example creates a new OpenAPI Link for getting order details and pipes it directly to the Add-KrOpenApiComponent cmdlet to add it to the "ECommerceApi" document.

## PARAMETERS

### -Component

The OpenAPI component object to be added.
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

### -DocId

An array of OpenAPI document IDs to which the component will be added.
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

### -IfExists

Specifies the conflict resolution strategy if a component with the same name already exists in the document.
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

The name of the component to be added.
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
