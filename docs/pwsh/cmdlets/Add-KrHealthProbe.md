---
layout: default
parent: PowerShell Cmdlets
title: Add-KrHealthProbe
nav_order: 26
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrHealthProbe

## SYNOPSIS
Registers a script-based health probe with the active Kestrun server.

## SYNTAX

### ScriptBlock (Default)
```
Add-KrHealthProbe [-Server <KestrunHost>] -Name <String> [-Tags <String[]>] [-ScriptBlock] <ScriptBlock>
 [-Arguments <Hashtable>] [-ExtraImports <String[]>] [-ExtraRefs <Assembly[]>] [-PassThru] [<CommonParameters>]
```

### Code
```
Add-KrHealthProbe [-Server <KestrunHost>] -Name <String> [-Tags <String[]>] -Code <String>
 -Language <ScriptLanguage> [-Arguments <Hashtable>] [-ExtraImports <String[]>] [-ExtraRefs <Assembly[]>]
 [-PassThru] [<CommonParameters>]
```

### File
```
Add-KrHealthProbe [-Server <KestrunHost>] -Name <String> [-Tags <String[]>] [-Language <ScriptLanguage>]
 -CodePath <String> [-Arguments <Hashtable>] [-ExtraImports <String[]>] [-ExtraRefs <Assembly[]>] [-PassThru]
 [<CommonParameters>]
```

## DESCRIPTION
Wraps the Kestrun host AddProbe overload that accepts script content.
You can provide inline
PowerShell via the -ScriptBlock parameter set, inline code tied to an explicit language, or
the path to a script file.
Optional arguments, imports, references, and tag metadata can be
supplied to influence probe execution and filtering.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrHealthProbe -Name SelfCheck -Tags 'core' -ScriptBlock {
    return [Kestrun.Health.ProbeResult]::new([Kestrun.Health.ProbeStatus]::Healthy, 'Service ready')
}
Registers a PowerShell health probe named SelfCheck tagged with 'core'.
```

### EXAMPLE 2
```powershell
Add-KrHealthProbe -Name Database -Language CSharp -Code @"
    return await ProbeAsync();
"@
Registers an inline C# health probe.
```

### EXAMPLE 3
```powershell
Add-KrHealthProbe -Name Cache -CodePath './Scripts/CacheProbe.cs' -Language CSharp -ExtraImports 'System.Net'
Registers a C# health probe from a script file and adds an extra namespace import.
```

## PARAMETERS

### -Server
The Kestrun host instance to configure.
If omitted, the current server context is resolved automatically.

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

### -Name
Unique name for the probe.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
Optional set of tags used to include or exclude the probe when requests filter by tag.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock
Inline PowerShell that returns a ProbeResult (or equivalent contract).
This is the default parameter set.

```yaml
Type: ScriptBlock
Parameter Sets: ScriptBlock
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Code
Inline code interpreted in the language supplied via -Language.

```yaml
Type: String
Parameter Sets: Code
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Language
Script language for inline code or script files.
When registering a script block the language defaults to PowerShell.

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

```yaml
Type: ScriptLanguage
Parameter Sets: File
Aliases:
Accepted values: Native, PowerShell, CSharp, FSharp, Python, JavaScript, VBNet

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CodePath
Path to a script file.
The file is read once at registration time.

```yaml
Type: String
Parameter Sets: File
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Arguments
Hashtable of values exposed to the probe at execution time.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExtraImports
Additional language-specific imports (namespaces) supplied to Roslyn-based probes.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExtraRefs
Additional assemblies referenced by Roslyn-based probes.

```yaml
Type: Assembly[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Emits the configured server instance so the call can be chained.

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

## RELATED LINKS
