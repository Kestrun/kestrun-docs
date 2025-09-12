---
layout: default
parent: PowerShell Cmdlets
title: Add-KrRouteGroup
nav_order: 33
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrRouteGroup

## SYNOPSIS
Creates a grouped route context (prefix + shared options) for nested Add-KrMapRoute calls.

## SYNTAX

### ScriptBlock (Default)
```
Add-KrRouteGroup [-Server <KestrunHost>] [-Prefix <String>] [-AuthorizationSchema <String[]>]
 [-AuthorizationPolicy <String[]>] [-ExtraImports <String[]>] [-ExtraRefs <Assembly[]>]
 [-Arguments <Hashtable>] [-ScriptBlock] <ScriptBlock> [-NoInherit] [-PassThru] [<CommonParameters>]
```

### FileNameWithOptions
```
Add-KrRouteGroup [-Server <KestrunHost>] -Options <MapRouteOptions> -FileName <String> [-NoInherit] [-PassThru]
 [<CommonParameters>]
```

### ScriptBlockWithOptions
```
Add-KrRouteGroup [-Server <KestrunHost>] -Options <MapRouteOptions> [-ScriptBlock] <ScriptBlock> [-NoInherit]
 [-PassThru] [<CommonParameters>]
```

### FileName
```
Add-KrRouteGroup [-Server <KestrunHost>] [-Prefix <String>] [-AuthorizationSchema <String[]>]
 [-AuthorizationPolicy <String[]>] [-ExtraImports <String[]>] [-ExtraRefs <Assembly[]>]
 [-Arguments <Hashtable>] -FileName <String> [-NoInherit] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
While the ScriptBlock runs, all Add-KrMapRoute calls inherit:
  - Prefix (prepended to -Path)
  - AuthorizationSchema / AuthorizationPolicy
  - ExtraImports / ExtraRefs
  - Arguments (merged; child overrides keys)
Supports nesting; inner groups inherit and can override unless -NoInherit is used.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrRouteGroup -Prefix '/todoitems' -AuthorizationPolicy 'RequireUser' -ScriptBlock {
    Add-KrMapRoute -Verbs Get  -Path '/'      -ScriptBlock { 'all todos' }
    Add-KrMapRoute -Verbs Get  -Path '/{id}'  -ScriptBlock { "todo $($Context.Request.RouteValues['id'])" }
    Add-KrMapRoute -Verbs Post -Path '/'      -ScriptBlock { write-KrResponse -InputObject 'create' }
}
Adds a new route group to the specified Kestrun server with the given prefix and options.
```

### EXAMPLE 2
```powershell
Add-KrRouteGroup -Prefix '/todoitems' -FileName 'C:\Scripts\TodoItems.ps1'
Add the new route group defined in the specified file.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the route will be added.
If not specified, the function will attempt to resolve the current server context.

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

### -Options
The options to apply to all routes in the group.

```yaml
Type: MapRouteOptions
Parameter Sets: FileNameWithOptions, ScriptBlockWithOptions
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Prefix
The path prefix for the group (e.g.
'/todoitems').

```yaml
Type: String
Parameter Sets: ScriptBlock, FileName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AuthorizationSchema
Authorization schemes required by all routes in the group.

```yaml
Type: String[]
Parameter Sets: ScriptBlock, FileName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AuthorizationPolicy
Authorization policies required by all routes in the group.

```yaml
Type: String[]
Parameter Sets: ScriptBlock, FileName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExtraImports
Extra namespaces added to all routes in the group.

```yaml
Type: String[]
Parameter Sets: ScriptBlock, FileName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExtraRefs
Extra assemblies referenced by all routes in the group.

```yaml
Type: Assembly[]
Parameter Sets: ScriptBlock, FileName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Arguments
Extra arguments injected into all routes in the group.

```yaml
Type: Hashtable
Parameter Sets: ScriptBlock, FileName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock
ScriptBlock within which you call Add-KrMapRoute for relative paths.

```yaml
Type: ScriptBlock
Parameter Sets: ScriptBlock, ScriptBlockWithOptions
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FileName
Path to a script file containing the scriptblock to execute.

```yaml
Type: String
Parameter Sets: FileNameWithOptions, FileName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoInherit
If set, do not inherit options from the parent group; only apply the current parameters.

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

## NOTES
This function is part of the Kestrun PowerShell module and is used to manage routes

## RELATED LINKS
