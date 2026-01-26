---
layout: default
parent: PowerShell Cmdlets
nav_order: 87
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: ConvertTo-KrBase64Url
---

# ConvertTo-KrBase64Url

## SYNOPSIS

Converts a byte array to a Base64Url-encoded string.

## SYNTAX

### __AllParameterSets

```powershell
ConvertTo-KrBase64Url [-Bytes] <byte[]> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function takes a byte array as input and returns its Base64Url-encoded representation.
Base64Url encoding is similar to standard Base64 encoding but uses URL-safe characters.

## EXAMPLES

### EXAMPLE 1

$data = [System.Text.Encoding]::UTF8.GetBytes("Hello, World!")
$base64Url = ConvertTo-KrBase64Url -Bytes $data
Write-Host $base64Url  # Outputs: "SGVsbG8sIFdvcmxkIQ"

## PARAMETERS

### -Bytes

The byte array to be converted to Base64Url format.

```yaml
Type: System.Byte[]
DefaultValue: ''
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

### [string] - The Base64Url-encoded string.

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
