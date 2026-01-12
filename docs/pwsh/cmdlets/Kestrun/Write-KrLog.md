---
layout: default
parent: PowerShell Cmdlets
nav_order: 214
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Write-KrLog
---

# Write-KrLog

## SYNOPSIS

Logs a message with the specified log level and parameters.

## SYNTAX

### LoggerName_MsgTemp (Default)

```powershell
Write-KrLog -Level <LogEventLevel> -Message <string> [-LoggerName <string>] [-Values <Object[]>]
 [-PassThru] [<CommonParameters>]
```

### LoggerManager_Exception

```powershell
Write-KrLog -Level <LogEventLevel> -Logger <ILogger> -Exception <Exception> [-Message <string>]
 [-Values <Object[]>] [-PassThru] [<CommonParameters>]
```

### LoggerManager_ErrRec

```powershell
Write-KrLog -Level <LogEventLevel> -Logger <ILogger> -ErrorRecord <ErrorRecord> [-Message <string>]
 [-Values <Object[]>] [-PassThru] [<CommonParameters>]
```

### LoggerManager_MsgTemp

```powershell
Write-KrLog -Level <LogEventLevel> -Message <string> -Logger <ILogger> [-Values <Object[]>]
 [-PassThru] [<CommonParameters>]
```

### LoggerName_Exception

```powershell
Write-KrLog -Level <LogEventLevel> -Exception <Exception> [-Message <string>] [-LoggerName <string>]
 [-Values <Object[]>] [-PassThru] [<CommonParameters>]
```

### LoggerName_ErrRec

```powershell
Write-KrLog -Level <LogEventLevel> -ErrorRecord <ErrorRecord> [-Message <string>]
 [-LoggerName <string>] [-Values <Object[]>] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function logs a message using the specified log level and parameters.
It supports various log levels and can output the formatted message to the pipeline if requested.

## EXAMPLES

### EXAMPLE 1

Write-KrLog -Level Information -Message 'Info log message
This example logs a simple information message.

### EXAMPLE 2

Write-KrLog -Level Warning -Message 'Processed {@Position} in {Elapsed:000} ms.' -Values $position, $elapsedMs
This example logs a warning message with formatted properties.

### EXAMPLE 3

Write-KrLog -Level Error -Message 'Error occurred' -Exception ([System.Exception]::new('Some exception'))
This example logs an error message with an exception.

## PARAMETERS

### -ErrorRecord

The error record related to the event.

```yaml
Type: System.Management.Automation.ErrorRecord
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: LoggerName_ErrRec
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: LoggerManager_ErrRec
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Exception

The exception related to the event.

```yaml
Type: System.Exception
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: LoggerName_Exception
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: LoggerManager_Exception
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Level

The log level to use for the log event.

```yaml
Type: Serilog.Events.LogEventLevel
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Logger

The Serilog logger instance to use for logging.
If not specified, the logger with the specified LoggerName or the default logger is used.
if both Logger and LoggerName are not specified, the default logger is used.
If neither is available, the message is broadcast to all known loggers (best-effort).

```yaml
Type: Serilog.ILogger
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: LoggerManager_Exception
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: LoggerManager_ErrRec
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: LoggerManager_MsgTemp
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LoggerName

The name of the logger to use.
If both LoggerName and Logger are not specified, the default logger is used.
If neither is available, the message is broadcast to all known loggers (best-effort).

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: LoggerName_Exception
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: LoggerName_ErrRec
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: LoggerName_MsgTemp
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Message

The message template describing the event.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: LoggerManager_Exception
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: LoggerManager_ErrRec
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: LoggerManager_MsgTemp
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: LoggerName_Exception
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: LoggerName_ErrRec
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: LoggerName_MsgTemp
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If specified, outputs the formatted message into the pipeline.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Values

Objects positionally formatted into the message template.

```yaml
Type: System.Object[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Message - Message template describing the event.

{{ Fill in the Description }}

## OUTPUTS

### None or Message populated with Properties into pipeline if PassThru specified.

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun logging framework and is used to log messages at various levels.
It can be used in scripts and modules that utilize Kestrun for logging.


## RELATED LINKS

{{ Fill in the related links here }}
