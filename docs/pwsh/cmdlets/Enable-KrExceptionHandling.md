---
layout: default
parent: PowerShell Cmdlets
title: Enable-KrExceptionHandling
nav_order: 68
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Enable-KrExceptionHandling

## SYNOPSIS
Enables exception handling middleware for a Kestrun server instance.

## SYNTAX

### Default (Default)
```
Enable-KrExceptionHandling [-Server <KestrunHost>] [-PassThru] [<CommonParameters>]
```

### ExceptionHandlingPath
```
Enable-KrExceptionHandling [-Server <KestrunHost>] -ExceptionHandlingPath <String> [-CreateScopeForErrors]
 [-AllowStatusCode404Response] [-PassThru] [<CommonParameters>]
```

### CodeFilePath
```
Enable-KrExceptionHandling [-Server <KestrunHost>] [-CreateScopeForErrors] [-AllowStatusCode404Response]
 -CodeFilePath <String> [-ExtraRefs <Assembly[]>] [-Arguments <Hashtable>] [-ExtraImports <String[]>]
 [-PassThru] [<CommonParameters>]
```

### Code
```
Enable-KrExceptionHandling [-Server <KestrunHost>] [-CreateScopeForErrors] [-AllowStatusCode404Response]
 -Code <String> -Language <ScriptLanguage> [-ExtraRefs <Assembly[]>] [-Arguments <Hashtable>]
 [-ExtraImports <String[]>] [-PassThru] [<CommonParameters>]
```

### ScriptBlock
```
Enable-KrExceptionHandling [-Server <KestrunHost>] [-CreateScopeForErrors] [-AllowStatusCode404Response]
 [-ScriptBlock <ScriptBlock>] [-ExtraRefs <Assembly[]>] [-Arguments <Hashtable>] [-ExtraImports <String[]>]
 [-PassThru] [<CommonParameters>]
```

### LanguageOptions
```
Enable-KrExceptionHandling [-Server <KestrunHost>] [-CreateScopeForErrors] [-AllowStatusCode404Response]
 [-LanguageOptions <LanguageOptions>] [-PassThru] [<CommonParameters>]
```

### Json
```
Enable-KrExceptionHandling [-Server <KestrunHost>] [-IncludeDetailsInDevelopment] [-UseProblemDetails]
 [-Compress] [-PassThru] [<CommonParameters>]
```

### DeveloperExceptionPage
```
Enable-KrExceptionHandling [-Server <KestrunHost>] [-DeveloperExceptionPage] [-SourceCodeLineCount <Int32>]
 [-SourceCodePath <String>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet configures the exception handling middleware for a Kestrun server instance,
allowing for customizable error handling and response generation.

## EXAMPLES

### EXAMPLE 1
```powershell
Enable-KrExceptionHandling -ExceptionHandlingPath '/error' -CreateScopeForErrors -AllowStatusCode404Response -PassThru
Enables exception handling middleware on the default Kestrun server instance,
re-executing requests to '/error' when exceptions occur, creating a scope for error handling,
and allowing handling of 404 status code responses. The modified server instance is returned.
```

### EXAMPLE 2
```powershell
Enable-KrExceptionHandling -Server $myServer -DeveloperExceptionPage -SourceCodeLineCount 10 -SourceCodePath 'C:\MyApp'
Enables the Developer Exception Page middleware on the specified Kestrun server instance,
displaying 10 lines of source code around the error line and using 'C:\MyApp' as the base path for source files.
```

### EXAMPLE 3
```powershell
$langOptions = [Kestrun.Hosting.Options.LanguageOptions]::new()
$langOptions.Language = [Kestrun.Scripting.ScriptLanguage]::PowerShell
$langOptions.Code = { param($exception) "An error occurred: $($exception.Message)" }
Enable-KrExceptionHandling -Server $myServer -LanguageOptions $langOptions
Enables custom exception handling on the specified Kestrun server instance,
executing the provided PowerShell code block when an exception occurs. The code block receives the exception object as a parameter.
The custom error handling logic can be defined using the LanguageOptions, ScriptBlock, Code, or CodeFilePath parameters.
```

## PARAMETERS

### -Server
The Kestrun server instance (resolved if omitted via Resolve-KestrunServer).

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ExceptionHandlingPath
The path to re-execute when an exception occurs (e.g., '/error').

```yaml
Type: String
Parameter Sets: ExceptionHandlingPath
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreateScopeForErrors
If specified, creates a new scope for handling errors.

```yaml
Type: SwitchParameter
Parameter Sets: ExceptionHandlingPath, CodeFilePath, Code, ScriptBlock, LanguageOptions
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowStatusCode404Response
If specified, allows handling of 404 status code responses.

```yaml
Type: SwitchParameter
Parameter Sets: ExceptionHandlingPath, CodeFilePath, Code, ScriptBlock, LanguageOptions
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeDetailsInDevelopment
If specified, includes detailed error information when the environment is set to Development.

```yaml
Type: SwitchParameter
Parameter Sets: Json
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseProblemDetails
If specified, formats error responses using the Problem Details standard (RFC 7807).

```yaml
Type: SwitchParameter
Parameter Sets: Json
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Compress
If specified, compress the json response for error handling.

```yaml
Type: SwitchParameter
Parameter Sets: Json
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeveloperExceptionPage
If specified, enables the Developer Exception Page middleware with default options.

```yaml
Type: SwitchParameter
Parameter Sets: DeveloperExceptionPage
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceCodeLineCount
The number of source code lines to display around the error line in the Developer Exception Page.

```yaml
Type: Int32
Parameter Sets: DeveloperExceptionPage
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceCodePath
The base path to use for locating source code files in the Developer Exception Page.

```yaml
Type: String
Parameter Sets: DeveloperExceptionPage
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LanguageOptions
A LanguageOptions object defining the scripting language, code, references, imports, and arguments
for custom error handling logic.

```yaml
Type: LanguageOptions
Parameter Sets: LanguageOptions
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock
A PowerShell script block to execute for custom error handling logic.

```yaml
Type: ScriptBlock
Parameter Sets: ScriptBlock
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Code
A string containing the code to execute for custom error handling logic.

```yaml
Type: String
Parameter Sets: Code
Aliases: CodeBlock

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Language
The scripting language of the provided code (e.g., PowerShell, CSharp, VisualBasic).

```yaml
Type: ScriptLanguage
Parameter Sets: Code
Aliases:
Accepted values: Native, PowerShell, CSharp, FSharp, Python, JavaScript, VBNet

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CodeFilePath
The file path to a script file containing the code to execute for custom error handling logic.

```yaml
Type: String
Parameter Sets: CodeFilePath
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExtraRefs
An array of additional assemblies to reference when executing the custom error handling code.

```yaml
Type: Assembly[]
Parameter Sets: CodeFilePath, Code, ScriptBlock
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Arguments
A hashtable of arguments to pass to the custom error handling code.

```yaml
Type: Hashtable
Parameter Sets: CodeFilePath, Code, ScriptBlock
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExtraImports
An array of additional namespaces to import when executing the custom error handling code.

```yaml
Type: String[]
Parameter Sets: CodeFilePath, Code, ScriptBlock
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
If specified, returns the modified Kestrun server instance.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### The modified Kestrun server instance if the PassThru parameter is specified; otherwise, no output.
## NOTES
This function is part of the Kestrun PowerShell module and is used to manage Kestrun servers
and their middleware components.

## RELATED LINKS
