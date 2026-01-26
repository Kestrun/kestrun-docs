---
layout: default
parent: PowerShell Cmdlets
nav_order: 158
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: NoDefault
---

# NoDefault

## SYNOPSIS

Placeholder function to indicate no default value.

## SYNTAX

### __AllParameterSets

```powershell
NoDefault [[-Value] <Object>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function serves as a marker to indicate that no default value is provided for a parameter.
It returns $null when invoked.
When used in parameter declarations, it allows the caller to distinguish between an explicit
default value and the absence of a default.

## EXAMPLES

### EXAMPLE 1

Usage example:
    function Test-Function {
        param(
            [datetime]$DateParam = (NoDefault)
        )
        if ($DateParam -eq [datetime]::MinValue) {
            Write-Output "No default provided for DateParam."
        } else {
            Write-Output "DateParam has value: $DateParam"
        }
    }

## PARAMETERS

### -Value

An optional value to return instead of the sentinel indicating no default.
If provided, this value is returned immediately.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

## INPUTS

## OUTPUTS

### Returns $null.

{{ Fill in the Description }}

## NOTES

When a parameter is declared with NoDefault as its default value, the function inspects
the call stack to determine the static type of the parameter.
If the type is a nullable
type or a reference type, it returns $null.
For non-nullable value types, it returns a sentinel
value (e.g., [datetime]::MinValue for [datetime]) that can be detected by the caller.
This allows functions to differentiate between parameters that have no default and those
that have an explicit default value.


## RELATED LINKS

{{ Fill in the related links here }}
