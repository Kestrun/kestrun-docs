---
layout: default
parent: PowerShell Cmdlets
title: Set-KrLevelSwitch
nav_order: 81
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrLevelSwitch

## SYNOPSIS
Sets the minimum logging level for a level switch.

## SYNTAX

```
Set-KrLevelSwitch [-LevelSwitch] <LoggingLevelSwitch> [-MinimumLevel] <LogEventLevel> [-ToPreference]
 [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Sets the minimum logging level for a specified level switch.
If ToPreference is specified,
the logging level will be set to the user's preference.

## EXAMPLES

### EXAMPLE 1
```powershell
Set-KrLevelSwitch -LevelSwitch $myLevelSwitch -MinimumLevel Warning
Sets the minimum logging level of the specified level switch to Warning.
```

### EXAMPLE 2
```powershell
Set-KrLevelSwitch -LevelSwitch $myLevelSwitch -MinimumLevel Debug -ToPreference
Sets the minimum logging level of the specified level switch to Debug and updates the user's logging preferences.
```

### EXAMPLE 3
```powershell
$levelSwitch = Set-KrLevelSwitch -LevelSwitch $myLevelSwitch -MinimumLevel Information -PassThru
Sets the minimum logging level of the specified level switch to Information and outputs the LevelSwitch object into the pipeline.
```

## PARAMETERS

### -LevelSwitch
Instance of Serilog.Core.LoggingLevelSwitch to set the minimum level for.

```yaml
Type: LoggingLevelSwitch
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -MinimumLevel
The minimum logging level to set for the switch.

```yaml
Type: LogEventLevel
Parameter Sets: (All)
Aliases:
Accepted values: Verbose, Debug, Information, Warning, Error, Fatal

Required: True
Position: 2
Default value: None
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

### -PassThru
If specified, outputs the LevelSwitch object into the pipeline.

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

### Instance of Serilog.Core.LoggingLevelSwitch
## OUTPUTS

### Instance of Serilog.Core.LoggingLevelSwitch if PassThru is specified.
## NOTES

## RELATED LINKS
