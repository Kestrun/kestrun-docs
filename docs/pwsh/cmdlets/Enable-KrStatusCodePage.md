---
layout: default
parent: PowerShell Cmdlets
title: Enable-KrStatusCodePage
nav_order: 69
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Enable-KrStatusCodePage

## SYNOPSIS
Enables Status Code Pages for a Kestrun server.

## SYNTAX

### Default (Default)
```
Enable-KrStatusCodePage [-Server <KestrunHost>] [-PassThru] [<CommonParameters>]
```

### Redirect
```
Enable-KrStatusCodePage [-Server <KestrunHost>] -LocationFormat <String> [-PassThru] [<CommonParameters>]
```

### ReExecute
```
Enable-KrStatusCodePage [-Server <KestrunHost>] -PathFormat <String> [-QueryFormat <String>] [-PassThru]
 [<CommonParameters>]
```

### Template
```
Enable-KrStatusCodePage [-Server <KestrunHost>] -ContentType <String> -BodyFormat <String> [-PassThru]
 [<CommonParameters>]
```

### LanguageOptions
```
Enable-KrStatusCodePage [-Server <KestrunHost>] [-LanguageOptions <LanguageOptions>] [-PassThru]
 [<CommonParameters>]
```

### ScriptBlock
```
Enable-KrStatusCodePage [-Server <KestrunHost>] [-ScriptBlock <ScriptBlock>] [-ExtraRefs <Assembly[]>]
 [-Arguments <Hashtable>] [-PassThru] [<CommonParameters>]
```

### Code
```
Enable-KrStatusCodePage [-Server <KestrunHost>] -Code <String> -Language <ScriptLanguage>
 [-ExtraRefs <Assembly[]>] [-Arguments <Hashtable>] [-PassThru] [<CommonParameters>]
```

### CodeFilePath
```
Enable-KrStatusCodePage [-Server <KestrunHost>] -CodeFilePath <String> [-ExtraRefs <Assembly[]>]
 [-Arguments <Hashtable>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Wraps KestrunHostStatusCodePagesExtensions to configure how 4xx-5xx responses
produce a body: default text, redirect, re-execute, template body, options object,
or a scripted handler via LanguageOptions (PowerShell/C#).

## EXAMPLES

### EXAMPLE 1
```powershell
Enable-KrStatusCodePage -Mode Default
```

### EXAMPLE 2
```powershell
Enable-KrStatusCodePage -Mode Redirect -Location "/error/{0}"
```

### EXAMPLE 3
```powershell
Enable-KrStatusCodePage -Mode ReExecute -Path "/error/{0}" -Query "?code={0}"
```

### EXAMPLE 4
```powershell
Enable-KrStatusCodePage -Mode Template -ContentType "text/plain" -BodyFormat "Oops {0}"
```

### EXAMPLE 5
```powershell
$opts = [Microsoft.AspNetCore.Diagnostics.StatusCodePagesOptions]::new()
Enable-KrStatusCodePage -Mode Options -Options $opts
```

### EXAMPLE 6
```powershell
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
```

### EXAMPLE 7
```powershell
Enable-KrStatusCodePage -Mode ScriptBlock -ScriptBlock {
    param($Context)
    $statusCode = $Context.Response.StatusCode
    $reasonPhrase = [System.Net.HttpStatusCode]::Parse([int]$statusCode).ToString()
    $message = "Custom handler: Status code $statusCode - $reasonPhrase"
    $Context.Response.ContentType = 'text/plain'
    $Context.Response.WriteAsync($message) | Out-Null
}
```

### EXAMPLE 8
```powershell
Enable-KrStatusCodePage -Mode Code -Language PowerShell -Code {
    param($Context)
    $statusCode = $Context.Response.StatusCode
    $reasonPhrase = [System.Net.HttpStatusCode]::Parse([int]$statusCode).ToString()
    $message = "Custom handler: Status code $statusCode - $reasonPhrase"
    $Context.Response.ContentType = 'text/plain'
    $Context.Response.WriteAsync($message) | Out-Null
}
```

### EXAMPLE 9
```powershell
Enable-KrStatusCodePage -Mode CodeFilePath -CodeFilePath 'C:\Scripts\StatusCodeHandler.ps1'
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

### -LocationFormat
The location URL for Redirect mode (e.g.
"/error/{0}").

```yaml
Type: String
Parameter Sets: Redirect
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PathFormat
The path to re-execute for ReExecute mode (e.g.
"/error/{0}").

```yaml
Type: String
Parameter Sets: ReExecute
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueryFormat
The query string to append for ReExecute mode (e.g.
"?code={0}").

```yaml
Type: String
Parameter Sets: ReExecute
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContentType
The content type for Template mode (e.g.
"text/plain" or "application/json").

```yaml
Type: String
Parameter Sets: Template
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BodyFormat
The body format string for Template mode (e.g.
"Oops {0}").

```yaml
Type: String
Parameter Sets: Template
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LanguageOptions
A pre-configured LanguageOptions object for custom scripted handling.

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
A PowerShell script block for custom scripted handling.
The script block
receives a single parameter: the HttpContext object.

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
A code string for custom scripted handling.

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
The scripting language for the code string (PowerShell, CSharp, VisualBasic).

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
A file path to a code file for custom scripted handling (.ps1, .cs, .vb).

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
Additional assembly references for custom scripted handling.

```yaml
Type: Assembly[]
Parameter Sets: ScriptBlock, Code, CodeFilePath
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Arguments
Additional arguments (key-value pairs) for custom scripted handling.

```yaml
Type: Hashtable
Parameter Sets: ScriptBlock, Code, CodeFilePath
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
If specified, the function will return the created route object.

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

### Kestrun.Hosting.KestrunHost
## NOTES
This function is part of the Kestrun PowerShell module and is used to manage Kestrun servers
and their middleware components.

## RELATED LINKS
