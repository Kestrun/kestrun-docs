---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/kestrun.authentication.claimpolicybuilder
schema: 2.0.0
---

# New-KrLogger

## SYNOPSIS
Creates a new instance of Serilog.LoggerConfiguration.

## SYNTAX

```
New-KrLogger [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates a new instance of Serilog.LoggerConfiguration that can be used to configure logging sinks and enrichers.

## EXAMPLES

### EXAMPLE 1
```
$loggerConfig = New-KrLogger
Creates a new logger configuration instance that can be used to add sinks and enrichers.
```

### EXAMPLE 2
```
$loggerConfig = New-KrLogger | Add-KrSinkConsole | Add-KrEnrichWithProperty -Name 'ScriptName' -Value 'Test'
Creates a new logger configuration instance, adds a console sink, and enriches logs with a property.
```

## PARAMETERS

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
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

### None. You cannot pipe objects to New-KrLogger.
## OUTPUTS

### Instance of Serilog.LoggerConfiguration.
## NOTES

## RELATED LINKS
