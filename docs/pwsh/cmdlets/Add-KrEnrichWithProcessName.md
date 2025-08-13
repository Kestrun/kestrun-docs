---
layout: default
parent: PowerShell Cmdlets
title: Add-KrEnrichWithProcessName
nav_order: 14
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.defaultfilesoptions?view=aspnetcore-8.0
schema: 2.0.0
---

# Add-KrEnrichWithProcessName

## SYNOPSIS
Adds the process name to the log context.

## SYNTAX

```
Add-KrEnrichWithProcessName [-loggerConfig] <LoggerConfiguration> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds the process name to the log context, allowing it to be included in log events.

## EXAMPLES

### EXAMPLE 1
```
New-KrLogger | Add-KrEnrichWithProcessName | Register-KrLogger
```

## PARAMETERS

### -loggerConfig
Instance of LoggerConfiguration

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

### None
## OUTPUTS

### LoggerConfiguration object allowing method chaining
## NOTES

## RELATED LINKS
