---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Get-KrDefaultLogger

## SYNOPSIS
Gets the logger for the current session.

## SYNTAX

```
Get-KrDefaultLogger [-Name] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Gets the specified logger as the current logger for the session.

## EXAMPLES

### EXAMPLE 1
```
$logger = Get-KrDefaultLogger
Retrieves the current default logger instance for the session.
```

### EXAMPLE 2
```
$logger = Get-KrDefaultLogger | Write-Host
Retrieves the current default logger instance and outputs it to the console.
```

## PARAMETERS

### -Name
The name of the logger to get as the default logger.

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

### Returns the current default logger instance for the session.
### When the Name parameter is specified, it returns the name of the default logger.
### When the Name parameter is not specified, it returns the default logger instance.
## NOTES
This function is part of the Kestrun logging framework and is used to retrieve the current default logger instance for the session.
It can be used in scripts and modules that utilize Kestrun for logging.

## RELATED LINKS
