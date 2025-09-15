---
layout: default
parent: PowerShell Cmdlets
title: Set-KrPythonRuntime
nav_order: 99
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrPythonRuntime

## SYNOPSIS
Selects which CPython runtime pythonnet will embed.

## SYNTAX

```
Set-KrPythonRuntime [[-Path] <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
• With no -Path the newest 64-bit CPython is auto-discovered.
• If the env-var PYTHONNET_PYDLL is already present the function
exits immediately-unless you pass -Force (or give an explicit -Path).
• Applies the setting both to the environment and to the live
\[Python.Runtime.Runtime\]::PythonDLL property when possible.

## EXAMPLES

### EXAMPLE 1
```powershell
# Leave current setting untouched if already configured
Set-KrPythonRuntime
```

### EXAMPLE 2
```powershell
# Override whatever is set and pin CPython 3.12
Set-KrPythonRuntime -Path '/opt/python312/lib/libpython3.12.so' -Force
```

## PARAMETERS

### -Path
Full path to pythonXY.dll / libpythonX.Y.so / libpythonX.Y.dylib.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Override an existing PYTHONNET_PYDLL environment variable.

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

## RELATED LINKS
