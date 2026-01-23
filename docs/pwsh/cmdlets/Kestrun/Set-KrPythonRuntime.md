---
layout: default
parent: PowerShell Cmdlets
nav_order: 181
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Set-KrPythonRuntime
---

# Set-KrPythonRuntime

## SYNOPSIS

Selects which CPython runtime pythonnet will embed.

## SYNTAX

### __AllParameterSets

```powershell
Set-KrPythonRuntime [[-Path] <string>] [-Force] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

• With no -Path the newest 64-bit CPython is auto-discovered.
• If the env-var PYTHONNET_PYDLL is already present the function
exits immediately—unless you pass -Force (or give an explicit -Path).
• Applies the setting both to the environment and to the live
[Python.Runtime.Runtime]::PythonDLL property when possible.

## EXAMPLES

### EXAMPLE 1

# Leave current setting untouched if already configured
Set-KrPythonRuntime

### EXAMPLE 2

# Override whatever is set and pin CPython 3.12
Set-KrPythonRuntime -Path '/opt/python312/lib/libpython3.12.so' -Force

## PARAMETERS

### -Force

Override an existing PYTHONNET_PYDLL environment variable.

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

Full path to pythonXY.dll / libpythonX.Y.so / libpythonX.Y.dylib.

```yaml
Type: System.String
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
