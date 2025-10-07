---
layout: default
parent: PowerShell Cmdlets
title: Add-KrCommonAccessLogMiddleware
nav_order: 8
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrCommonAccessLogMiddleware

## SYNOPSIS
Adds Apache style common access logging to the Kestrun server.

## SYNTAX

### Logger (Default)
```
Add-KrCommonAccessLogMiddleware [-Server <KestrunHost>] [-Level <LogEventLevel>] [-Logger <ILogger>]
 [-ExcludeQueryString] [-ExcludeProtocol] [-IncludeElapsedMilliseconds] [-UseUtcTimestamp]
 [-TimestampFormat <String>] [-ClientAddressHeader <String>] [-PassThru] [<CommonParameters>]
```

### LoggerName
```
Add-KrCommonAccessLogMiddleware [-Server <KestrunHost>] [-Level <LogEventLevel>] -LoggerName <String>
 [-ExcludeQueryString] [-ExcludeProtocol] [-IncludeElapsedMilliseconds] [-UseUtcTimestamp]
 [-TimestampFormat <String>] [-ClientAddressHeader <String>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Configures the Common Access Log middleware which emits request logs formatted like the
Apache HTTPD common/combined log.
The logs are written via the active Serilog pipeline so
any configured sinks receive the access log entries.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrCommonAccessLogMiddleware -LoggerName 'myLogger' -UseUtcTimestamp
```

Adds the Common Access Log middleware to the current Kestrun server using the named logger 'myLogger'
and configures it to log timestamps in UTC.

### EXAMPLE 2
```powershell
$server = New-KrServer -Name "My Server" |
    Add-KrListener -Port 8080 -IPAddress ([IPAddress]::Any) |
    Add-KrCommonAccessLogMiddleware -LoggerName 'myLogger' -PassThru
```

Creates a new Kestrun server instance, adds a listener on port 8080 and the PowerShell runtime,
then adds the Common Access Log middleware using the named logger 'myLogger' and returns the
server instance in the $server variable.

## PARAMETERS

### -Server
The target Kestrun server instance.
When omitted the current server is resolved automatically.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Level
The Serilog log level used when emitting access log entries.
Defaults to Information.

```yaml
Type: LogEventLevel
Parameter Sets: (All)
Aliases:
Accepted values: Verbose, Debug, Information, Warning, Error, Fatal

Required: False
Position: Named
Default value: Information
Accept pipeline input: False
Accept wildcard characters: False
```

### -Logger
The Serilog logger instance that should receive the access log entries.
When not supplied the
middleware uses the application's default logger from dependency injection.
This parameter is mutually exclusive with LoggerName.

```yaml
Type: ILogger
Parameter Sets: Logger
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoggerName
The name of a registered logger that should receive the access log entries.
When supplied
the logger with this name is used instead of the default application logger.
This parameter is mutually exclusive with Logger.

```yaml
Type: String
Parameter Sets: LoggerName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeQueryString
Indicates whether the request query string should be excluded from the logged request line.
Defaults to $true.

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

### -ExcludeProtocol
Indicates whether the request protocol (for example HTTP/1.1) should be excluded from the logged request line.
Defaults to $false.

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

### -IncludeElapsedMilliseconds
Appends the total request duration in milliseconds to the access log entry when set to $true.
Defaults to $false.

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

### -UseUtcTimestamp
When specified the timestamp in the log entry is written in UTC instead of local server time.

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

### -TimestampFormat
Optional custom timestamp format string.
When omitted the Apache default "dd/MMM/yyyy:HH:mm:ss zzz" is used.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClientAddressHeader
Optional HTTP header name that contains the original client IP (for example X-Forwarded-For).
When supplied the first value from the header is used instead of the socket address.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Returns the server instance to enable fluent pipelines when specified.

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

## OUTPUTS

### Kestrun.Hosting.KestrunHost
## NOTES

## RELATED LINKS
