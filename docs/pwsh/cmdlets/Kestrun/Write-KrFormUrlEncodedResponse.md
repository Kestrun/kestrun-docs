---
layout: default
parent: PowerShell Cmdlets
nav_order: 201
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Write-KrFormUrlEncodedResponse
---

# Write-KrFormUrlEncodedResponse

## SYNOPSIS

Writes key/value data to the HTTP response body as application/x-www-form-urlencoded.

## SYNTAX

### __AllParameterSets

```powershell
Write-KrFormUrlEncodedResponse [-InputObject] <Object> [[-StatusCode] <int>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Uses the ASP.NET Core built-in System.Net.Http.FormUrlEncodedContent encoder
to convert the provided object into an application/x-www-form-urlencoded
payload, then writes it to the HTTP response.

## EXAMPLES

### EXAMPLE 1

@{ user='alice'; role='admin' } | Write-KrFormUrlEncodedResponse

## PARAMETERS

### -InputObject

Hashtable, PSCustomObject, dictionary, or any object with public properties.

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

HTTP status code for the response.

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
