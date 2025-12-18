---
layout: default
parent: PowerShell Cmdlets
nav_order: 79
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: ConvertFrom-KrYaml
---

# ConvertFrom-KrYaml

## SYNOPSIS

Converts a YAML string to a PowerShell object or hashtable.

## SYNTAX

### __AllParameterSets

```powershell
ConvertFrom-KrYaml [[-Yaml] <string>] [-AllDocuments] [-UseMergingParser] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The ConvertFrom-KrYaml cmdlet converts a YAML string to a PowerShell object or
hashtable.
By default, it returns a PSCustomObject, but you can specify the
-AsHashtable switch to get a hashtable instead.

## EXAMPLES

### EXAMPLE 1

$yaml = @"
name: John
age: 30
skills:
  - PowerShell
  - YAML
"@
$obj = $yaml | ConvertFrom-KrYaml
# Outputs a PSCustomObject with properties Name, Age, and Skills.

### EXAMPLE 2

$yaml = @"
---
name: John
age: 30
---
name: Jane Doe
age: 25
"@
$objs = $yaml | ConvertFrom-KrYaml -AllDocuments
# Outputs an array of two PSCustomObjects, one for each document in the YAML stream.

### EXAMPLE 3

$yaml = @"
defaults: &defaults
  adapter: postgres
  host: localhost
development:
  database: dev_db
  <<: *defaults
test:
  database: test_db
  <<: *defaults
"@
$obj = $yaml | ConvertFrom-KrYaml -UseMergingParser
# Outputs a PSCustomObject with merged properties for 'development' and 'test' sections
# using the 'defaults' anchor.
$obj | Format-List

## PARAMETERS

### -AllDocuments

If specified, all documents in a multi-document YAML stream will be returned as an array.
By default, only the first document is returned.

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

### -UseMergingParser

If specified, the YAML parser will support the merging key (<<) for merging mappings.
This is useful for YAML documents that use anchors and aliases to merge mappings.

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

### -Yaml

The YAML string to convert.
This parameter is mandatory and accepts input from the pipeline.

```yaml
Type: System.String
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

{{ Fill in the Description }}

## OUTPUTS

## NOTES

This cmdlet requires PowerShell 7.0 or later.
It uses the Kestrun.Utilities.Yaml library for YAML deserialization.


## RELATED LINKS

{{ Fill in the related links here }}
