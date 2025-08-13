---
layout: default
parent: PowerShell Cmdlets
title: Add-KrScriptBlock
nav_order: 33
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://github.com/Kestrun/Kestrun
schema: 2.0.0
---

# Add-KrScriptBlock

## SYNOPSIS
Adds a named scriptblock to the specified scope, allowing retrieval via a getter function.

## SYNTAX

### Split (Default)
```
Add-KrScriptBlock [-Name] <String> [-ScriptBlock] <ScriptBlock> [[-Scope] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### WithEquals
```
Add-KrScriptBlock [-Name] <String> [-Operator] <String> [-ScriptBlock] <ScriptBlock> [[-Scope] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
This function allows you to define a scriptblock with a name and an optional scope (Global or Script).
The scriptblock can be retrieved later using a getter function that is automatically created.

## EXAMPLES

### EXAMPLE 1
```
Add-KrScriptBlock -Name 'MyScript' -ScriptBlock { Write-Host "Hello, World!" }
This creates a scriptblock named `MyScript` in the `Script` scope that writes "Hello, World!" to the console.
```

### EXAMPLE 2
```
Add-KrScriptBlock -Name 'global:MyGlobalScript' -ScriptBlock { Write-Host "Hello from Global!" } -Scope Global
This creates a scriptblock named `MyGlobalScript` in the `Global` scope that writes "Hello from Global!" to the console.
```

## PARAMETERS

### -Name
The name of the scriptblock.
If the name includes a scope prefix (e.g., \`global:\` or \`script:\`), it will be used as the scope unless overridden by the \`-Scope\` parameter.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Operator
An optional operator that can be used to separate the name from the scriptblock.
This is only applicable when using the \`WithEquals\` parameter set.

```yaml
Type: String
Parameter Sets: WithEquals
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock
The scriptblock to be associated with the specified name and scope.

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Scope
The scope in which to define the scriptblock.
Valid values are \`Global\` or \`Script\`.
If not specified, it defaults to \`Script\`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 100
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
This function is part of the Kestrun PowerShell module and is designed to facilitate the management of scriptblocks.

## RELATED LINKS

[https://github.com/Kestrun/Kestrun](https://github.com/Kestrun/Kestrun)

