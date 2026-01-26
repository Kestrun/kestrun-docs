---
layout: default
parent: PowerShell Cmdlets
nav_order: 115
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Get-KrRequestRouteParam
---

# Get-KrRequestRouteParam

## SYNOPSIS

Retrieves a request route value from the HTTP request.

## SYNTAX

### Default (Default)

```powershell
Get-KrRequestRouteParam -Name <string> [-ThrowIfMissing] [<CommonParameters>]
```

### Int

```powershell
Get-KrRequestRouteParam -Name <string> [-AsInt] [-ThrowIfMissing] [<CommonParameters>]
```

### Bool

```powershell
Get-KrRequestRouteParam -Name <string> [-AsBool] [-ThrowIfMissing] [<CommonParameters>]
```

### Double

```powershell
Get-KrRequestRouteParam -Name <string> [-AsDouble] [-ThrowIfMissing] [<CommonParameters>]
```

### String

```powershell
Get-KrRequestRouteParam -Name <string> [-AsString] [-ThrowIfMissing] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function accesses the current HTTP request context and retrieves the value
of the specified request route value by name.

## EXAMPLES

### EXAMPLE 1

$value = Get-KrRequestRouteParam -Name "param1"
Retrieves the value of the request route value "param1" from the HTTP request.

### EXAMPLE 2

$id = Get-KrRequestRouteParam -Name "id" -AsInt -ThrowIfMissing
Retrieves the value of the route parameter "id" as an integer, throwing an error if it's missing.

### EXAMPLE 3

$flag = Get-KrRequestRouteParam -Name "flag" -AsBool
Retrieves the value of the route parameter "flag" as a boolean.

## PARAMETERS

### -AsBool

If specified, converts the route value to a boolean.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- AsBoolean
ParameterSets:
- Name: Bool
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AsDouble

If specified, converts the route value to a double.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Double
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AsInt

If specified, converts the route value to an integer.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Int
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AsString

If specified, converts the route value to a string.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: String
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Name

The name of the request route value to retrieve from the HTTP request.

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

### -ThrowIfMissing

If specified, throws an error if the route value is not found.
By default, it returns $null if not found.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Returns the value of the specified request route value

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

### System.Double

{{ Fill in the Description }}

### System.Object

{{ Fill in the Description }}

## NOTES

This function is designed to be used in the context of a Kestrun server response.


## RELATED LINKS

{{ Fill in the related links here }}
