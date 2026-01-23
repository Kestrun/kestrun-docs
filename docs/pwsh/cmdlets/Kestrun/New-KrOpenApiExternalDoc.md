---
layout: default
parent: PowerShell Cmdlets
nav_order: 145
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: New-KrOpenApiExternalDoc
---

# New-KrOpenApiExternalDoc

## SYNOPSIS

Creates a new OpenAPI External Documentation object.

## SYNTAX

### __AllParameterSets

```powershell
New-KrOpenApiExternalDoc [[-Server] <KestrunHost>] [-Url] <uri> [[-Description] <string>]
 [[-Extensions] <IDictionary>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function creates a new OpenAPI External Documentation object using the provided parameters.

## EXAMPLES

### EXAMPLE 1

# Create external documentation
$externalDoc = New-KrOpenApiExternalDoc -Description 'Find out more about our API here.' -Url 'https://example.com/api-docs'
Creates an external documentation object with the specified description and URL.

### EXAMPLE 2

# Create external documentation with extensions
$extensions = [ordered]@{
    'x-doc-type' = 'comprehensive'
    'x-contact' = 'Admin Team'
}
$externalDoc = New-KrOpenApiExternalDoc -Description 'Comprehensive API docs' -Url 'https://example.com/full-api-docs' -Extensions $extensions
Creates an external documentation object with the specified description, URL, and extensions.

## PARAMETERS

### -Description

A description of the external documentation.

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

### -Extensions

A collection of OpenAPI extensions to add to the external documentation.

```yaml
Type: System.Collections.IDictionary
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

### -Server

The Kestrun server instance to which the OpenAPI external documentation will be associated.
If not specified, the function will attempt to resolve the current server context.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Url

A URI to the external documentation.

```yaml
Type: System.Uri
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
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

## NOTES

This cmdlet is part of the OpenAPI module.


## RELATED LINKS

{{ Fill in the related links here }}
