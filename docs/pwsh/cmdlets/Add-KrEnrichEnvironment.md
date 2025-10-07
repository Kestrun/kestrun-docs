---
layout: default
parent: PowerShell Cmdlets
title: Add-KrEnrichEnvironment
nav_order: 13
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrEnrichEnvironment

## SYNOPSIS
Adds environment information to the log context.

## SYNTAX

```
Add-KrEnrichEnvironment [-loggerConfig] <LoggerConfiguration> [-UserName] [-MachineName] [<CommonParameters>]
```

## DESCRIPTION
Adds environment information such as UserName and MachineName to the log context, allowing it to be included in log events.

## EXAMPLES

### EXAMPLE 1
```powershell
New-KrLogger | Add-KrEnrichEnvironment | Register-KrLogger
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

### -UserName
If specified, enriches logs with the current user's name.

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

### -MachineName
If specified, enriches logs with the current machine's name.

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

### None
## OUTPUTS

### LoggerConfiguration object allowing method chaining
## NOTES

## RELATED LINKS
