---
layout: default
parent: PowerShell Cmdlets
nav_order: 122
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Initialize-KrRoot
---

# Initialize-KrRoot

## SYNOPSIS

Initializes the Kestrun root directory for path resolution.

## SYNTAX

### __AllParameterSets

```powershell
Initialize-KrRoot [-Path] <string> [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function sets the Kestrun root directory, which is used as a base for resolving relative paths in Kestrun applications.
It is typically called during the initialization phase of a Kestrun application.
This function should be called before any other Kestrun commands that rely on the root directory being set.

## EXAMPLES

### EXAMPLE 1

Initialize-KrRoot -Path "C:\Kestrun"
Sets the Kestrun root directory to "C:\Kestrun".

### EXAMPLE 2

Initialize-KrRoot -Path "~/Kestrun"
Sets the Kestrun root directory to the user's home directory.

### EXAMPLE 3

Initialize-KrRoot -Path "D:\Projects\Kestrun"
Sets the Kestrun root directory to "D:\Projects\Kestrun".

### EXAMPLE 4

Initialize-KrRoot -Path "C:\Kestrun" -PassThru
Returns the absolute path to the Kestrun root directory.

## PARAMETERS

### -PassThru

If specified, the cmdlet will return the absolute path to the Kestrun root directory after setting it.

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

### -Path

The path to the Kestrun root directory.

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

### [string] The absolute path to the Kestrun root directory.

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## NOTES

This function is designed to be used in the context of a Kestrun server to ensure consistent path resolution.


## RELATED LINKS

{{ Fill in the related links here }}
