---
layout: default
parent: PowerShell Cmdlets
nav_order: 220
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Write-KrStatusResponse
---

# Write-KrStatusResponse

## SYNOPSIS

Sets only the HTTP status code for the response, without a body.

## SYNTAX

### __AllParameterSets

```powershell
Write-KrStatusResponse [-StatusCode] <int> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Sets the HTTP status code for the response and clears any body or content type,
allowing status code pages middleware to handle the response body if configured.

## EXAMPLES

### EXAMPLE 1

Write-KrStatusResponse -StatusCode 404
Sets the response status code to 404 Not Found, without a body. If status code pages
middleware is enabled, it will generate the response body.

## PARAMETERS

### -StatusCode

The HTTP status code to set for the response.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
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

## OUTPUTS

## NOTES

This function is designed to be used in the context of a Kestrun server response.


## RELATED LINKS

{{ Fill in the related links here }}
