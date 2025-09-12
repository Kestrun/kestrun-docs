---
layout: default
parent: PowerShell Cmdlets
title: Test-KrLogger
nav_order: 108
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Test-KrLogger

## SYNOPSIS
Tests if a logger exists or returns the current default logger for the session.

## SYNTAX

```
Test-KrLogger [-Name] [<CommonParameters>]
```

## DESCRIPTION
Gets the specified logger as the current logger for the session, or tests if a named logger exists.

## EXAMPLES

### EXAMPLE 1
```powershell
$logger = Test-KrLogger
Retrieves the current default logger instance for the session.
```

### EXAMPLE 2
```powershell
$logger = Test-KrLogger | Write-Host
Retrieves the current default logger instance and outputs it to the console.
```

## PARAMETERS

### -Name
The name of the logger to test for existence or get as the default logger.

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

### When the Name parameter is specified, it returns a boolean indicating whether the named logger exists.
### When the Name parameter is not specified, it returns the default logger instance.
## NOTES
This function is part of the Kestrun logging framework and is used to retrieve the current default logger instance for the session.
It can be used in scripts and modules that utilize Kestrun for logging.

## RELATED LINKS
