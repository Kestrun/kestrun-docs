---
layout: default
parent: PowerShell Cmdlets
title: Get-KrRequestQuery
nav_order: 67
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

```
Get-KrRequestQuery [-Name] <String> [<CommonParameters>]
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

## PARAMETERS

### -Name
The name of the query parameter to retrieve from the HTTP request.

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

### Returns the value of the specified query parameter, or $null if not found.
## NOTES
This function is designed to be used in the context of a Kestrun server response.

## RELATED LINKS
