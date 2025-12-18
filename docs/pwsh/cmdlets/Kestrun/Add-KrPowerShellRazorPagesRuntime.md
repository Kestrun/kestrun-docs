---
layout: default
parent: PowerShell Cmdlets
nav_order: 53
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Add-KrPowerShellRazorPagesRuntime
---

# Add-KrPowerShellRazorPagesRuntime

## SYNOPSIS

Adds PowerShell support for Razor Pages.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrPowerShellRazorPagesRuntime [[-Server] <KestrunHost>] [[-RootPath] <string>]
 [[-PathPrefix] <string>] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet allows you to register Razor Pages with PowerShell support in the Kestrun server.
It can be used to serve dynamic web pages using Razor syntax with PowerShell code blocks.

## EXAMPLES

### EXAMPLE 1

$server | Add-KrPowerShellRazorPagesRuntime -PathPrefix '/pages'
This example adds PowerShell support for Razor Pages to the server, with a path prefix of '/pages'.

### EXAMPLE 2

$server | Add-KrPowerShellRazorPagesRuntime
This example adds PowerShell support for Razor Pages to the server without a path prefix.

## PARAMETERS

### -PassThru

If specified, the cmdlet will return the modified server instance.

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

### -PathPrefix

An optional path prefix for the Razor Pages.
If specified, the Razor Pages will be served under this path.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RootPath

The root directory for the Razor Pages.
If not specified, the default 'Pages' directory under the content root will be used.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance to which the PowerShell Razor Pages service will be added.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
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

This cmdlet is used to register Razor Pages with PowerShell support in the Kestrun server, allowing you to serve dynamic web pages using Razor syntax with PowerShell code blocks.


## RELATED LINKS

{{ Fill in the related links here }}
