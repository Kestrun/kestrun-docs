---
layout: default
parent: PowerShell Cmdlets
nav_order: 125
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 03/21/2026
PlatyPS schema version: 2024-05-01
title: Get-KrServiceDescriptor
---

# Get-KrServiceDescriptor

## SYNOPSIS

Reads a Service.psd1 descriptor file.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrServiceDescriptor [[-Path] <string>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Reads Service.psd1 and returns a normalized object with FormatVersion, Name, Description, Version, EntryPoint, ServiceLogPath, and PreservePaths.

## EXAMPLES

### EXAMPLE 1

Get-KrServiceDescriptor

## PARAMETERS

### -Path

Descriptor path.
Accepts either a descriptor file path or a directory path.
When a directory path is provided, Service.psd1 is appended automatically.

```yaml
Type: System.String
DefaultValue: Service.psd1
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Management.Automation.PSObject

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
