---
layout: default
parent: PowerShell Cmdlets
nav_order: 102
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Get-KrRequestBody
---

# Get-KrRequestBody

## SYNOPSIS

Retrieves a request body value from the HTTP request.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrRequestBody [[-Type] <type>] [-Raw] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function accesses the current HTTP request context and retrieves the value
of the request body.

## EXAMPLES

### EXAMPLE 1

$value = Get-KrRequestBody
Retrieves the value of the request body from the HTTP request.

### EXAMPLE 2

$value = Get-KrRequestBody -Raw
Retrieves the raw request body from the HTTP request without any parsing.

## PARAMETERS

### -Raw

If specified, retrieves the raw request body without any parsing.

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

### -Type

Specifies the type to which the request body should be deserialized.

```yaml
Type: System.Type
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
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

### Returns the value of the request body

{{ Fill in the Description }}

### System.Collections.Hashtable

{{ Fill in the Description }}

## NOTES

This function is designed to be used in the context of a Kestrun server response.


## RELATED LINKS

{{ Fill in the related links here }}
