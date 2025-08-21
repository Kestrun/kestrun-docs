---
layout: default
parent: PowerShell Cmdlets
title: Set-KrMinimumLevel
nav_order: 88
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrMinimumLevel

## SYNOPSIS
Sets the minimum log level for the logger configuration.

## SYNTAX

### Level
```
Set-KrMinimumLevel -LoggerConfig <LoggerConfiguration> -Value <LogEventLevel> [-ToPreference]
 [<CommonParameters>]
```

### Switch
```
Set-KrMinimumLevel -LoggerConfig <LoggerConfiguration> -ControlledBy <LoggingLevelSwitch> [<CommonParameters>]
```

### Preference
```
Set-KrMinimumLevel -LoggerConfig <LoggerConfiguration> [-FromPreference] [<CommonParameters>]
```

## DESCRIPTION
Sets the minimum log level for the logger configuration.
This cmdlet can be used to
set the minimum log level to a specific level or to the user's preference.

## EXAMPLES

### EXAMPLE 1
```powershell
Set-KrMinimumLevel -LoggerConfig $myLoggerConfig -Value Warning
Sets the minimum log level of the specified logger configuration to Warning.
```

### EXAMPLE 2
```powershell
Set-KrMinimumLevel -LoggerConfig $myLoggerConfig -Value Debug -ToPreference
Sets the minimum log level of the specified logger configuration to Debug and updates the user's logging preferences.
```

### EXAMPLE 3
```powershell
Set-KrMinimumLevel -LoggerConfig $myLoggerConfig -ControlledBy $myLevelSwitch
Sets the minimum log level of the specified logger configuration to be controlled by the specified level switch.
```

### EXAMPLE 4
```powershell
Set-KrMinimumLevel -LoggerConfig $myLoggerConfig -FromPreference
Sets the minimum log level of the specified logger configuration from the user's logging preferences.
```

### EXAMPLE 5
```powershell
$myLoggerConfig | Set-KrMinimumLevel -Value Information -PassThru
Sets the minimum log level of the specified logger configuration to Information and outputs the LoggerConfiguration object into the pipeline.
```

## PARAMETERS

### -LoggerConfig
Instance of Serilog.LoggerConfiguration to set the minimum level for.

```yaml
Type: LoggerConfiguration
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Value
The minimum log level to set for the logger configuration.

```yaml
Type: LogEventLevel
Parameter Sets: Level
Aliases:
Accepted values: Verbose, Debug, Information, Warning, Error, Fatal

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToPreference
If specified, sets the minimum level to the user's preference.

```yaml
Type: SwitchParameter
Parameter Sets: Level
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ControlledBy
Instance of Serilog.Core.LoggingLevelSwitch to control the minimum level.

```yaml
Type: LoggingLevelSwitch
Parameter Sets: Switch
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FromPreference
If specified, sets the minimum level from the user's preference.

```yaml
Type: SwitchParameter
Parameter Sets: Preference
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Instance of Serilog.LoggerConfiguration
## OUTPUTS

### Instance of Serilog.LoggerConfiguration if the PassThru parameter is specified.
## NOTES

## RELATED LINKS
