---
layout: default
parent: PowerShell Cmdlets
title: Get-KrRequestRouteParam
nav_order: 86
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrRequestRouteParam

## SYNOPSIS
Retrieves a request route value from the HTTP request.

## SYNTAX

### default (Default)
```
Get-KrRequestRouteParam -Name <String> [-ThrowIfMissing] [<CommonParameters>]
```

### Int
```
Get-KrRequestRouteParam -Name <String> [-AsInt] [-ThrowIfMissing] [<CommonParameters>]
```

### Bool
```
Get-KrRequestRouteParam -Name <String> [-AsBool] [-ThrowIfMissing] [<CommonParameters>]
```

### Double
```
Get-KrRequestRouteParam -Name <String> [-AsDouble] [-ThrowIfMissing] [<CommonParameters>]
```

### String
```
Get-KrRequestRouteParam -Name <String> [-AsString] [-ThrowIfMissing] [<CommonParameters>]
```

## DESCRIPTION
This function accesses the current HTTP request context and retrieves the value
of the specified request route value by name.

## EXAMPLES

### EXAMPLE 1
```powershell
$value = Get-KrRequestRouteParam -Name "param1"
Retrieves the value of the request route value "param1" from the HTTP request.
```

### EXAMPLE 2
```powershell
$id = Get-KrRequestRouteParam -Name "id" -AsInt -ThrowIfMissing
Retrieves the value of the route parameter "id" as an integer, throwing an error if it's missing.
```

### EXAMPLE 3
```powershell
$flag = Get-KrRequestRouteParam -Name "flag" -AsBool
Retrieves the value of the route parameter "flag" as a boolean.
```

## PARAMETERS

### -Name
The name of the request route value to retrieve from the HTTP request.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AsInt
If specified, converts the route value to an integer.

```yaml
Type: SwitchParameter
Parameter Sets: Int
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AsBool
If specified, converts the route value to a boolean.

```yaml
Type: SwitchParameter
Parameter Sets: Bool
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AsDouble
If specified, converts the route value to a double.

```yaml
Type: SwitchParameter
Parameter Sets: Double
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AsString
If specified, converts the route value to a string.

```yaml
Type: SwitchParameter
Parameter Sets: String
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ThrowIfMissing
If specified, throws an error if the route value is not found.
By default, it returns $null if not found.

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

## OUTPUTS

### Returns the value of the specified request route value, or $null if not found.
## NOTES
This function is designed to be used in the context of a Kestrun server response.

## RELATED LINKS
