---
layout: default
parent: PowerShell Cmdlets
nav_order: 62
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://github.com/Kestrun/Kestrun
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Add-KrScriptBlock
---

# Add-KrScriptBlock

## SYNOPSIS

Adds a named scriptblock to the specified scope, allowing retrieval via a getter function.

## SYNTAX

### Split (Default)

```powershell
Add-KrScriptBlock [-Name] <string> [-ScriptBlock] <scriptblock> [[-Scope] <string>]
 [<CommonParameters>]
```

### WithEquals

```powershell
Add-KrScriptBlock [-Name] <string> [-Operator] <string> [-ScriptBlock] <scriptblock>
 [[-Scope] <string>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function allows you to define a scriptblock with a name and an optional scope (Global or Script).
The scriptblock can be retrieved later using a getter function that is automatically created.

## EXAMPLES

### EXAMPLE 1

Add-KrScriptBlock -Name 'MyScript' -ScriptBlock { Write-Host "Hello, World!" }
This creates a scriptblock named `MyScript` in the `Script` scope that writes "Hello, World!" to the console.

### EXAMPLE 2

Add-KrScriptBlock -Name 'global:MyGlobalScript' -ScriptBlock { Write-Host "Hello from Global!" } -Scope Global
This creates a scriptblock named `MyGlobalScript` in the `Global` scope that writes "Hello from Global!" to the console.

## PARAMETERS

### -Name

The name of the scriptblock.
If the name includes a scope prefix (e.g., `global:` or `script:`), it will be used as the scope unless overridden by the `-Scope` parameter.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: WithEquals
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Split
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Operator

An optional operator that can be used to separate the name from the scriptblock.
This is only applicable when using the `WithEquals` parameter set.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: WithEquals
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Scope

The scope in which to define the scriptblock.
Valid values are `Global` or `Script`.
If not specified, it defaults to `Script`.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 99
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ScriptBlock

The scriptblock to be associated with the specified name and scope.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: WithEquals
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Split
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

## NOTES

This function is part of the Kestrun PowerShell module and is designed to facilitate the management of scriptblocks.


## RELATED LINKS

- [](https://github.com/Kestrun/Kestrun)