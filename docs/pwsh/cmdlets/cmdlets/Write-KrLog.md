---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytokenhandler?view=azure-dotnet
schema: 2.0.0
---

# Write-KrLog

## SYNOPSIS
Logs a message with the specified log level and parameters.

## SYNTAX

```
Write-KrLog [-LogLevel] <LogEventLevel> [-Message] <String> [[-Name] <String>] [[-Exception] <Exception>]
 [[-ErrorRecord] <ErrorRecord>] [[-Values] <Object[]>] [-PassThru] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
This function logs a message using the specified log level and parameters.
It supports various log levels and can output the formatted message to the pipeline if requested.

## EXAMPLES

### EXAMPLE 1
```
Write-KrLog -LogLevel Information -Message 'Info log message
This example logs a simple information message.
```

### EXAMPLE 2
```
Write-KrLog -LogLevel Warning -Message 'Processed {@Position} in {Elapsed:000} ms.' -Values $position, $elapsedMs
This example logs a warning message with formatted properties.
```

### EXAMPLE 3
```
Write-KrLog -LogLevel Error -Message 'Error occurred' -Exception ([System.Exception]::new('Some exception'))
This example logs an error message with an exception.
```

## PARAMETERS

### -LogLevel
The log level to use for the log event.

```yaml
Type: LogEventLevel
Parameter Sets: (All)
Aliases:
Accepted values: Verbose, Debug, Information, Warning, Error, Fatal

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Message
The message template describing the event.

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

### -Name
The name of the logger to use.
If not specified, the default logger is used.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Exception
The exception related to the event.

```yaml
Type: Exception
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ErrorRecord
The error record related to the event.

```yaml
Type: ErrorRecord
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Values
Objects positionally formatted into the message template.

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
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

### Message - Message template describing the event.
## OUTPUTS

### None or Message populated with Values into pipeline if PassThru specified.
## NOTES
This function is part of the Kestrun logging framework and is used to log messages at various levels.
It can be used in scripts and modules that utilize Kestrun for logging.

## RELATED LINKS
