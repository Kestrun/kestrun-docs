---
layout: default
parent: PowerShell Cmdlets
nav_order: 93
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Enable-KrStatusCodePage
---

# Enable-KrStatusCodePage

## SYNOPSIS

Enables Status Code Pages for a Kestrun server.

## SYNTAX

### Default (Default)

```powershell
Enable-KrStatusCodePage [-Server <KestrunHost>] [-PassThru] [<CommonParameters>]
```

### Redirect

```powershell
Enable-KrStatusCodePage -LocationFormat <string> [-Server <KestrunHost>] [-PassThru]
 [<CommonParameters>]
```

### ReExecute

```powershell
Enable-KrStatusCodePage -PathFormat <string> [-Server <KestrunHost>] [-QueryFormat <string>]
 [-PassThru] [<CommonParameters>]
```

### Template

```powershell
Enable-KrStatusCodePage -ContentType <string> -BodyFormat <string> [-Server <KestrunHost>]
 [-PassThru] [<CommonParameters>]
```

### LanguageOptions

```powershell
Enable-KrStatusCodePage [-Server <KestrunHost>] [-LanguageOptions <LanguageOptions>] [-PassThru]
 [<CommonParameters>]
```

### ScriptBlock

```powershell
Enable-KrStatusCodePage [-Server <KestrunHost>] [-ScriptBlock <scriptblock>]
 [-ExtraRefs <Assembly[]>] [-Arguments <hashtable>] [-PassThru] [<CommonParameters>]
```

### Code

```powershell
Enable-KrStatusCodePage -Code <string> -Language <ScriptLanguage> [-Server <KestrunHost>]
 [-ExtraRefs <Assembly[]>] [-Arguments <hashtable>] [-PassThru] [<CommonParameters>]
```

### CodeFilePath

```powershell
Enable-KrStatusCodePage -CodeFilePath <string> [-Server <KestrunHost>] [-ExtraRefs <Assembly[]>]
 [-Arguments <hashtable>] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Wraps KestrunHostStatusCodePagesExtensions to configure how 4xx–5xx responses
produce a body: default text, redirect, re-execute, template body, options object,
or a scripted handler via LanguageOptions (PowerShell/C#).

## EXAMPLES

### EXAMPLE 1

Enable-KrStatusCodePage -Mode Default

### EXAMPLE 2

Enable-KrStatusCodePage -Mode Redirect -Location "/error/{0}"

### EXAMPLE 3

Enable-KrStatusCodePage -Mode ReExecute -Path "/error/{0}" -Query "?code={0}"

### EXAMPLE 4

Enable-KrStatusCodePage -Mode Template -ContentType "text/plain" -BodyFormat "Oops {0}"

### EXAMPLE 5

$opts = [Microsoft.AspNetCore.Diagnostics.StatusCodePagesOptions]::new()
Enable-KrStatusCodePage -Mode Options -Options $opts

### EXAMPLE 6

$lo = [Kestrun.Hosting.Options.LanguageOptions]::new()
$lo.ExtraImports = @('System.Net')
$lo.Code = {
    param($Context)
    $statusCode = $Context.Response.StatusCode
    $reasonPhrase = [System.Net.HttpStatusCode]::Parse([int]$statusCode).ToString()
    $message = "Custom handler: Status code $statusCode - $reasonPhrase"
    $Context.Response.ContentType = 'text/plain'
    $Context.Response.WriteAsync($message) | Out-Null
}
Enable-KrStatusCodePage -Mode LanguageOptions -LanguageOptions $lo

### EXAMPLE 7

Enable-KrStatusCodePage -Mode ScriptBlock -ScriptBlock {
    param($Context)
    $statusCode = $Context.Response.StatusCode
    $reasonPhrase = [System.Net.HttpStatusCode]::Parse([int]$statusCode).ToString()
    $message = "Custom handler: Status code $statusCode - $reasonPhrase"
    $Context.Response.ContentType = 'text/plain'
    $Context.Response.WriteAsync($message) | Out-Null
}

### EXAMPLE 8

Enable-KrStatusCodePage -Mode Code -Language PowerShell -Code {
    param($Context)
    $statusCode = $Context.Response.StatusCode
    $reasonPhrase = [System.Net.HttpStatusCode]::Parse([int]$statusCode).ToString()
    $message = "Custom handler: Status code $statusCode - $reasonPhrase"
    $Context.Response.ContentType = 'text/plain'
    $Context.Response.WriteAsync($message) | Out-Null
}

### EXAMPLE 9

Enable-KrStatusCodePage -Mode CodeFilePath -CodeFilePath 'C:\Scripts\StatusCodeHandler.ps1'

## PARAMETERS

### -Arguments

Additional arguments (key-value pairs) for custom scripted handling.

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

### -BodyFormat

The body format string for Template mode (e.g.
"Oops {0}").

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Template
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Code

A code string for custom scripted handling.

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

A file path to a code file for custom scripted handling (.ps1, .cs, .vb).

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

### -ContentType

The content type for Template mode (e.g.
"text/plain" or "application/json").

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Template
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ExtraRefs

Additional assembly references for custom scripted handling.

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

### -Language

The scripting language for the code string (PowerShell, CSharp, VisualBasic).

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

A pre-configured LanguageOptions object for custom scripted handling.

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

### -LocationFormat

The location URL for Redirect mode (e.g.
"/error/{0}").

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Redirect
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If specified, the function will return the created route object.

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

### -PathFormat

The path to re-execute for ReExecute mode (e.g.
"/error/{0}").

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ReExecute
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -QueryFormat

The query string to append for ReExecute mode (e.g.
"?code={0}").

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ReExecute
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

A PowerShell script block for custom scripted handling.
The script block
receives a single parameter: the HttpContext object.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun PowerShell module and is used to manage Kestrun servers
and their middleware components.


## RELATED LINKS

{{ Fill in the related links here }}
