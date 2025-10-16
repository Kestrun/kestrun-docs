---
layout: default
parent: PowerShell Cmdlets
title: New-KrTask
nav_order: 116
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# New-KrTask

## SYNOPSIS
Creates a task without starting it.

## SYNTAX

### FromCode (Default)
```
New-KrTask [-Server <KestrunHost>] [-Id <String>] [-AutoStart] [-Name <String>] [-Description <String>]
 [<CommonParameters>]
```

### Options
```
New-KrTask [-Server <KestrunHost>] [-Id <String>] [-AutoStart] [-Name <String>] [-Description <String>]
 -Options <LanguageOptions> [<CommonParameters>]
```

### ScriptBlock
```
New-KrTask [-Server <KestrunHost>] [-Id <String>] [-AutoStart] [-Name <String>] [-Description <String>]
 [-ScriptBlock] <ScriptBlock> [-Arguments <Hashtable>] [<CommonParameters>]
```

### Code
```
New-KrTask [-Server <KestrunHost>] [-Id <String>] [-AutoStart] [-Name <String>] [-Description <String>]
 -Code <String> -Language <ScriptLanguage> [-ExtraImports <String[]>] [-ExtraRefs <Assembly[]>]
 [-Arguments <Hashtable>] [<CommonParameters>]
```

### CodeFilePath
```
New-KrTask [-Server <KestrunHost>] [-Id <String>] [-AutoStart] [-Name <String>] [-Description <String>]
 -CodeFilePath <String> [-ExtraImports <String[]>] [-ExtraRefs <Assembly[]>] [-Arguments <Hashtable>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a new task id after registering the code/file with the Task service.

## EXAMPLES

### EXAMPLE 1
```powershell
New-KrTask -ScriptBlock { param($name) "Hello, $name!" } -Arguments @{ name = 'World' }
```

Creates a new PowerShell task that greets the specified name.

### EXAMPLE 2
```powershell
New-KrTask -Code 'return 2 + 2' -Language CSharp
Creates a new C# task that returns the result of 2 + 2.
```

### EXAMPLE 3
```powershell
New-KrTask -CodeFilePath 'C:\Scripts\MyScript.ps1'
Creates a new PowerShell task from the specified script file.
```

## PARAMETERS

### -Server
The Kestrun server instance.

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

### -Id
Optional task id; if omitted, a new GUID is generated.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AutoStart
If specified, the task will be started immediately after creation.

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

### -Name
Optional human-friendly name of the task.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
Optional description of the task.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Options
Language options object; mutually exclusive with other code parameters.

```yaml
Type: LanguageOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock
PowerShell script block to run; mutually exclusive with other code parameters.

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
Code string to run; mutually exclusive with other code parameters.

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
Language of the code string; required when using -Code.

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
Path to a code file to run; mutually exclusive with other code parameters.

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

### -ExtraImports
Additional namespaces to import; applies to -Code and -CodeFilePath.

```yaml
Type: String[]
Parameter Sets: Code, CodeFilePath
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExtraRefs
Additional assemblies to reference; applies to -Code and -CodeFilePath.

```yaml
Type: Assembly[]
Parameter Sets: Code, CodeFilePath
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Arguments
Hashtable of named arguments to pass to the script; applies to -ScriptBlock, -Code, and -CodeFilePath.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Returns the id of the created task. The task is not started; use Start-KrTask to run it.
## NOTES

## RELATED LINKS
