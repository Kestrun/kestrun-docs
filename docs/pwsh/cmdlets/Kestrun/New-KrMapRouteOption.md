---
layout: default
parent: PowerShell Cmdlets
nav_order: 141
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.microsoft.com/en-us/dotnet/api/kestrun.hosting.options.maprouteoptions
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: New-KrMapRouteOption
---

# New-KrMapRouteOption

## SYNOPSIS

Creates a new instance of the Kestrun.Hosting.Options.MapRouteOptions class.

## SYNTAX

### __AllParameterSets

```powershell
New-KrMapRouteOption [-Property] <hashtable> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function initializes a new instance of the MapRouteOptions class, which is used to configure
routing options for Kestrun server routes.

## EXAMPLES

### EXAMPLE 1

$options = New-KrMapRouteOption -Property @{
    Path = "/myroute"
    HttpVerbs = "Get", "Post"
}
This example creates a new MapRouteOptions instance with specified path and HTTP verbs.

## PARAMETERS

### -Property

A hashtable containing properties to set on the MapRouteOptions instance.
The keys should match
the property names of the MapRouteOptions class.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
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

### System.Collections.Hashtable

{{ Fill in the Description }}

## OUTPUTS

### [Kestrun.Hosting.Options.MapRouteOptions]
A new instance of the MapRouteOptions class.

{{ Fill in the Description }}

### Kestrun.Hosting.Options.MapRouteOptions

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Hosting module and is used to manage route options.
Maps to MapRouteOptions constructor.


## RELATED LINKS

- [](https://docs.microsoft.com/en-us/dotnet/api/kestrun.hosting.options.maprouteoptions)