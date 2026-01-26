---
layout: default
parent: PowerShell Cmdlets
nav_order: 4
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Add-KrApiDocumentationRoute
---

# Add-KrApiDocumentationRoute

## SYNOPSIS

Adds a new API documentation route (Redoc or Swagger UI) to the Kestrun server.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrApiDocumentationRoute [[-Server] <KestrunHost>] [[-Options] <MapRouteOptions>]
 [[-Pattern] <string>] [[-DocumentType] <string>] [[-OpenApiEndpoint] <uri>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function allows you to add a new API documentation route to the Kestrun server by specifying the route path, document type, and the OpenAPI endpoint.

## EXAMPLES

### EXAMPLE 1

Add-KrApiDocumentationRoute -Server $myServer -Pattern "/docs/redoc" -DocumentType "Redoc" -OpenApiEndpoint "/openapi/v3.0/openapi.json"
Adds a new Redoc UI route to the specified Kestrun server with the given pattern and OpenAPI endpoint.

### EXAMPLE 2

Get-KrServer | Add-KrApiDocumentationRoute -Pattern "/docs/swagger" -DocumentType "Swagger" -OpenApiEndpoint "/openapi/v3.0/openapi.json" -PassThru

## PARAMETERS

### -DocumentType

The type of API documentation to add.
Valid values are 'Redoc', 'Swagger', 'Scalar', 'Rapidoc', and 'Elements'.
Default is 'Swagger'.

```yaml
Type: System.String
DefaultValue: Swagger
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

### -OpenApiEndpoint

The OpenAPI endpoint URI that the documentation UI will use to fetch the API documentation.
Default is '/openapi/v3.0/openapi.json'.

```yaml
Type: System.Uri
DefaultValue: "[Uri]::new('/openapi/v3.0/openapi.json', [UriKind]::Relative)"
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

### -Options

The MapRouteOptions object to configure the route.

```yaml
Type: Kestrun.Hosting.Options.MapRouteOptions
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

### -PassThru

If specified, the function will return the created route object.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
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

### -Pattern

The URL path for the new API documentation route.
Default is '/docs/redoc' for Redoc and '/docs/swagger' for Swagger UI.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Path
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

The Kestrun server instance to which the route will be added.
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

### [Microsoft.AspNetCore.Builder.IEndpointConventionBuilder] representing the created route.

{{ Fill in the Description }}

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun PowerShell module and is used to manage routes


## RELATED LINKS

{{ Fill in the related links here }}
