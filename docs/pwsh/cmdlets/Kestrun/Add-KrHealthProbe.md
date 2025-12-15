---
layout: default
parent: PowerShell Cmdlets
nav_order: 30
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Add-KrHealthProbe
---

# Add-KrHealthProbe

## SYNOPSIS

Registers a script-based health probe with the active Kestrun server.

## SYNTAX

### ScriptBlock (Default)

```powershell
Add-KrHealthProbe [-ScriptBlock] <scriptblock> -Name <string> [-Server <KestrunHost>]
 [-Tags <string[]>] [-Arguments <hashtable>] [-ExtraImports <string[]>] [-ExtraRefs <Assembly[]>]
 [-PassThru] [<CommonParameters>]
```

### Code

```powershell
Add-KrHealthProbe -Name <string> -Code <string> -Language <ScriptLanguage> [-Server <KestrunHost>]
 [-Tags <string[]>] [-Arguments <hashtable>] [-ExtraImports <string[]>] [-ExtraRefs <Assembly[]>]
 [-PassThru] [<CommonParameters>]
```

### File

```powershell
Add-KrHealthProbe -Name <string> -CodePath <string> [-Server <KestrunHost>] [-Tags <string[]>]
 [-Language <ScriptLanguage>] [-Arguments <hashtable>] [-ExtraImports <string[]>]
 [-ExtraRefs <Assembly[]>] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Wraps the Kestrun host AddProbe overload that accepts script content.
You can provide inline
PowerShell via the -ScriptBlock parameter set, inline code tied to an explicit language, or
the path to a script file.
Optional arguments, imports, references, and tag metadata can be
supplied to influence probe execution and filtering.

## EXAMPLES

### EXAMPLE 1

Add-KrHealthProbe -Name SelfCheck -Tags 'core' -ScriptBlock {
    return [Kestrun.Health.ProbeResult]::new([Kestrun.Health.ProbeStatus]::Healthy, 'Service ready')
}
Registers a PowerShell health probe named SelfCheck tagged with 'core'.

### EXAMPLE 2

Add-KrHealthProbe -Name Database -Language CSharp -Code @"
    return await ProbeAsync();
"@
Registers an inline C# health probe.

### EXAMPLE 3

Add-KrHealthProbe -Name Cache -CodePath './Scripts/CacheProbe.cs' -Language CSharp -ExtraImports 'System.Net'
Registers a C# health probe from a script file and adds an extra namespace import.

## PARAMETERS

### -Arguments

Hashtable of values exposed to the probe at execution time.

```yaml
Type: System.Collections.Hashtable
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

### -Code

Inline code interpreted in the language supplied via -Language.

```yaml
Type: System.String
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

### -CodePath

Path to a script file.
The file is read once at registration time.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: File
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

Additional language-specific imports (namespaces) supplied to Roslyn-based probes.

```yaml
Type: System.String[]
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

### -ExtraRefs

Additional assemblies referenced by Roslyn-based probes.

```yaml
Type: System.Reflection.Assembly[]
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

Script language for inline code or script files.
When registering a script block the language defaults to PowerShell.

```yaml
Type: Kestrun.Scripting.ScriptLanguage
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: File
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
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

Unique name for the probe.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
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

Emits the configured server instance so the call can be chained.

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

Inline PowerShell that returns a ProbeResult (or equivalent contract).
This is the default parameter set.

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

The Kestrun host instance to configure.
If omitted, the current server context is resolved automatically.

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

### -Tags

Optional set of tags used to include or exclude the probe when requests filter by tag.

```yaml
Type: System.String[]
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

## RELATED LINKS

{{ Fill in the related links here }}
