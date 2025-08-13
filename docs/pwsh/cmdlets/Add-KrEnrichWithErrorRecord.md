---
layout: default
parent: PowerShell Cmdlets
title: Add-KrEnrichWithErrorRecord
nav_order: 11
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.defaultfilesoptions?view=aspnetcore-8.0
schema: 2.0.0
---

# Add-KrEnrichWithErrorRecord

## SYNOPSIS
Enriches log events with ErrorRecord property if available.

## SYNTAX

```
Add-KrEnrichWithErrorRecord [-LoggerConfig] <LoggerConfiguration> [-DestructureObjects]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Enriches log events with ErrorRecord property if available.
Use -ErrorRecord parameter on Write-*Log cmdlets to add ErrorRecord.

## EXAMPLES

### EXAMPLE 1
```
New-KrLogger | Add-KrEnrichWithErrorRecord | Add-KrSinkPowerShell | Register-KrLogger
```

## PARAMETERS

### -LoggerConfig
Instance of LoggerConfiguration that is already setup.

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

### -DestructureObjects
If true, and the value is a non-primitive, non-array type, then the value will be converted to a structure; otherwise, unknown types will be converted to scalars, which are generally stored as strings.

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

### Instance of LoggerConfiguration
## OUTPUTS

### Instance of LoggerConfiguration
## NOTES

## RELATED LINKS
