---
layout: default
parent: PowerShell Cmdlets
nav_order: 197
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Write-KrCborResponse
---

# Write-KrCborResponse

## SYNOPSIS

Writes an object serialized as CBOR to the HTTP response.

## SYNTAX

### __AllParameterSets

```powershell
Write-KrCborResponse [-InputObject] <Object> [[-StatusCode] <int>] [[-ContentType] <string>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Converts the provided object to CBOR format and writes it to the response body.
The status code and content type can be customized.

## EXAMPLES

### EXAMPLE 1

Write-KrCborResponse -InputObject $myObject -StatusCode 200 -ContentType "application/cbor"
Writes the $myObject serialized as CBOR to the response with a 200 status code and
content type "application/cbor".

## PARAMETERS

### -ContentType

The content type to set for the response.
If not specified, defaults to application/cbor

```yaml
Type: System.String
DefaultValue: ''
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
Defaults to 200.

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
