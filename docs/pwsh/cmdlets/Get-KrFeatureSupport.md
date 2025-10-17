---
layout: default
parent: PowerShell Cmdlets
title: Get-KrFeatureSupport
nav_order: 78
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrFeatureSupport

## SYNOPSIS
Gets the support status of known features in the current Kestrun runtime environment.

## SYNTAX

### Full (Default)
```
Get-KrFeatureSupport [<CommonParameters>]
```

### Capabilities
```
Get-KrFeatureSupport [-Capabilities] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet retrieves the support status of all known features defined in the Kestrun runtime.
It provides information about whether each feature is supported based on the runtime version and configuration.

## EXAMPLES

### EXAMPLE 1
```powershell
Get-KrFeatureSupport
This example retrieves the support status of all known features in the current Kestrun runtime environment.
The output will be a collection of objects, each representing a feature and its support status.
```

## PARAMETERS

### -Capabilities
If specified, only the feature name and support status will be returned, omitting the built TFM.

```yaml
Type: SwitchParameter
Parameter Sets: Capabilities
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

## OUTPUTS

### A custom object with the following properties:
### - Feature: The name of the feature.
### - BuiltTFM: The target framework version that Kestrun was built against.
### - Supported: A boolean indicating whether the feature is supported in the current runtime environment.
## NOTES

## RELATED LINKS
