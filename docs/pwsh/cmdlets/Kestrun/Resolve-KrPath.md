---
layout: default
parent: PowerShell Cmdlets
nav_order: 163
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Resolve-KrPath
---

# Resolve-KrPath

## SYNOPSIS

Resolves a file path relative to the Kestrun root or a specified base path.

## SYNTAX

### RelativeBasePath (Default)

```powershell
Resolve-KrPath [-Path] <string> [-RelativeBasePath <string>] [-Test] [<CommonParameters>]
```

### KestrunRoot

```powershell
Resolve-KrPath [-Path] <string> [-KestrunRoot] [-Test] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function expands environment variables and resolves the provided path against the Kestrun root or a specified base path.
If the path is relative, it combines it with the base path.
If the -Test switch is used, it checks if the resolved path exists and returns the original input path if it does not.

## EXAMPLES

### EXAMPLE 1

Resolve-KrPath -Path "~/Documents/file.txt" -KestrunRoot
Resolves the path "~/Documents/file.txt" relative to the Kestrun root directory, expanding any environment variables.

### EXAMPLE 2

Resolve-KrPath -Path "file.txt" -RelativeBasePath "C:\Base\Path"
Resolves the path "file.txt" relative to "C:\Base\Path", expanding any environment variables.

## PARAMETERS

### -KestrunRoot

If specified, the Kestrun root directory is used as the base path for resolving the relative path.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: KestrunRoot
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

The path to resolve.
This can be an absolute path or a relative path.

```yaml
Type: System.String
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

### -RelativeBasePath

An optional base path to resolve the relative path against.
If not specified, the current directory is used.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: RelativeBasePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Test

If specified, the function will check if the resolved path exists.
If it does not, the original input path is returned instead of the resolved path.

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

### System.String

{{ Fill in the Description }}

## OUTPUTS

### System.String

{{ Fill in the Description }}

## NOTES

This function is designed to be used in the context of a Kestrun server to resolve file paths correctly.


## RELATED LINKS

{{ Fill in the related links here }}
