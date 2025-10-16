---
layout: default
parent: PowerShell Cmdlets
title: Get-KrRequestCookie
nav_order: 82
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrRequestCookie

## SYNOPSIS
Retrieves a cookie value from the HTTP request.

## SYNTAX

### default (Default)
```
Get-KrRequestCookie -Name <String> [-ThrowIfMissing] [<CommonParameters>]
```

### Int
```
Get-KrRequestCookie -Name <String> [-AsInt] [-ThrowIfMissing] [<CommonParameters>]
```

### Bool
```
Get-KrRequestCookie -Name <String> [-AsBool] [-ThrowIfMissing] [<CommonParameters>]
```

### Double
```
Get-KrRequestCookie -Name <String> [-AsDouble] [-ThrowIfMissing] [<CommonParameters>]
```

### String
```
Get-KrRequestCookie -Name <String> [-AsString] [-ThrowIfMissing] [<CommonParameters>]
```

## DESCRIPTION
This function accesses the current HTTP request context and retrieves the value
of the specified cookie by name.

## EXAMPLES

### EXAMPLE 1
```powershell
$value = Get-KrRequestCookie -Name "param1"
Retrieves the value of the cookie "param1" from the HTTP request.
```

### EXAMPLE 2
```powershell
$id = Get-KrRequestCookie -Name "id" -AsInt -ThrowIfMissing
Retrieves the value of the cookie "id" as an integer, throwing an error if it's missing.
```

### EXAMPLE 3
```powershell
$flag = Get-KrRequestCookie -Name "flag" -AsBool
Retrieves the value of the cookie "flag" as a boolean.
```

## PARAMETERS

### -Name
The name of the cookie to retrieve from the HTTP request.

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
If specified, converts the cookie value to an integer.

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
If specified, converts the cookie value to a boolean.

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
If specified, converts the cookie value to a double.

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
If specified, converts the cookie value to a string.

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
If specified, throws an error if the cookie is not found.
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

### Returns the value of the specified cookie, or $null if not found.
## NOTES
This function is designed to be used in the context of a Kestrun server response.

## RELATED LINKS
