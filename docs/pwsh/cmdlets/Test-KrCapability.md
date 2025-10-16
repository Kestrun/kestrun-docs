---
layout: default
parent: PowerShell Cmdlets
title: Test-KrCapability
nav_order: 150
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Test-KrCapability

## SYNOPSIS
Check if a specific feature is supported in the current Kestrun runtime environment.

## SYNTAX

```
Test-KrCapability [-Feature] <String> [<CommonParameters>]
```

## DESCRIPTION
This cmdlet checks if a given feature, identified by its name, is supported in the current Kestrun runtime environment.
It can be used to determine if certain capabilities are available based on the runtime version and configuration.

## EXAMPLES

### EXAMPLE 1
```powershell
Test-KrCapability -Feature "Http3"
This example checks if the Http3 feature is supported in the current Kestrun runtime environment.
```

### EXAMPLE 2
```powershell
Test-KrCapability -Feature "SomeOtherFeature"
This example checks if a feature named "SomeOtherFeature" is supported, using a raw string.
```

## PARAMETERS

### -Feature
The name of the feature to check.
This can be either the name of a KnownFeature enum value or a raw string representing the feature.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Boolean
## NOTES

## RELATED LINKS
