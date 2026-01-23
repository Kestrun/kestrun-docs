---
layout: default
parent: PowerShell Cmdlets
nav_order: 162
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Remove-KrSession
---

# Remove-KrSession

## SYNOPSIS

Removes a session item by key.

## SYNTAX

### __AllParameterSets

```powershell
Remove-KrSession [-Key] <string> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function accesses the current HTTP context's session and removes the item
associated with the specified key.

## EXAMPLES

### EXAMPLE 1

Remove-KrSession -Key "username"
Removes the session item associated with the key "username".

## PARAMETERS

### -Key

The key of the session item to remove.

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

### None. This function performs a state-changing operation on the session.

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
