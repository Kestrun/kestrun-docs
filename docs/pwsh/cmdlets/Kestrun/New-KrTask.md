---
layout: default
parent: PowerShell Cmdlets
nav_order: 152
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: New-KrTask
---

# New-KrTask

## SYNOPSIS

Creates a task without starting it.

## SYNTAX

### FromCode (Default)

```powershell
New-KrTask [-Server <KestrunHost>] [-Id <string>] [-AutoStart] [-Name <string>]
 [-Description <string>] [<CommonParameters>]
```

### Options

```powershell
New-KrTask -Options <LanguageOptions> [-Server <KestrunHost>] [-Id <string>] [-AutoStart]
 [-Name <string>] [-Description <string>] [<CommonParameters>]
```

### ScriptBlock

```powershell
New-KrTask [-ScriptBlock] <scriptblock> [-Server <KestrunHost>] [-Id <string>] [-AutoStart]
 [-Name <string>] [-Description <string>] [-Arguments <hashtable>] [<CommonParameters>]
```

### Code

```powershell
New-KrTask -Code <string> -Language <ScriptLanguage> [-Server <KestrunHost>] [-Id <string>]
 [-AutoStart] [-Name <string>] [-Description <string>] [-ExtraImports <string[]>]
 [-ExtraRefs <Assembly[]>] [-Arguments <hashtable>] [<CommonParameters>]
```

### CodeFilePath

```powershell
New-KrTask -CodeFilePath <string> [-Server <KestrunHost>] [-Id <string>] [-AutoStart]
 [-Name <string>] [-Description <string>] [-ExtraImports <string[]>] [-ExtraRefs <Assembly[]>]
 [-Arguments <hashtable>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Returns a new task id after registering the code/file with the Task service.

## EXAMPLES

### EXAMPLE 1

New-KrTask -ScriptBlock { param($name) "Hello, $name!" } -Arguments @{ name = 'World' }

Creates a new PowerShell task that greets the specified name.

### EXAMPLE 2

New-KrTask -Code 'return 2 + 2' -Language CSharp
Creates a new C# task that returns the result of 2 + 2.

### EXAMPLE 3

New-KrTask -CodeFilePath 'C:\Scripts\MyScript.ps1'
Creates a new PowerShell task from the specified script file.

## PARAMETERS

### -Arguments

Hashtable of named arguments to pass to the script; applies to -ScriptBlock, -Code, and -CodeFilePath.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Code
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ScriptBlock
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AutoStart

If specified, the task will be started immediately after creation.

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

### -Code

Code string to run; mutually exclusive with other code parameters.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- CodeBlock
ParameterSets:
- Name: Code
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CodeFilePath

Path to a code file to run; mutually exclusive with other code parameters.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Description

Optional description of the task.

```yaml
Type: System.String
DefaultValue: ''
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

### -ExtraImports

Additional namespaces to import; applies to -Code and -CodeFilePath.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Code
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ExtraRefs

Additional assemblies to reference; applies to -Code and -CodeFilePath.

```yaml
Type: System.Reflection.Assembly[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Code
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Id

Optional task id; if omitted, a new GUID is generated.

```yaml
Type: System.String
DefaultValue: ''
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

### -Language

Language of the code string; required when using -Code.

```yaml
Type: Kestrun.Scripting.ScriptLanguage
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Code
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Name

Optional human-friendly name of the task.

```yaml
Type: System.String
DefaultValue: ''
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

### -Options

Language options object; mutually exclusive with other code parameters.

```yaml
Type: Kestrun.Hosting.Options.LanguageOptions
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Options
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ScriptBlock

PowerShell script block to run; mutually exclusive with other code parameters.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ScriptBlock
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
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

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### Returns the id of the created task. The task is not started; use Start-KrTask to run it.

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
