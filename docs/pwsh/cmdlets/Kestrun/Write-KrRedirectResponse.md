---
layout: default
parent: PowerShell Cmdlets
nav_order: 215
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Write-KrRedirectResponse
---

# Write-KrRedirectResponse

## SYNOPSIS

Writes a redirect response to the HTTP client.

## SYNTAX

### __AllParameterSets

```powershell
Write-KrRedirectResponse [-Url] <string> [[-Message] <string>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Sets the Location header to the provided URL and optionally includes a
message body describing the redirect.

## EXAMPLES

### EXAMPLE 1

Write-KrRedirectResponse -Url "https://example.com/new-page" -Message "You are being redirected to the new page."
Redirects the client to "https://example.com/new-page" and includes a message in the response body.

## PARAMETERS

### -Message

An optional message to include in the response body.
This can be used to provide additional context about the redirect.

```yaml
Type: System.String
DefaultValue: ''
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

### -Url

The URL to redirect the client to.
This should be a fully qualified URL.

```yaml
Type: System.String
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

## NOTES

This function is designed to be used in the context of a Kestrun server response.


## RELATED LINKS

{{ Fill in the related links here }}
