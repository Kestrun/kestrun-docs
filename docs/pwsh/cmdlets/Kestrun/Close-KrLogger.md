---
layout: default
parent: PowerShell Cmdlets
nav_order: 83
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Close-KrLogger
---

# Close-KrLogger

## SYNOPSIS

Closes the logger and flushes all logs.

## SYNTAX

### AllLogs (Default)

```powershell
Close-KrLogger [<CommonParameters>]
```

### Logger

```powershell
Close-KrLogger [-Logger <ILogger[]>] [<CommonParameters>]
```

### LoggerName

```powershell
Close-KrLogger [-LoggerName <string[]>] [<CommonParameters>]
```

### Default

```powershell
Close-KrLogger [-DefaultLogger] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Closes the logger and flushes all logs.
If no logger is specified, it will close the default logger.

## EXAMPLES

### EXAMPLE 1

Close-KrLogger -Logger $myLogger
Closes the specified logger and flushes all logs.

### EXAMPLE 2

Close-KrLogger
Closes all active loggers and flushes any remaining logs.

### EXAMPLE 3

Close-KrLogger -LoggerName 'MyLogger'
Closes the logger with the specified name and any remaining logs.

### EXAMPLE 4

Close-KrLogger -DefaultLogger
Closes the default logger and flushes any remaining logs.

## PARAMETERS

### -DefaultLogger

If specified, closes the default logger.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Default
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Logger

Instance of Serilog.Logger to close.
If not specified, the default logger will be closed.

```yaml
Type: Serilog.ILogger[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Logger
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LoggerName

Name of the logger to close.
If specified, the logger with this name will be closed

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: LoggerName
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

### Instance of Serilog.Logger

{{ Fill in the Description }}

### Serilog.ILogger[]

{{ Fill in the Description }}

## OUTPUTS

### None. This cmdlet does not return any output.

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
