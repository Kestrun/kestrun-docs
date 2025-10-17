---
layout: default
parent: PowerShell Cmdlets
title: Get-KrRequestQuery
nav_order: 87
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrRequestQuery

## SYNOPSIS
Retrieves a query parameter value from the HTTP request.

## SYNTAX

### default (Default)
```
Get-KrRequestQuery -Name <String> [-ThrowIfMissing] [<CommonParameters>]
```

### Int
```
Get-KrRequestQuery -Name <String> [-AsInt] [-ThrowIfMissing] [<CommonParameters>]
```

### Bool
```
Get-KrRequestQuery -Name <String> [-AsBool] [-ThrowIfMissing] [<CommonParameters>]
```

### Double
```
Get-KrRequestQuery -Name <String> [-AsDouble] [-ThrowIfMissing] [<CommonParameters>]
```

### String
```
Get-KrRequestQuery -Name <String> [-AsString] [-ThrowIfMissing] [<CommonParameters>]
```

## DESCRIPTION
This function accesses the current HTTP request context and retrieves the value
of the specified query parameter by name.

## EXAMPLES

### EXAMPLE 1
```powershell
$value = Get-KrRequestQuery -Name "param1"
Retrieves the value of the query parameter "param1" from the HTTP request.
```

### EXAMPLE 2
```powershell
$id = Get-KrRequestQuery -Name "id" -AsInt -ThrowIfMissing
Retrieves the value of the query parameter "id" as an integer, throwing an error if it's missing.
```

### EXAMPLE 3
```powershell
$flag = Get-KrRequestQuery -Name "flag" -AsBool
Retrieves the value of the query parameter "flag" as a boolean.
```

## PARAMETERS

### -Name
The name of the query parameter to retrieve from the HTTP request.

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
If specified, converts the query parameter value to an integer.

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
If specified, converts the query parameter value to a boolean.

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
If specified, converts the query parameter value to a double.

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
If specified, converts the query parameter value to a string.

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
If specified, throws an error if the query parameter is not found.
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

### Returns the value of the specified query parameter, or $null if not found.
## NOTES
This function is designed to be used in the context of a Kestrun server response.

## RELATED LINKS
