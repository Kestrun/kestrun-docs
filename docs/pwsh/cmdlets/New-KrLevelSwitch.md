---
layout: default
parent: PowerShell Cmdlets
title: New-KrLevelSwitch
nav_order: 74
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# New-KrLevelSwitch

## SYNOPSIS
Creates a new level switch for controlling the minimum logging level.

## SYNTAX

```
New-KrLevelSwitch [[-MinimumLevel] <LogEventLevel>] [-ToPreference] [<CommonParameters>]
```

## DESCRIPTION
Creates a new instance of the LoggingLevelSwitch class, which is used to control the minimum logging level for a logger.

## EXAMPLES

### EXAMPLE 1
```powershell
$levelSwitch = New-KrLevelSwitch -MinimumLevel Warning
Creates a new level switch with the minimum level set to Warning.
```

### EXAMPLE 2
```powershell
$levelSwitch = New-KrLevelSwitch -MinimumLevel Debug -ToPreference
Creates a new level switch with the minimum level set to Debug and updates the user's logging preference.
```

## PARAMETERS

### -MinimumLevel
The minimum logging level for the switch.
Default is Information.

```yaml
Type: LogEventLevel
Parameter Sets: (All)
Aliases:
Accepted values: Verbose, Debug, Information, Warning, Error, Fatal

Required: False
Position: 1
Default value: Information
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToPreference
If specified, sets the minimum level to the user's preference.

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

### None. You cannot pipe objects to New-KrLevelSwitch.
## OUTPUTS

### Instance of Serilog.Core.LoggingLevelSwitch.
## NOTES

## RELATED LINKS
