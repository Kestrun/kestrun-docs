---
layout: default
parent: PowerShell Cmdlets
title: Add-KrSinkConsole
nav_order: 35
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://github.com/Kestrun/Kestrun
schema: 2.0.0
---

# Add-KrSinkConsole

## SYNOPSIS
Adds a console logging sink to the Kestrun logging system.

## SYNTAX

### Default (Default)
```
Add-KrSinkConsole -LoggerConfig <LoggerConfiguration> [-RestrictedToMinimumLevel <LogEventLevel>]
 [-OutputTemplate <String>] [-FormatProvider <IFormatProvider>] [-LevelSwitch <LoggingLevelSwitch>]
 [-StandardErrorFromLevel <LogEventLevel>] [-Theme <ConsoleTheme>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

### Formatter
```
Add-KrSinkConsole -LoggerConfig <LoggerConfiguration> [-RestrictedToMinimumLevel <LogEventLevel>]
 [-OutputTemplate <String>] [-FormatProvider <IFormatProvider>] [-LevelSwitch <LoggingLevelSwitch>]
 [-StandardErrorFromLevel <LogEventLevel>] [-Theme <ConsoleTheme>] [-Formatter <ITextFormatter>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
The Add-KrSinkConsole function configures and adds a console output sink for logging messages within the Kestrun framework.
This enables log messages to be displayed directly in the PowerShell console.

## EXAMPLES

### EXAMPLE 1
```
Add-KrSinkConsole -LoggerConfig $config
```

Adds a console sink to the logging system, allowing log messages to be output to the console.

### EXAMPLE 2
```
Add-KrSinkConsole -LoggerConfig $config -RestrictedToMinimumLevel Information
```

Adds a console sink that only outputs log events at Information level or higher.

### EXAMPLE 3
```
Add-KrSinkConsole -LoggerConfig $config -OutputTemplate '[{Level}] {Message}{NewLine}'
```

Customizes the output template for console log messages.

### EXAMPLE 4
```
Add-KrSinkConsole -LoggerConfig $config -Formatter $customFormatter
```

Uses a custom text formatter for console log output.

## PARAMETERS

### -LoggerConfig
The Serilog LoggerConfiguration object to which the console sink will be added.

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

### -RestrictedToMinimumLevel
The minimum log event level required to write to the console sink.
Defaults to Verbose.

```yaml
Type: LogEventLevel
Parameter Sets: (All)
Aliases:
Accepted values: Verbose, Debug, Information, Warning, Error, Fatal

Required: False
Position: Named
Default value: Verbose
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTemplate
The output template string for formatting log messages.
Defaults to '\[{Timestamp:HH:mm:ss} {Level:u3}\] {Message:lj}{NewLine}{ErrorRecord}{Exception}'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: [{Timestamp:HH:mm:ss} {Level:u3}] {Message:lj}{NewLine}{ErrorRecord}{Exception}
Accept pipeline input: False
Accept wildcard characters: False
```

### -FormatProvider
An optional format provider for customizing message formatting.

```yaml
Type: IFormatProvider
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LevelSwitch
An optional LoggingLevelSwitch to dynamically control the logging level.

```yaml
Type: LoggingLevelSwitch
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StandardErrorFromLevel
An optional log event level at which messages are written to standard error.

```yaml
Type: LogEventLevel
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Theme
An optional console theme for customizing log output appearance.

```yaml
Type: ConsoleTheme
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Formatter
An optional text formatter for custom log message formatting (used in 'Formatter' parameter set).

```yaml
Type: ITextFormatter
Parameter Sets: Formatter
Aliases:

Required: False
Position: Named
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

### Serilog.LoggerConfiguration
## NOTES
This function is part of the Kestrun logging infrastructure and should be used to enable console logging.

## RELATED LINKS
