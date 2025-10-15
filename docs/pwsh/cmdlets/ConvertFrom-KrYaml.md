---
layout: default
parent: PowerShell Cmdlets
title: ConvertFrom-KrYaml
nav_order: 65
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# ConvertFrom-KrYaml

## SYNOPSIS
Converts a YAML string to a PowerShell object or hashtable.

## SYNTAX

```
ConvertFrom-KrYaml [[-Yaml] <String>] [-AllDocuments] [-UseMergingParser] [<CommonParameters>]
```

## DESCRIPTION
The ConvertFrom-KrYaml cmdlet converts a YAML string to a PowerShell object or
hashtable.
By default, it returns a PSCustomObject, but you can specify the
-AsHashtable switch to get a hashtable instead.

## EXAMPLES

### EXAMPLE 1
```powershell
$yaml = @"
name: John
age: 30
skills:
  - PowerShell
  - YAML
"@
$obj = $yaml | ConvertFrom-KrYaml
# Outputs a PSCustomObject with properties Name, Age, and Skills.
```

### EXAMPLE 2
```powershell
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
```

### EXAMPLE 3
```powershell
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
```

## PARAMETERS

### -Yaml
The YAML string to convert.
This parameter is mandatory and accepts input from the pipeline.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -AllDocuments
If specified, all documents in a multi-document YAML stream will be returned as an array.
By default, only the first document is returned.

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

### -UseMergingParser
If specified, the YAML parser will support the merging key (\<\<) for merging mappings.
This is useful for YAML documents that use anchors and aliases to merge mappings.

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

## NOTES
This cmdlet requires PowerShell 7.0 or later.
It uses the Kestrun.Utilities.Yaml library for YAML deserialization.

## RELATED LINKS
