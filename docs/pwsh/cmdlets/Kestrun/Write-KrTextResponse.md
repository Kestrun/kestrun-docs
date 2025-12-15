---
layout: default
parent: PowerShell Cmdlets
nav_order: 209
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Write-KrTextResponse
---

# Write-KrTextResponse

## SYNOPSIS

Writes plain text to the HTTP response body.

## SYNTAX

### __AllParameterSets

```powershell
Write-KrTextResponse [-InputObject] <Object> [[-StatusCode] <int>] [[-ContentType] <string>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Sends a raw text payload to the client and optionally sets the HTTP status
code and content type.

## EXAMPLES

### EXAMPLE 1

Write-KrTextResponse -InputObject "Hello, World!" -StatusCode 200
Writes "Hello, World!" to the response body with a 200 OK status code.

## PARAMETERS

### -ContentType

The content type of the response.
If not specified, defaults to "text/plain".

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

The text content to write to the response body.
This can be a string or any
other object that can be converted to a string.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Text
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
Defaults to 200 (OK).

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

This function is designed to be used in the context of a Kestrun server response.


## RELATED LINKS

{{ Fill in the related links here }}
