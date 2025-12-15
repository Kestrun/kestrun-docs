---
layout: default
parent: PowerShell Cmdlets
nav_order: 191
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Test-KrOpenApiDocument
---

# Test-KrOpenApiDocument

## SYNOPSIS

Tests the OpenAPI document for the specified Kestrun server.

## SYNTAX

### __AllParameterSets

```powershell
Test-KrOpenApiDocument [[-Server] <KestrunHost>] [[-DocId] <string>]
 [[-Version] <OpenApiSpecVersion>] [[-DiagnosticVariable] <string>] [-ThrowOnError]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function tests the OpenAPI document for the specified Kestrun server using the discovered components.

## EXAMPLES

### EXAMPLE 1

# Test the OpenAPI document for the default document ID
Test-KrOpenApiDocument -Server $myServer -DocId 'default'

## PARAMETERS

### -DiagnosticVariable

If specified, the function will store the diagnostic results in a variable with this name in the script scope.

```yaml
Type: System.String
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

### -DocId

The ID of the OpenAPI document to test.
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

### -Server

The Kestrun server instance for which the OpenAPI document will be tested.
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

### -ThrowOnError

If specified, the function will throw an error if the OpenAPI document contains any validation errors

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

### -Version

The OpenAPI specification version to use for testing.
Default is OpenApi3_1.

```yaml
Type: Microsoft.OpenApi.OpenApiSpecVersion
DefaultValue: OpenApi3_1
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

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### Microsoft.OpenApi.Reader.OpenApiDiagnostic

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
