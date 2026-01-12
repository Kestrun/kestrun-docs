---
layout: default
parent: PowerShell Cmdlets
nav_order: 144
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: New-KrOpenApiHeader
---

# New-KrOpenApiHeader

## SYNOPSIS

Creates a new OpenAPI Header object.

## SYNTAX

### Schema (Default)

```powershell
New-KrOpenApiHeader [-Server <KestrunHost>] [-DocId <string[]>] [-Description <string>] [-Required]
 [-Deprecated] [-AllowEmptyValue] [-Explode] [-AllowReserved] [-Style <ParameterStyle>]
 [-Example <Object>] [-Examples <hashtable>] [-Schema <Object>] [<CommonParameters>]
```

### Content

```powershell
New-KrOpenApiHeader [-Server <KestrunHost>] [-DocId <string[]>] [-Description <string>] [-Required]
 [-Deprecated] [-AllowEmptyValue] [-Explode] [-AllowReserved] [-Style <ParameterStyle>]
 [-Example <Object>] [-Examples <hashtable>] [-Content <hashtable>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet creates a new OpenAPI Header object that can be used in OpenAPI specifications.

## EXAMPLES

### EXAMPLE 1

$header = New-KrOpenApiHeader -Description "Custom Header" -Required -Schema [string]
This example creates a new OpenAPI Header object with a description, marks it as required, and sets its schema to string.

### EXAMPLE 2

$content = @{
    "application/json" = New-KrOpenApiMediaType -Schema [hashtable]
}
$header = New-KrOpenApiHeader -Description "JSON Header" -Content $content
This example creates a new OpenAPI Header object with a description and sets its content to application/json with a hashtable schema.

### EXAMPLE 3

$examples = @{
    "example1" = New-KrOpenApiExample -Summary "Example 1" -Value "Value1"
    "example2" = New-KrOpenApiExample -Summary "Example 2" -Value "Value2"
}
$header = New-KrOpenApiHeader -Description "Header with Examples" -Examples $examples -Schema [string]
This example creates a new OpenAPI Header object with a description, multiple examples, and sets its schema to string.

## PARAMETERS

### -AllowEmptyValue

Indicates whether the header allows empty values.

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

### -AllowReserved

Indicates whether the header allows reserved characters.

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

### -Content

A hashtable of content media types for the header.
(OpenAPi3.2 and above) (Parameter set 'Content')

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Content
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Deprecated

Indicates whether the header is deprecated.

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

### -Description

A brief description of the header.

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

### -DocId

The documentation IDs to which this header will be associated.

```yaml
Type: System.String[]
DefaultValue: '[Kestrun.OpenApi.OpenApiDocDescriptor]::DefaultDocumentationIds'
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

### -Example

An example value for the header.

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

### -Examples

A hashtable of example values for the header.

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

### -Explode

Indicates whether the header should be exploded.

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

### -Required

Indicates whether the header is required.

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

### -Schema

The schema type for the header.
(Parameter set 'Schema')

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Schema
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

The Kestrun server instance to use.

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

### -Style

The style of the header (e.g., simple, matrix, label, etc.).

```yaml
Type: System.Nullable`1[Microsoft.OpenApi.ParameterStyle]
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

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### Microsoft.OpenApi.OpenApiHeader object.

{{ Fill in the Description }}

### Microsoft.OpenApi.OpenApiHeader

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun PowerShell module for working with OpenAPI specifications.


## RELATED LINKS

{{ Fill in the related links here }}
