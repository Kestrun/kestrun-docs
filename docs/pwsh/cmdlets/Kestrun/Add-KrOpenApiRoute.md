---
layout: default
parent: PowerShell Cmdlets
nav_order: 49
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Add-KrOpenApiRoute
---

# Add-KrOpenApiRoute

## SYNOPSIS

Adds a new OpenAPI map route to the Kestrun server.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrOpenApiRoute [[-Server] <KestrunHost>] [[-Options] <MapRouteOptions>] [[-Pattern] <string>]
 [[-SpecVersion] <OpenApiSpecVersion[]>] [[-VersionVarName] <string>] [[-FormatVarName] <string>]
 [[-RefreshVarName] <string>] [[-DefaultFormat] <string>] [[-DefaultVersion] <string>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function allows you to add a new OpenAPI map route to the Kestrun server by specifying the route path, OpenAPI specification versions, and other options.

## EXAMPLES

### EXAMPLE 1

Add-KrOpenApiRoute -Server $myServer -Pattern "/openapi/{version}/{format}" -SpecVersion @('OpenApi3_0') `
    -VersionVarName "version" -FormatVarName "format" -DefaultFormat "json" -DefaultVersion "v3.0"
Adds a new OpenAPI map route to the specified Kestrun server with the given pattern and options.

### EXAMPLE 2

Get-KrServer | Add-KrOpenApiRoute -Pattern "/openapi/{version}/{format}" -SpecVersion @('OpenApi3_0') `
    -VersionVarName "version" -FormatVarName "format" -DefaultFormat "json" -DefaultVersion "v3.0" -PassThru
Adds a new OpenAPI map route to the specified Kestrun server with the given pattern and options.

## PARAMETERS

### -DefaultFormat

The default format for the OpenAPI document if not specified in the route.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DefaultVersion

The default version for the OpenAPI document if not specified in the route.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 8
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -FormatVarName

The name of the route variable used to specify the OpenAPI format (e.g., json or yaml).

```yaml
Type: System.String
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

The URL path for the new OpenAPI map route.
Default is '/openapi/{version}/openapi.{format}'.

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

### -RefreshVarName

The name of the route variable used to trigger a refresh of the OpenAPI document.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
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

### -SpecVersion

An array of OpenAPI specification versions to support (e.g., OpenApi2_0 or OpenApi3_0).

```yaml
Type: Microsoft.OpenApi.OpenApiSpecVersion[]
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

### -VersionVarName

The name of the route variable used to specify the OpenAPI version.

```yaml
Type: System.String
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### [Kestrun.Hosting.KestrunHost] representing the created route.

{{ Fill in the Description }}

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun PowerShell module and is used to manage routes


## RELATED LINKS

{{ Fill in the related links here }}
