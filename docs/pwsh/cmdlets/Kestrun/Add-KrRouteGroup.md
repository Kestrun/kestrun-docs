---
layout: default
parent: PowerShell Cmdlets
nav_order: 61
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Add-KrRouteGroup
---

# Add-KrRouteGroup

## SYNOPSIS

Creates a grouped route context (prefix + shared options) for nested Add-KrMapRoute calls.

## SYNTAX

### ScriptBlock (Default)

```powershell
Add-KrRouteGroup [-ScriptBlock] <scriptblock> [-Server <KestrunHost>] [-Prefix <string>]
 [-AuthorizationScheme <string[]>] [-AuthorizationPolicy <string[]>] [-ExtraImports <string[]>]
 [-ExtraRefs <Assembly[]>] [-Arguments <hashtable>] [-NoInherit] [-PassThru] [<CommonParameters>]
```

### FileNameWithOptions

```powershell
Add-KrRouteGroup -Options <MapRouteOptions> -FileName <string> [-Server <KestrunHost>] [-NoInherit]
 [-PassThru] [<CommonParameters>]
```

### ScriptBlockWithOptions

```powershell
Add-KrRouteGroup [-ScriptBlock] <scriptblock> -Options <MapRouteOptions> [-Server <KestrunHost>]
 [-NoInherit] [-PassThru] [<CommonParameters>]
```

### FileName

```powershell
Add-KrRouteGroup -FileName <string> [-Server <KestrunHost>] [-Prefix <string>]
 [-AuthorizationScheme <string[]>] [-AuthorizationPolicy <string[]>] [-ExtraImports <string[]>]
 [-ExtraRefs <Assembly[]>] [-Arguments <hashtable>] [-NoInherit] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

While the ScriptBlock runs, all Add-KrMapRoute calls inherit:
  - Prefix (prepended to -Path)
  - AuthorizationScheme / AuthorizationPolicy
  - ExtraImports / ExtraRefs
  - Arguments (merged; child overrides keys)
Supports nesting; inner groups inherit and can override unless -NoInherit is used.

## EXAMPLES

### EXAMPLE 1

Add-KrRouteGroup -Prefix '/todoitems' -AuthorizationPolicy 'RequireUser' -ScriptBlock {
    Add-KrMapRoute -Verbs Get  -Path '/'      -ScriptBlock { 'all todos' }
    Add-KrMapRoute -Verbs Get  -Path '/{id}'  -ScriptBlock { "todo $($Context.Request.RouteValues['id'])" }
    Add-KrMapRoute -Verbs Post -Path '/'      -ScriptBlock { write-KrResponse -InputObject 'create' }
}
Adds a new route group to the specified Kestrun server with the given prefix and options.

### EXAMPLE 2

Add-KrRouteGroup -Prefix '/todoitems' -FileName 'C:\Scripts\TodoItems.ps1'
Add the new route group defined in the specified file.

## PARAMETERS

### -Arguments

Extra arguments injected into all routes in the group.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FileName
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

### -AuthorizationPolicy

Authorization policies required by all routes in the group.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FileName
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

### -AuthorizationScheme

Authorization schemes required by all routes in the group.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FileName
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

### -ExtraImports

Extra namespaces added to all routes in the group.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FileName
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

Extra assemblies referenced by all routes in the group.

```yaml
Type: System.Reflection.Assembly[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FileName
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

### -FileName

Path to a script file containing the scriptblock to execute.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FileNameWithOptions
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: FileName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -NoInherit

If set, do not inherit options from the parent group; only apply the current parameters.

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

### -Options

The options to apply to all routes in the group.

```yaml
Type: Kestrun.Hosting.Options.MapRouteOptions
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FileNameWithOptions
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ScriptBlockWithOptions
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

### -Prefix

The path prefix for the group (e.g.
'/todoitems').

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FileName
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

### -ScriptBlock

ScriptBlock within which you call Add-KrMapRoute for relative paths.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ScriptBlockWithOptions
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
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

The Kestrun server instance to which the route will be added.
If not specified, the function will attempt to resolve the current server context.

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

## NOTES

This function is part of the Kestrun PowerShell module and is used to manage routes


## RELATED LINKS

{{ Fill in the related links here }}
