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
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Expand-KrObject
---

# Expand-KrObject

## SYNOPSIS

Expands an object into a formatted string for display.

## SYNTAX

### __AllParameterSets

```powershell
Expand-KrObject [[-InputObject] <Object>] [-ForegroundColor <ConsoleColor>] [-Label <string>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function takes an object and formats it for display in the console.
It includes the type name and the object's string representation.
If a label is provided, it prefixes the output with the label.

## EXAMPLES

### EXAMPLE 1

Expand-KrObject -InputObject $myObject -ForegroundColor Cyan -Label "My Object"
Displays the $myObject with a cyan foreground color and prefixes it with "My Object".

## PARAMETERS

### -ForegroundColor

The color to use for the output text in the console.
If not specified, defaults to the console's current foreground color.

```yaml
Type: System.ConsoleColor
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

### -InputObject

The object to expand and display.
This can be any PowerShell object, including complex types.

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

### -Label

An optional label to prefix the output.
This can be used to provide context or a name for the object being displayed.

```yaml
Type: System.String
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

### System.Object

{{ Fill in the Description }}

## OUTPUTS

## NOTES

This function is designed to be used in the context of Kestrun for debugging or logging purposes.


## RELATED LINKS

{{ Fill in the related links here }}
