---
layout: default
parent: PowerShell Cmdlets
nav_order: 91
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Enable-KrExceptionHandling
---

# Enable-KrExceptionHandling

## SYNOPSIS

Enables exception handling middleware for a Kestrun server instance.

## SYNTAX

### Default (Default)

```powershell
Enable-KrExceptionHandling [-Server <KestrunHost>] [-PassThru] [<CommonParameters>]
```

### ExceptionHandlingPath

```powershell
Enable-KrExceptionHandling -ExceptionHandlingPath <string> [-Server <KestrunHost>]
 [-CreateScopeForErrors] [-AllowStatusCode404Response] [-PassThru] [<CommonParameters>]
```

### CodeFilePath

```powershell
Enable-KrExceptionHandling -CodeFilePath <string> [-Server <KestrunHost>] [-CreateScopeForErrors]
 [-AllowStatusCode404Response] [-ExtraRefs <Assembly[]>] [-Arguments <hashtable>]
 [-ExtraImports <string[]>] [-PassThru] [<CommonParameters>]
```

### Code

```powershell
Enable-KrExceptionHandling -Code <string> -Language <ScriptLanguage> [-Server <KestrunHost>]
 [-CreateScopeForErrors] [-AllowStatusCode404Response] [-ExtraRefs <Assembly[]>]
 [-Arguments <hashtable>] [-ExtraImports <string[]>] [-PassThru] [<CommonParameters>]
```

### ScriptBlock

```powershell
Enable-KrExceptionHandling [-Server <KestrunHost>] [-CreateScopeForErrors]
 [-AllowStatusCode404Response] [-ScriptBlock <scriptblock>] [-ExtraRefs <Assembly[]>]
 [-Arguments <hashtable>] [-ExtraImports <string[]>] [-PassThru] [<CommonParameters>]
```

### LanguageOptions

```powershell
Enable-KrExceptionHandling [-Server <KestrunHost>] [-CreateScopeForErrors]
 [-AllowStatusCode404Response] [-LanguageOptions <LanguageOptions>] [-PassThru] [<CommonParameters>]
```

### Json

```powershell
Enable-KrExceptionHandling [-Server <KestrunHost>] [-IncludeDetailsInDevelopment]
 [-UseProblemDetails] [-Compress] [-PassThru] [<CommonParameters>]
```

### DeveloperExceptionPage

```powershell
Enable-KrExceptionHandling -DeveloperExceptionPage [-Server <KestrunHost>]
 [-SourceCodeLineCount <int>] [-SourceCodePath <string>] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet configures the exception handling middleware for a Kestrun server instance,
allowing for customizable error handling and response generation.

## EXAMPLES

### EXAMPLE 1

Enable-KrExceptionHandling -ExceptionHandlingPath '/error' -CreateScopeForErrors -AllowStatusCode404Response -PassThru
Enables exception handling middleware on the default Kestrun server instance,
re-executing requests to '/error' when exceptions occur, creating a scope for error handling,
and allowing handling of 404 status code responses. The modified server instance is returned.

### EXAMPLE 2

Enable-KrExceptionHandling -Server $myServer -DeveloperExceptionPage -SourceCodeLineCount 10 -SourceCodePath 'C:\MyApp'
Enables the Developer Exception Page middleware on the specified Kestrun server instance,
displaying 10 lines of source code around the error line and using 'C:\MyApp' as the base path for source files.

### EXAMPLE 3

$langOptions = [Kestrun.Hosting.Options.LanguageOptions]::new()
$langOptions.Language = [Kestrun.Scripting.ScriptLanguage]::PowerShell
$langOptions.Code = { param($exception) "An error occurred: $($exception.Message)" }
Enable-KrExceptionHandling -Server $myServer -LanguageOptions $langOptions
Enables custom exception handling on the specified Kestrun server instance,
executing the provided PowerShell code block when an exception occurs. The code block receives the exception object as a parameter.
The custom error handling logic can be defined using the LanguageOptions, ScriptBlock, Code, or CodeFilePath parameters.

## PARAMETERS

### -AllowStatusCode404Response

If specified, allows handling of 404 status code responses.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ExceptionHandlingPath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
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
- Name: LanguageOptions
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Arguments

A hashtable of arguments to pass to the custom error handling code.

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

### -Code

A string containing the code to execute for custom error handling logic.

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

The file path to a script file containing the code to execute for custom error handling logic.

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

### -Compress

If specified, compress the json response for error handling.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Json
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CreateScopeForErrors

If specified, creates a new scope for handling errors.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ExceptionHandlingPath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
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
- Name: LanguageOptions
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DeveloperExceptionPage

If specified, enables the Developer Exception Page middleware with default options.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: DeveloperExceptionPage
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ExceptionHandlingPath

The path to re-execute when an exception occurs (e.g., '/error').

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ExceptionHandlingPath
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ExtraImports

An array of additional namespaces to import when executing the custom error handling code.

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

### -ExtraRefs

An array of additional assemblies to reference when executing the custom error handling code.

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

### -IncludeDetailsInDevelopment

If specified, includes detailed error information when the environment is set to Development.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Json
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

The scripting language of the provided code (e.g., PowerShell, CSharp, VisualBasic).

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

### -LanguageOptions

A LanguageOptions object defining the scripting language, code, references, imports, and arguments
for custom error handling logic.

```yaml
Type: Kestrun.Hosting.Options.LanguageOptions
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: LanguageOptions
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If specified, returns the modified Kestrun server instance.

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

### -ScriptBlock

A PowerShell script block to execute for custom error handling logic.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
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

### -Server

The Kestrun server instance (resolved if omitted via Resolve-KestrunServer).

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

### -SourceCodeLineCount

The number of source code lines to display around the error line in the Developer Exception Page.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: DeveloperExceptionPage
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SourceCodePath

The base path to use for locating source code files in the Developer Exception Page.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: DeveloperExceptionPage
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UseProblemDetails

If specified, formats error responses using the Problem Details standard (RFC 7807).

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Json
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

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### The modified Kestrun server instance if the PassThru parameter is specified; otherwise

{{ Fill in the Description }}

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun PowerShell module and is used to manage Kestrun servers
and their middleware components.


## RELATED LINKS

{{ Fill in the related links here }}
