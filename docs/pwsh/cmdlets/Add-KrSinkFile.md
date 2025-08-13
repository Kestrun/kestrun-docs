---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://github.com/Kestrun/Kestrun
schema: 2.0.0
---

# Add-KrSinkFile

## SYNOPSIS
Adds a file-based logging sink to the logging system.

## SYNTAX

### Default (Default)
```
Add-KrSinkFile -LoggerConfig <LoggerConfiguration> -Path <String> [-RestrictedToMinimumLevel <LogEventLevel>]
 [-OutputTemplate <String>] [-FormatProvider <IFormatProvider>] [-FileSizeLimitBytes <Int64>]
 [-LevelSwitch <LoggingLevelSwitch>] [-Buffered] [-Shared] [-FlushToDiskInterval <TimeSpan>]
 [-RollingInterval <RollingInterval>] [-RollOnFileSizeLimit] [-RetainedFileCountLimit <Int32>]
 [-Encoding <Encoding>] [-Hooks <FileLifecycleHooks>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### Formatter
```
Add-KrSinkFile -LoggerConfig <LoggerConfiguration> -Path <String> -Formatter <ITextFormatter>
 [-RestrictedToMinimumLevel <LogEventLevel>] [-OutputTemplate <String>] [-FileSizeLimitBytes <Int64>]
 [-LevelSwitch <LoggingLevelSwitch>] [-Buffered] [-Shared] [-FlushToDiskInterval <TimeSpan>]
 [-RollingInterval <RollingInterval>] [-RollOnFileSizeLimit] [-RetainedFileCountLimit <Int32>]
 [-Encoding <Encoding>] [-Hooks <FileLifecycleHooks>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
The Add-KrSinkFile function configures a logging sink that writes log events to a specified file.
It supports various options for file management, such as rolling intervals, file size limits, and custom output templates.

## EXAMPLES

### EXAMPLE 1
```
Add-KrSinkFile -LoggerConfig $config -Path "C:\Logs\app-.txt"
Adds a file sink to the logging system that writes log events to "C:\Logs\app-.txt". The file name will roll over based on the specified rolling interval.
```

### EXAMPLE 2
```
Add-KrSinkFile -LoggerConfig $config -Path "C:\Logs\app-.txt" -Formatter $formatter
Adds a file sink to the logging system that writes log events to "C:\Logs\app-.txt" using the specified text formatter.
```

### EXAMPLE 3
```
Add-KrSinkFile -LoggerConfig $config -Path "C:\Logs\app-.txt" -RollingInterval Day -RetainedFileCountLimit 7
Adds a file sink that rolls over daily and retains the last 7 log files.
```

## PARAMETERS

### -LoggerConfig
The Serilog LoggerConfiguration object to which the file sink will be added.

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

### -Path
The file path where log events will be written.
This can include rolling file names.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Formatter
An optional text formatter for custom log message formatting.

```yaml
Type: ITextFormatter
Parameter Sets: Formatter
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestrictedToMinimumLevel
The minimum log event level required to write to the file sink.
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
Defaults to '{Timestamp:yyyy-MM-dd HH:mm:ss.fff zzz} \[{Level:u3}\] {Message:lj}{NewLine}{ErrorRecord}{Exception}'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: {Timestamp:yyyy-MM-dd HH:mm:ss.fff zzz} [{Level:u3}] {Message:lj}{NewLine}{Exception}
Accept pipeline input: False
Accept wildcard characters: False
```

### -FormatProvider
An optional format provider for customizing message formatting.

```yaml
Type: IFormatProvider
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FileSizeLimitBytes
The maximum size of the log file in bytes before it rolls over.
Defaults to 1 GB.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 1073741824
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

### -Buffered
If set, log events are buffered before being written to the file.
Defaults to false.

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

### -Shared
If set, allows multiple processes to write to the same log file.
Defaults to false.

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

### -FlushToDiskInterval
The interval at which the log file is flushed to disk.
Defaults to null (no periodic flushing).

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RollingInterval
The rolling interval for the log file.
Defaults to Infinite (no rolling).

```yaml
Type: RollingInterval
Parameter Sets: (All)
Aliases:
Accepted values: Infinite, Year, Month, Day, Hour, Minute

Required: False
Position: Named
Default value: Infinite
Accept pipeline input: False
Accept wildcard characters: False
```

### -RollOnFileSizeLimit
If set, the log file will roll over when it reaches the size limit, regardless of the rolling interval.
Defaults to false.

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

### -RetainedFileCountLimit
The maximum number of rolled log files to retain.
Defaults to 31.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 31
Accept pipeline input: False
Accept wildcard characters: False
```

### -Encoding
The encoding used for the log file.
Defaults to null (system default).

```yaml
Type: Encoding
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Hooks
Lifecycle hooks for managing the log file lifecycle.
Defaults to null (no hooks).

```yaml
Type: FileLifecycleHooks
Parameter Sets: (All)
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
This function is part of the Kestrun logging infrastructure and should be used to enable file	 logging.

## RELATED LINKS
