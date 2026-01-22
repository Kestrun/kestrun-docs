---
layout: default
parent: PowerShell Cmdlets
nav_order: 53
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Add-KrOpenApiLicense
---

# Add-KrOpenApiLicense

## SYNOPSIS

Adds license information to the OpenAPI document.

## SYNTAX

### Default (Default)

```powershell
Add-KrOpenApiLicense -Name <string> [-Server <KestrunHost>] [-DocId <string[]>] [<CommonParameters>]
```

### WithUrl

```powershell
Add-KrOpenApiLicense -Name <string> -Url <uri> [-Server <KestrunHost>] [-DocId <string[]>]
 [<CommonParameters>]
```

### WithIdentifier

```powershell
Add-KrOpenApiLicense -Name <string> -Identifier <string> [-Server <KestrunHost>] [-DocId <string[]>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function adds license information to the OpenAPI Info section using the provided parameters in the specified OpenAPI documents in the Kestrun server.

## EXAMPLES

### EXAMPLE 1

# Add license information to the default document
Add-KrOpenApiLicense -Name 'MIT License' -Url 'https://opensource.org/licenses/MIT'

### EXAMPLE 2

# Add license information using SPDX identifier to the default document
Add-KrOpenApiLicense -Name 'Apache 2.0' -Identifier 'Apache-2.0'

### EXAMPLE 3

# Add license information using URL to the default document
Add-KrOpenApiLicense -Name 'GPLv3' -Url 'https://www.gnu.org/licenses/gpl-3.0.en.html' -DocId 'customDoc1','customDoc2'

## PARAMETERS

### -DocId

An array of OpenAPI document IDs to which the license information will be added.
Default is 'default'.

```yaml
Type: System.String[]
DefaultValue: '[Kestrun.OpenApi.OpenApiDocDescriptor]::DefaultDocumentationIds'
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

### -Identifier

The SPDX identifier of the license.
This parameter is used in the 'WithIdentifier' parameter set and is mutually exclusive with the 'Url' parameter.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: WithIdentifier
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Name

The name of the license.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance to which the OpenAPI license information will be added.
If not specified, the function will attempt to resolve the current server context.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Url

The URL of the license.
This parameter is used in the 'WithUrl' parameter set and is mutually exclusive with the 'Identifier' parameter.

```yaml
Type: System.Uri
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: WithUrl
  Position: Named
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
