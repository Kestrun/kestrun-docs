---
layout: default
parent: PowerShell Cmdlets
title: Write-KrDebugLog
nav_order: 99
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Write-KrDebugLog

## SYNOPSIS
Write a debug log message using the Kestrun logging framework.

## SYNTAX

### MsgTemp (Default)
```
Write-KrDebugLog [-Message] <String> [-Name <String>] [-Exception <Exception>] [-Values <Object[]>] [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### ErrRec
```
Write-KrDebugLog [[-Message] <String>] [-Name <String>] [-Exception <Exception>] -ErrorRecord <ErrorRecord>
 [-Values <Object[]>] [-PassThru] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
This function writes a debug log message to the specified logger or the default logger.

## EXAMPLES

### EXAMPLE 1
```
Write-KrDebugLog -Message "Debug message with properties: {0}, {1}" -Values "value1", "value2"
This example logs a debug message with two properties.
```

### EXAMPLE 2
```
Write-KrDebugLog -Message "An error occurred" -Exception $exception -Logger $myLogger
This example logs a debug message with an exception using a specific logger.
```

### EXAMPLE 3
```
Write-KrDebugLog -Message "Fatal error" -ErrorRecord $errorRecord
This example logs a fatal error message using an error record.
```

## PARAMETERS

### -Message
The message template to log.
This can include placeholders for properties.

```yaml
Type: String
Parameter Sets: MsgTemp
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: ErrRec
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
{{ Fill Name Description }}

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

### -Exception
An optional exception to log along with the message.

```yaml
Type: Exception
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ErrorRecord
An optional error record to log.
If provided, it will be logged as a fatal error.

```yaml
Type: ErrorRecord
Parameter Sets: ErrRec
Aliases: ER

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Values
An array of property values to include in the log message.

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
If specified, the function will return the logger object after logging.

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

## OUTPUTS

## NOTES
This function is part of the Kestrun logging framework and is used to log debug messages.
It can be used in scripts and modules that utilize Kestrun for logging.

## RELATED LINKS
