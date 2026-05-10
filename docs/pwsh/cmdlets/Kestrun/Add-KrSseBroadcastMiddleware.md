---
layout: default
parent: PowerShell Cmdlets
nav_order: 77
render_with_liquid: false
title: Add-KrSseBroadcastMiddleware
---

# Add-KrSseBroadcastMiddleware

## SYNOPSIS

Adds an SSE broadcast endpoint to the server.

## SYNTAX

### Items (Default)

```powershell
Add-KrSseBroadcastMiddleware [-Path <string>] [-DocId <string[]>] [-KeepAliveSeconds <int>]
 [-OperationId <string>] [-Summary <string>] [-Description <string>] [-Tags <string[]>]
 [-StatusCode <string>] [-ResponseDescription <string>] [-ItemSchemaType <Object>]
 [<CommonParameters>]
```

### ItemsSkipOpenApi

```powershell
Add-KrSseBroadcastMiddleware [-Path <string>] [-DocId <string[]>] [-SkipOpenApi]
 [<CommonParameters>]
```

### Options

```powershell
Add-KrSseBroadcastMiddleware -Options <SseBroadcastOptions> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Registers an in-memory SSE broadcaster service and maps an SSE endpoint that keeps connections open.
Clients connect (e.g.
via browser EventSource) and receive events broadcast by Send-KrSseBroadcastEvent.

## EXAMPLES

### EXAMPLE 1

Add-KrSseBroadcastMiddleware -Path '/sse/broadcast' -PassThru
Adds an SSE broadcast endpoint at '/sse/broadcast' and returns the server instance.

### EXAMPLE 2

New-KrServer -Name 'MyServer'
 Add-KrSseBroadcastMiddleware -Path '/events' -KeepAliveSeconds 30
 Adds an SSE broadcast endpoint at '/events' with 30-second keep-alives to the specified server.

### EXAMPLE 3

Add-KrSseBroadcastMiddleware -SkipOpenApi
Adds an SSE broadcast endpoint without OpenAPI documentation.

### EXAMPLE 4

$options = [Kestrun.Hosting.Options.SseBroadcastOptions]::new()
$options.Path = '/sse/updates'
$options.KeepAliveSeconds = 15
Add-KrSseBroadcastMiddleware -Options $options -PassThru
Adds an SSE broadcast endpoint at '/sse/updates' with 15-second keep-alives using the provided options object.

## PARAMETERS

### -Description

Optional OpenAPI description override for the broadcast endpoint.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DocId

The OpenAPI document IDs to which the SSE broadcast endpoint should be added.
Default is 'Default'.

```yaml
Type: System.String[]
DefaultValue: '[Kestrun.OpenApi.OpenApiDocDescriptor]::DefaultDocumentationIds'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ItemsSkipOpenApi
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ItemSchemaType

Optional OpenAPI schema type for the stream payload (default: String).
This only applies when -OpenApi is not provided.

```yaml
Type: System.Object
DefaultValue: string
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -KeepAliveSeconds

If greater than 0, sends periodic SSE comments (keep-alives) to keep intermediaries from closing idle connections.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
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

Optional OpenAPI operationId override for the broadcast endpoint.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Options

Full OpenAPI customization object (Kestrun.Hosting.Options.SseBroadcastOptions).
When provided, it takes precedence over the individual parameters.

```yaml
Type: Kestrun.Hosting.Options.SseBroadcastOptions
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Options
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Path

The URL path where the SSE broadcast endpoint will be accessible.
Defaults to '/sse/broadcast'.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ItemsSkipOpenApi
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ResponseDescription

Optional OpenAPI response description override.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SkipOpenApi

If specified, the OpenAPI documentation for this endpoint will be skipped.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ItemsSkipOpenApi
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -StatusCode

Optional OpenAPI response status code override (default: 200).

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Summary

Optional OpenAPI summary override for the broadcast endpoint.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Tags

Optional OpenAPI tags override for the broadcast endpoint.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
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

Call this before Enable-KrConfiguration.
The SSE broadcast endpoint allows clients to connect and receive server-sent events broadcast via Send-KrSseBroadcastEvent.
This cmdlet is part of the Kestrun PowerShell module and is used to manage SSE broadcast endpoints on the Kestrun server.


## RELATED LINKS

{{ Fill in the related links here }}
