---
layout: default
parent: PowerShell Cmdlets
title: Get-KrRequestHeader
nav_order: 84
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrRequestHeader

## SYNOPSIS
Retrieves a request header value from the HTTP request.

## SYNTAX

### default (Default)
```
Get-KrRequestHeader -Name <String> [-ThrowIfMissing] [<CommonParameters>]
```

### Int
```
Get-KrRequestHeader -Name <String> [-AsInt] [-ThrowIfMissing] [<CommonParameters>]
```

### Bool
```
Get-KrRequestHeader -Name <String> [-AsBool] [-ThrowIfMissing] [<CommonParameters>]
```

### Double
```
Get-KrRequestHeader -Name <String> [-AsDouble] [-ThrowIfMissing] [<CommonParameters>]
```

### String
```
Get-KrRequestHeader -Name <String> [-AsString] [-ThrowIfMissing] [<CommonParameters>]
```

## DESCRIPTION
This function accesses the current HTTP request context and retrieves the value
of the specified request header by name.

## EXAMPLES

### EXAMPLE 1
```powershell
$value = Get-KrRequestHeader -Name "param1"
Retrieves the value of the request header "param1" from the HTTP request.
```

### EXAMPLE 2
```powershell
$id = Get-KrRequestHeader -Name "id" -AsInt -ThrowIfMissing
Retrieves the value of the header "id" as an integer, throwing an error if it's missing.
```

### EXAMPLE 3
```powershell
$flag = Get-KrRequestHeader -Name "flag" -AsBool
Retrieves the value of the header "flag" as a boolean.
```

### EXAMPLE 4
```powershell
$auth = Get-KrRequestHeader -Name "Authorization" -AsString -ThrowIfMissing
Retrieves the value of the "Authorization" header as a string, throwing an error if it's missing.
```

## PARAMETERS

### -Name
The name of the request header to retrieve from the HTTP request.

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
If specified, converts the header value to an integer.

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
If specified, converts the header value to a boolean.

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
If specified, converts the header value to a double.

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
If specified, converts the header value to a string.

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
If specified, throws an error if the header is not found.
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

### Returns the value of the specified request header, or $null if not found.
## NOTES
This function is designed to be used in the context of a Kestrun server response.

## RELATED LINKS
