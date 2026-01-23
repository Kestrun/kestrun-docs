---
layout: default
parent: PowerShell Cmdlets
nav_order: 88
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: ConvertTo-KrYaml
---

# ConvertTo-KrYaml

## SYNOPSIS

Converts a PowerShell object or hashtable to a YAML string.

## SYNTAX

### NoOptions (Default)

```powershell
ConvertTo-KrYaml [[-InputObject] <Object>] [-JsonCompatible] [-KeepArray] [<CommonParameters>]
```

### Options

```powershell
ConvertTo-KrYaml [[-InputObject] <Object>] [-Options <SerializationOptions>] [-KeepArray]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The ConvertTo-KrYaml cmdlet converts a PowerShell object or hashtable to a
YAML string.
This is useful for serializing data in a human-readable format.

## EXAMPLES

### EXAMPLE 1

$obj = [PSCustomObject]@{ Name = "John"; Age = 30; Skills = @("PowerShell", "YAML") }
$yaml = $obj | ConvertTo-KrYaml
# Outputs the YAML representation of the object to the console.

### EXAMPLE 2

$obj = [PSCustomObject]@{ Name = "John"; Age = 30; Skills = @("PowerShell", "YAML") }
$obj | ConvertTo-KrYaml -OutFile "output.yaml" -Force
# Saves the YAML representation of the object to 'output.yaml', overwriting the file if it already exists.

### EXAMPLE 3

$obj = [PSCustomObject]@{ Name = "John"; Age = 30; Skills = @("PowerShell", "YAML") }
$yaml = $obj | ConvertTo-KrYaml -JsonCompatible
# Outputs the YAML representation of the object in a JSON-compatible format to the console.

## PARAMETERS

### -InputObject

The PowerShell object or hashtable to convert.
This parameter is mandatory and accepts input from the pipeline.

```yaml
Type: System.Object
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

### -JsonCompatible

If specified, the YAML output will be formatted to be compatible with JSON.
This parameter is available in the 'NoOptions' parameter set.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NoOptions
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -KeepArray

If specified, the output will always be an array, even if there is only a single input object.
By default, a single input object will result in a non-array output.

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

### -Options

Specifies serialization options for the YAML output.
This parameter is available in the 'Options' parameter set.

```yaml
Type: Kestrun.Utilities.Yaml.SerializationOptions
DefaultValue: Roundtrip
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Options
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

### System.Object

{{ Fill in the Description }}

## OUTPUTS

### System.String

{{ Fill in the Description }}

## NOTES

This cmdlet requires PowerShell 7.0 or later.
It uses the Kestrun.Utilities.Yaml library for YAML serialization.


## RELATED LINKS

{{ Fill in the related links here }}
