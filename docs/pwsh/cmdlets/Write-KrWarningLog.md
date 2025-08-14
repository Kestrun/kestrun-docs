---
layout: default
parent: PowerShell Cmdlets
title: Write-KrWarningLog
nav_order: 113
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Write-KrWarningLog

## SYNOPSIS
Writes Warning log message

## SYNTAX

### MsgTemp (Default)
```
Write-KrWarningLog [-Message] <String> [-Name <String>] [-Exception <Exception>] [-Values <Object[]>]
 [-PassThru] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### ErrRec
```
Write-KrWarningLog [[-Message] <String>] [-Name <String>] [-Exception <Exception>] -ErrorRecord <ErrorRecord>
 [-Values <Object[]>] [-PassThru] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Write a log event with the Warning level.

## EXAMPLES

### EXAMPLE 1
```
Write-KrWarningLog 'Warning log message'
This example logs a simple warning message.
```

### EXAMPLE 2
```
Write-KrWarningLog -Message 'Processed {@Position} in {Elapsed:000} ms.' -Values $position, $elapsedMs
This example logs a warning message with formatted properties.
```

### EXAMPLE 3
```
Write-KrWarningLog 'Error occurred' -Exception ([System.Exception]::new('Some exception'))
This example logs a warning message with an exception.
```

## PARAMETERS

### -Message
Message template describing the event.

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
Name of the logger to use.
If not specified, the default logger is used.

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
Exception related to the event.

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
ErrorRecord related to the event.

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
Outputs Message populated with Values into pipeline.

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
This function is part of the Kestrun logging framework and is used to log warning messages.
It can be used in scripts and modules that utilize Kestrun for logging.

## RELATED LINKS
