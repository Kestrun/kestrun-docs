---
layout: default
parent: PowerShell Cmdlets
nav_order: 48
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Add-KrOpenApiContact
---

# Add-KrOpenApiContact

## SYNOPSIS

Adds contact information to the OpenAPI document.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrOpenApiContact [[-Server] <KestrunHost>] [[-DocId] <string[]>] [[-Name] <string>]
 [[-Url] <uri>] [[-Email] <string>] [[-Extensions] <IDictionary>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function adds contact information to the OpenAPI Info section using the provided parameters in the specified OpenAPI documents in the Kestrun server.

## EXAMPLES

### EXAMPLE 1

# Add contact information to the default document
Add-KrOpenApiContact -Name "John Doe" -Url "https://johndoe.com" -Email "john.doe@example.com"
Adds contact information with the specified name, URL, and email to the default OpenAPI document.

### EXAMPLE 2

# Add contact information to multiple documents
Add-KrOpenApiContact -DocId @('Default', 'v2') -Name "API Support" -Email "support@example.com"
Adds contact information with the specified name and email to both the 'Default' and 'v2' OpenAPI documents.

### EXAMPLE 3

# Add contact information with extensions
$extensions = [ordered]@{
    'x-contact-type' = 'technical'
    'x-timezone' = 'PST'
}
Add-KrOpenApiContact -Name "Tech Support" -Email "techsupport@example.com" -Extensions $extensions
Adds contact information with the specified name, email, and extensions to the default OpenAPI document.

## PARAMETERS

### -DocId

An array of OpenAPI document IDs to which the contact information will be added.
Default is 'default'.

```yaml
Type: System.String[]
DefaultValue: '[Kestrun.OpenApi.OpenApiDocDescriptor]::DefaultDocumentationIds'
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

### -Email

The email address of the contact person/organization.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Extensions

A collection of OpenAPI extensions to add to the contact information.

```yaml
Type: System.Collections.IDictionary
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Name

The name of the contact person/organization.

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

### -Server

The Kestrun server instance to which the OpenAPI contact information will be added.
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

The URL of the contact person/organization.

```yaml
Type: System.Uri
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
