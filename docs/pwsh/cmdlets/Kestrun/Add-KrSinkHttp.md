---
layout: default
parent: PowerShell Cmdlets
nav_order: 68
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Add-KrSinkHttp
---

# Add-KrSinkHttp

## SYNOPSIS

Adds an HTTP sink to the Serilog logger configuration.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrSinkHttp [-LoggerConfig] <LoggerConfiguration> [-RequestUri] <string>
 [[-BatchPostingLimit] <int>] [[-QueueLimit] <int>] [[-Period] <timespan>]
 [[-Formatter] <ITextFormatter>] [[-BatchFormatter] <IBatchFormatter>]
 [[-RestrictedToMinimumLevel] <LogEventLevel>] [[-HttpClient] <IHttpClient>]
 [[-Configuration] <IConfiguration>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Add-SinkHttp function configures a logging sink that sends log events to a specified HTTP endpoint.
It allows customization of the request URI, batch posting limit, queue limit, period, formatter, batch formatter, minimum log level, HTTP client, and configuration.

## EXAMPLES

### EXAMPLE 1

Add-SinkHttp -LoggerConfig $config -RequestUri "http://example.com/log" -BatchPostingLimit 500 -QueueLimit 100 -Period 1 -Formatter $formatter -BatchFormatter $batchFormatter
Adds an HTTP sink to the logging system that sends log events to "http://example.com/log" with specified batch settings and formatters.

### EXAMPLE 2

Add-SinkHttp -LoggerConfig $config -RequestUri "http://example.com/log"
Adds an HTTP sink to the logging system that sends log events to "http://example.com/log" with default settings.

## PARAMETERS

### -BatchFormatter

The formatter to use for the entire batch of log events.
Defaults to the JSON formatter.

```yaml
Type: Serilog.Sinks.Http.IBatchFormatter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -BatchPostingLimit

The maximum number of log events to batch together before sending.
Defaults to 1000.

```yaml
Type: System.Int32
DefaultValue: 1000
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Configuration

The configuration to use for the HTTP sink.
Defaults to the global configuration.

```yaml
Type: Microsoft.Extensions.Configuration.IConfiguration
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 9
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Formatter

The formatter to use for individual log events.
Defaults to the JSON formatter.

```yaml
Type: Serilog.Formatting.ITextFormatter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -HttpClient

The HTTP client to use for sending log events.
Defaults to a new instance of HttpClient.

```yaml
Type: Serilog.Sinks.Http.IHttpClient
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 8
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LoggerConfig

The Serilog LoggerConfiguration object to which the HTTP sink will be added.

```yaml
Type: Serilog.LoggerConfiguration
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Period

The time interval at which to send batched log events.
Defaults to 2 seconds.

```yaml
Type: System.Nullable`1[System.TimeSpan]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -QueueLimit

The maximum number of log events to keep in the queue before dropping new events.
Defaults to unlimited.

```yaml
Type: System.Nullable`1[System.Int32]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RequestUri

The URI of the HTTP endpoint to which log events will be sent.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RestrictedToMinimumLevel

The minimum log level required for events to be sent to the HTTP sink.
Defaults to Verbose.

```yaml
Type: Serilog.Events.LogEventLevel
DefaultValue: Verbose
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
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

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## OUTPUTS

### Serilog.LoggerConfiguration

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun logging infrastructure and should be used to enable HTTP logging.


## RELATED LINKS

{{ Fill in the related links here }}
