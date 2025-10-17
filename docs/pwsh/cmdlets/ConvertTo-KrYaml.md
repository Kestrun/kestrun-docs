---
layout: default
parent: PowerShell Cmdlets
title: ConvertTo-KrYaml
nav_order: 67
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# ConvertTo-KrYaml

## SYNOPSIS
Converts a PowerShell object or hashtable to a YAML string.

## SYNTAX

### NoOptions (Default)
```
ConvertTo-KrYaml [[-InputObject] <Object>] [-JsonCompatible] [-KeepArray] [<CommonParameters>]
```

### Options
```
ConvertTo-KrYaml [[-InputObject] <Object>] [-Options <SerializationOptions>] [-KeepArray] [<CommonParameters>]
```

## DESCRIPTION
The ConvertTo-KrYaml cmdlet converts a PowerShell object or hashtable to a
YAML string.
This is useful for serializing data in a human-readable format.

## EXAMPLES

### EXAMPLE 1
```powershell
$obj = [PSCustomObject]@{ Name = "John"; Age = 30; Skills = @("PowerShell", "YAML") }
$yaml = $obj | ConvertTo-KrYaml
# Outputs the YAML representation of the object to the console.
```

### EXAMPLE 2
```powershell
$obj = [PSCustomObject]@{ Name = "John"; Age = 30; Skills = @("PowerShell", "YAML") }
$obj | ConvertTo-KrYaml -OutFile "output.yaml" -Force
# Saves the YAML representation of the object to 'output.yaml', overwriting the file if it already exists.
```

### EXAMPLE 3
```powershell
$obj = [PSCustomObject]@{ Name = "John"; Age = 30; Skills = @("PowerShell", "YAML") }
$yaml = $obj | ConvertTo-KrYaml -JsonCompatible
# Outputs the YAML representation of the object in a JSON-compatible format to the console.
```

## PARAMETERS

### -InputObject
The PowerShell object or hashtable to convert.
This parameter is mandatory and accepts input from the pipeline.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Options
Specifies serialization options for the YAML output.
This parameter is available in the 'Options' parameter set.

```yaml
Type: SerializationOptions
Parameter Sets: Options
Aliases:
Accepted values: None, Roundtrip, DisableAliases, EmitDefaults, JsonCompatible, DefaultToStaticType, WithIndentedSequences, OmitNullValues, UseFlowStyle, UseSequenceFlowStyle

Required: False
Position: Named
Default value: Roundtrip
Accept pipeline input: False
Accept wildcard characters: False
```

### -JsonCompatible
If specified, the YAML output will be formatted to be compatible with JSON.
This parameter is available in the 'NoOptions' parameter set.

```yaml
Type: SwitchParameter
Parameter Sets: NoOptions
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeepArray
If specified, the output will always be an array, even if there is only a single input object.
By default, a single input object will result in a non-array output.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String
## NOTES
This cmdlet requires PowerShell 7.0 or later.
It uses the Kestrun.Utilities.Yaml library for YAML serialization.

## RELATED LINKS
