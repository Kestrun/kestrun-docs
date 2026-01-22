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
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: New-KrOpenApiExample
---

# New-KrOpenApiExample

## SYNOPSIS

Creates a new OpenAPI Component Example object.

## SYNTAX

### Value (Default)

```powershell
New-KrOpenApiExample -Summary <string> -Value <Object> [-Server <KestrunHost>]
 [-Description <string>] [-Extensions <IDictionary>] [<CommonParameters>]
```

### ExternalValue

```powershell
New-KrOpenApiExample -Summary <string> -ExternalValue <string> [-Server <KestrunHost>]
 [-Description <string>] [-Extensions <IDictionary>] [<CommonParameters>]
```

### DataValue

```powershell
New-KrOpenApiExample -Summary <string> -DataValue <Object> [-Server <KestrunHost>]
 [-Description <string>] [-SerializedValue <string>] [-Extensions <IDictionary>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet creates a new OpenAPI Component Example object that can be used in OpenAPI specifications.

## EXAMPLES

### EXAMPLE 1

$example = New-KrOpenApiExample -Summary "User Example" -Description "An example of a user object." -Value @{ id = 1; name = "John Doe" }
This example creates a new OpenAPI Component Example with a summary, description, and a value.

### EXAMPLE 2

$example = New-KrOpenApiExample -Summary "External Example" -ExternalValue "http://example.com/example.json"
This example creates a new OpenAPI Component Example that references an external example.

### EXAMPLE 3

$dataValue = @{ id = 2; name = "Jane Doe" }
$example = New-KrOpenApiExample -Summary "Data Value Example" -DataValue $dataValue -SerializedValue '{"id":2,"name":"Jane Doe"}'
This example creates a new OpenAPI Component Example using the DataValue and SerializedValue parameters.

### EXAMPLE 4

$dataValue = @{ id = 3; name = "Alice" }
$example = New-KrOpenApiExample -Summary "Auto Serialized Value Example" -DataValue $dataValue
This example creates a new OpenAPI Component Example using the DataValue parameter and automatically serializes it to JSON for the SerializedValue.

## PARAMETERS

### -DataValue

The actual example payload as an OpenAPI 3.2 native field.
In OpenAPI 3.1, it serializes as x-oai-dataValue.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: DataValue
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Description

A verbose explanation of the example.

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

### -Extensions

A dictionary of OpenAPI extensions to add to the example.

```yaml
Type: System.Collections.IDictionary
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

### -ExternalValue

A URL that points to the literal example.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ExternalValue
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SerializedValue

The serialized representation of the DataValue.
In OpenAPI 3.1, it serializes as x-oai-serializedValue.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: DataValue
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
If not specified, the default server instance is used.

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

### -Summary

A short summary of what the example is about.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Value

The actual example payload.
Can be hashtable/pscustomobject/string/number/etc.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Value
  Position: Named
  IsRequired: true
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

### Microsoft.OpenApi.OpenApiExample object.

{{ Fill in the Description }}

### Microsoft.OpenApi.OpenApiExample

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
