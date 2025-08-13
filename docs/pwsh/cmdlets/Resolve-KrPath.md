---
layout: default
parent: PowerShell Cmdlets
title: Resolve-KrPath
nav_order: 79
render_with_liquid: false
---
---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Resolve-KrPath

## SYNOPSIS
Resolves a file path relative to the Kestrun root or a specified base path.

## SYNTAX

### RelativeBasePath
```
Resolve-KrPath [-Path] <String> [-RelativeBasePath <String>] [-Test] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

### KestrunRoot
```
Resolve-KrPath [-Path] <String> [-KestrunRoot] [-Test] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
This function expands environment variables and resolves the provided path against the Kestrun root or a specified base path.
If the path is relative, it combines it with the base path.
If the -Test switch is used, it checks if the resolved path exists and returns the original input path if it does not.

## EXAMPLES

### EXAMPLE 1
```
Resolve-KrPath -Path "~/Documents/file.txt" -KestrunRoot
Resolves the path "~/Documents/file.txt" relative to the Kestrun root directory, expanding any environment variables.
```

### EXAMPLE 2
```
Resolve-KrPath -Path "file.txt" -RelativeBasePath "C:\Base\Path"
Resolves the path "file.txt" relative to "C:\Base\Path", expanding any environment variables.
```

## PARAMETERS

### -Path
The path to resolve.
This can be an absolute path or a relative path.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -RelativeBasePath
An optional base path to resolve the relative path against.
If not specified, the current directory is used.

```yaml
Type: String
Parameter Sets: RelativeBasePath
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KestrunRoot
If specified, the Kestrun root directory is used as the base path for resolving the relative path.

```yaml
Type: SwitchParameter
Parameter Sets: KestrunRoot
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Test
If specified, the function will check if the resolved path exists.
If it does not, the original input path is returned instead of the resolved path.

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

### System.String
## NOTES
This function is designed to be used in the context of a Kestrun server to resolve file paths correctly.

## RELATED LINKS
