---
layout: default
parent: PowerShell Cmdlets
nav_order: 119
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Get-KrSessionString
---

# Get-KrSessionString

## SYNOPSIS

Retrieves a string value from the session by key.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrSessionString [-Key] <string> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function accesses the current HTTP context's session and retrieves the string value
associated with the specified key.

## EXAMPLES

### EXAMPLE 1

$value = Get-KrSessionString -Key "username"
Retrieves the string value associated with the key "username" from the session.

## PARAMETERS

### -Key

The key of the session item to retrieve.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
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

## OUTPUTS

### Returns the string value associated with the specified key

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
