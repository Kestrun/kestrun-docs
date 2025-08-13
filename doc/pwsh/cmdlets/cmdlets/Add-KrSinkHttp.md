---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://github.com/Kestrun/Kestrun
schema: 2.0.0
---

# Add-KrSinkHttp

## SYNOPSIS
Adds an HTTP sink to the Serilog logger configuration.

## SYNTAX

```
Add-KrSinkHttp [-LoggerConfig] <LoggerConfiguration> [-RequestUri] <String> [[-BatchPostingLimit] <Int32>]
 [[-QueueLimit] <Int32>] [[-Period] <TimeSpan>] [[-Formatter] <ITextFormatter>]
 [[-BatchFormatter] <IBatchFormatter>] [[-RestrictedToMinimumLevel] <LogEventLevel>]
 [[-HttpClient] <IHttpClient>] [[-Configuration] <IConfiguration>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
The Add-SinkHttp function configures a logging sink that sends log events to a specified HTTP endpoint.
It allows customization of the request URI, batch posting limit, queue limit, period, formatter, batch formatter, minimum log level, HTTP client, and configuration.

## EXAMPLES

### EXAMPLE 1
```
Add-SinkHttp -LoggerConfig $config -RequestUri "http://example.com/log" -BatchPostingLimit 500 -QueueLimit 100 -Period 1 -Formatter $formatter -BatchFormatter $batchFormatter
Adds an HTTP sink to the logging system that sends log events to "http://example.com/log" with specified batch settings and formatters.
```

### EXAMPLE 2
```
Add-SinkHttp -LoggerConfig $config -RequestUri "http://example.com/log"
Adds an HTTP sink to the logging system that sends log events to "http://example.com/log" with default settings.
```

## PARAMETERS

### -LoggerConfig
The Serilog LoggerConfiguration object to which the HTTP sink will be added.

```yaml
Type: LoggerConfiguration
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -RequestUri
The URI of the HTTP endpoint to which log events will be sent.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BatchPostingLimit
The maximum number of log events to batch together before sending.
Defaults to 1000.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 1000
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueueLimit
The maximum number of log events to keep in the queue before dropping new events.
Defaults to unlimited.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Period
The time interval at which to send batched log events.
Defaults to 2 seconds.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Formatter
The formatter to use for individual log events.
Defaults to the JSON formatter.

```yaml
Type: ITextFormatter
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BatchFormatter
The formatter to use for the entire batch of log events.
Defaults to the JSON formatter.

```yaml
Type: IBatchFormatter
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestrictedToMinimumLevel
The minimum log level required for events to be sent to the HTTP sink.
Defaults to Verbose.

```yaml
Type: LogEventLevel
Parameter Sets: (All)
Aliases:
Accepted values: Verbose, Debug, Information, Warning, Error, Fatal

Required: False
Position: 8
Default value: Verbose
Accept pipeline input: False
Accept wildcard characters: False
```

### -HttpClient
The HTTP client to use for sending log events.
Defaults to a new instance of HttpClient.

```yaml
Type: IHttpClient
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Configuration
The configuration to use for the HTTP sink.
Defaults to the global configuration.

```yaml
Type: IConfiguration
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
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
This function is part of the Kestrun logging infrastructure and should be used to enable HTTP logging.

## RELATED LINKS
