---
layout: default
parent: PowerShell Cmdlets
title: Add-KrEnrichProperty
nav_order: 21
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrEnrichProperty

## SYNOPSIS
Enriches log events with custom property.

## SYNTAX

```
Add-KrEnrichProperty [-LoggerConfig] <LoggerConfiguration> [-Name] <String> [-Value] <Object>
 [-DestructureObjects] [<CommonParameters>]
```

## DESCRIPTION
Enriches log events with custom property.
For example script name.

## EXAMPLES

### EXAMPLE 1
```powershell
New-KrLogger | Add-KrEnrichProperty -Name ScriptName -Value 'Test' | Add-KrSinkConsole | Register-KrLogger
```

## PARAMETERS

### -LoggerConfig
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

### -Name
The name of the property

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

### -Value
The value of the property

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DestructureObjects
If present, and the value is a non-primitive, non-array type, then the value will be converted to a structure; otherwise, unknown types will be converted to scalars, which are generally stored as strings.

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
