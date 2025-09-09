---
layout: default
parent: PowerShell Cmdlets
title: Write-KrLog
nav_order: 115
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Write-KrLog

## SYNOPSIS
Logs a message with the specified log level and parameters.

## SYNTAX

### LoggerName_MsgTemp (Default)
```
Write-KrLog -Level <LogEventLevel> -Message <String> [-LoggerName <String>] [-Properties <Object[]>]
 [-PassThru] [<CommonParameters>]
```

### LoggerManager_Exception
```
Write-KrLog -Level <LogEventLevel> [-Message <String>] -Logger <Logger> -Exception <Exception>
 [-Properties <Object[]>] [-PassThru] [<CommonParameters>]
```

### LoggerManager_ErrRec
```
Write-KrLog -Level <LogEventLevel> [-Message <String>] -Logger <Logger> -ErrorRecord <ErrorRecord>
 [-Properties <Object[]>] [-PassThru] [<CommonParameters>]
```

### LoggerManager_MsgTemp
```
Write-KrLog -Level <LogEventLevel> -Message <String> -Logger <Logger> [-Properties <Object[]>] [-PassThru]
 [<CommonParameters>]
```

### LoggerName_Exception
```
Write-KrLog -Level <LogEventLevel> [-Message <String>] [-LoggerName <String>] -Exception <Exception>
 [-Properties <Object[]>] [-PassThru] [<CommonParameters>]
```

### LoggerName_ErrRec
```
Write-KrLog -Level <LogEventLevel> [-Message <String>] [-LoggerName <String>] -ErrorRecord <ErrorRecord>
 [-Properties <Object[]>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This function logs a message using the specified log level and parameters.
It supports various log levels and can output the formatted message to the pipeline if requested.

## EXAMPLES

### EXAMPLE 1
```powershell
Write-KrLog -Level Information -Message 'Info log message
This example logs a simple information message.
```

### EXAMPLE 2
```powershell
Write-KrLog -Level Warning -Message 'Processed {@Position} in {Elapsed:000} ms.' -Properties $position, $elapsedMs
This example logs a warning message with formatted properties.
```

### EXAMPLE 3
```powershell
Write-KrLog -Level Error -Message 'Error occurred' -Exception ([System.Exception]::new('Some exception'))
This example logs an error message with an exception.
```

## PARAMETERS

### -Level
The log level to use for the log event.

```yaml
Type: LogEventLevel
Parameter Sets: (All)
Aliases:
Accepted values: Verbose, Debug, Information, Warning, Error, Fatal

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Message
The message template describing the event.

```yaml
Type: String
Parameter Sets: LoggerName_MsgTemp, LoggerManager_MsgTemp
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: LoggerManager_Exception, LoggerManager_ErrRec, LoggerName_Exception, LoggerName_ErrRec
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoggerName
The name of the logger to use.
If not specified, the default logger is used.

```yaml
Type: String
Parameter Sets: LoggerName_MsgTemp, LoggerName_Exception, LoggerName_ErrRec
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Logger
The Serilog logger instance to use for logging.
If not specified, the logger with the specified LoggerName or the default logger is used.

```yaml
Type: Logger
Parameter Sets: LoggerManager_Exception, LoggerManager_ErrRec, LoggerManager_MsgTemp
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Exception
The exception related to the event.

```yaml
Type: Exception
Parameter Sets: LoggerManager_Exception, LoggerName_Exception
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ErrorRecord
The error record related to the event.

```yaml
Type: ErrorRecord
Parameter Sets: LoggerManager_ErrRec, LoggerName_ErrRec
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Properties
Objects positionally formatted into the message template.

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
If specified, outputs the formatted message into the pipeline.

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

### Message - Message template describing the event.
## OUTPUTS

### None or Message populated with Properties into pipeline if PassThru specified.
## NOTES
This function is part of the Kestrun logging framework and is used to log messages at various levels.
It can be used in scripts and modules that utilize Kestrun for logging.

## RELATED LINKS
