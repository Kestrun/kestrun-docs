---
layout: default
parent: PowerShell Cmdlets
nav_order: 11
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Add-KrCommonAccessLogMiddleware
---

# Add-KrCommonAccessLogMiddleware

## SYNOPSIS

Adds Apache style common access logging to the Kestrun server.

## SYNTAX

### Logger (Default)

```powershell
Add-KrCommonAccessLogMiddleware [-Server <KestrunHost>] [-Level <LogEventLevel>] [-Logger <ILogger>]
 [-ExcludeQueryString] [-ExcludeProtocol] [-IncludeElapsedMilliseconds] [-UseUtcTimestamp]
 [-TimestampFormat <string>] [-ClientAddressHeader <string>] [-PassThru] [<CommonParameters>]
```

### LoggerName

```powershell
Add-KrCommonAccessLogMiddleware -LoggerName <string> [-Server <KestrunHost>]
 [-Level <LogEventLevel>] [-ExcludeQueryString] [-ExcludeProtocol] [-IncludeElapsedMilliseconds]
 [-UseUtcTimestamp] [-TimestampFormat <string>] [-ClientAddressHeader <string>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Configures the Common Access Log middleware which emits request logs formatted like the
Apache HTTPD common/combined log.
The logs are written via the active Serilog pipeline so
any configured sinks receive the access log entries.

## EXAMPLES

### EXAMPLE 1

Add-KrCommonAccessLogMiddleware -LoggerName 'myLogger' -UseUtcTimestamp

Adds the Common Access Log middleware to the current Kestrun server using the named logger 'myLogger'
and configures it to log timestamps in UTC.

### EXAMPLE 2

$server = New-KrServer -Name "My Server" |
    Add-KrListener -Port 8080 -IPAddress ([IPAddress]::Any) |
    Add-KrCommonAccessLogMiddleware -LoggerName 'myLogger' -PassThru

Creates a new Kestrun server instance, adds a listener on port 8080 and the PowerShell runtime,
then adds the Common Access Log middleware using the named logger 'myLogger' and returns the
server instance in the $server variable.

## PARAMETERS

### -ClientAddressHeader

Optional HTTP header name that contains the original client IP (for example X-Forwarded-For).
When supplied the first value from the header is used instead of the socket address.

```yaml
Type: System.String
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

### -ExcludeProtocol

Indicates whether the request protocol (for example HTTP/1.1) should be excluded from the logged request line.
Defaults to $false.

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

### -ExcludeQueryString

Indicates whether the request query string should be excluded from the logged request line.
Defaults to $true.

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

### -IncludeElapsedMilliseconds

Appends the total request duration in milliseconds to the access log entry when set to $true.
Defaults to $false.

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

### -Level

The Serilog log level used when emitting access log entries.
Defaults to Information.

```yaml
Type: Serilog.Events.LogEventLevel
DefaultValue: Information
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

### -Logger

The Serilog logger instance that should receive the access log entries.
When not supplied the
middleware uses the application's default logger from dependency injection.
This parameter is mutually exclusive with LoggerName.

```yaml
Type: Serilog.ILogger
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Logger
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LoggerName

The name of a registered logger that should receive the access log entries.
When supplied
the logger with this name is used instead of the default application logger.
This parameter is mutually exclusive with Logger.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: LoggerName
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

Returns the server instance to enable fluent pipelines when specified.

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

### -Server

The target Kestrun server instance.
When omitted the current server is resolved automatically.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TimestampFormat

Optional custom timestamp format string.
When omitted the Apache default "dd/MMM/yyyy:HH:mm:ss zzz" is used.

```yaml
Type: System.String
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

### -UseUtcTimestamp

When specified the timestamp in the log entry is written in UTC instead of local server time.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
