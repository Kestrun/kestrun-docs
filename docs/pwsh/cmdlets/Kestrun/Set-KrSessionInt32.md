---
layout: default
parent: PowerShell Cmdlets
nav_order: 176
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Set-KrSessionInt32
---

# Set-KrSessionInt32

## SYNOPSIS

Sets a 32-bit integer value in the session by key.

## SYNTAX

### __AllParameterSets

```powershell
Set-KrSessionInt32 [-Key] <string> [-Value] <int> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function accesses the current HTTP context's session and sets the 32-bit integer value
associated with the specified key.

## EXAMPLES

### EXAMPLE 1

Set-KrSessionInt32 -Key "visitCount" -Value 5
Sets the 32-bit integer value associated with the key "visitCount" in the session to 5.

## PARAMETERS

### -Key

The key of the session item to set.

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

### -Value

The 32-bit integer value to set in the session.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
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
