---
layout: default
parent: PowerShell Cmdlets
nav_order: 202
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Write-KrHtmlResponse
---

# Write-KrHtmlResponse

## SYNOPSIS

Writes an HTML response to the HTTP response body.

## SYNTAX

### FilePath (Default)

```powershell
Write-KrHtmlResponse -FilePath <string> [-StatusCode <int>] [-Variables <hashtable>]
 [<CommonParameters>]
```

### Template

```powershell
Write-KrHtmlResponse [-Template] <string> [-StatusCode <int>] [-Variables <hashtable>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Serializes the provided HTML template with variables and writes it to the HTTP response.

## EXAMPLES

### EXAMPLE 1

Write-KrHtmlResponse -FilePath "C:\path\to\template.html" -StatusCode 200 -Variables @{ Title = "My Page"; Content = "Hello, World!" }
Reads the HTML file at "C:\path\to\template.html", merges in the variables, and writes the resulting HTML to the response with a 200 status code.

## PARAMETERS

### -FilePath

The path to the HTML file to read and write to the response.
This can be a relative or absolute path.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FilePath
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
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
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Template

The HTML template string to write to the response.
If provided, this will override the FilePath parameter.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Template
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Variables

A hashtable of variables to use for template placeholders.
These will be merged into the HTML template.

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
