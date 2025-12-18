---
layout: default
parent: PowerShell Cmdlets
nav_order: 203
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Write-KrJsonResponse
---

# Write-KrJsonResponse

## SYNOPSIS

Writes an object to the HTTP response body as JSON.

## SYNTAX

### __AllParameterSets

```powershell
Write-KrJsonResponse [-InputObject] <Object> [[-StatusCode] <int>] [[-Depth] <int>]
 [[-ContentType] <string>] [-Compress] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Serializes the provided object to JSON using Newtonsoft.Json and writes it
to the current HTTP response.
The caller can specify the HTTP status code,
serialization depth and formatting options.

## EXAMPLES

### EXAMPLE 1

$myObject | Write-KrJsonResponse -StatusCode 201 -Depth 5 -Compress -ContentType "application/json"
Serializes the object to JSON and writes it to the response with the specified options.

### EXAMPLE 2

$myObject | Write-KrJsonResponse -StatusCode 400 -Depth 3 -Compress -ContentType "application/json"
Serializes the object to JSON and writes it to the response with the specified options.

### EXAMPLE 3

$myObject | Write-KrJsonResponse -StatusCode 500 -Depth 2
Serializes the object to JSON and writes it to the response with the specified options.

## PARAMETERS

### -Compress

Whether to compress the JSON output.

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

### -ContentType

The content type of the response.

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

### -Depth

The maximum depth of the JSON serialization.

```yaml
Type: System.Int32
DefaultValue: 10
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

### -InputObject

The object to serialize and write to the response.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -StatusCode

The HTTP status code to set for the response.

```yaml
Type: System.Int32
DefaultValue: 200
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Object

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
