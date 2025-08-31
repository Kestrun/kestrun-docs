---
layout: default
parent: PowerShell Cmdlets
title: Get-KrRequestBody
nav_order: 58
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrRequestBody

## SYNOPSIS
Retrieves a request body value from the HTTP request.

## SYNTAX

```
Get-KrRequestBody [-Raw] [<CommonParameters>]
```

## DESCRIPTION
This function accesses the current HTTP request context and retrieves the value
of the request body.

## EXAMPLES

### EXAMPLE 1
```powershell
$value = Get-KrRequestBody
Retrieves the value of the request body from the HTTP request.
```

### EXAMPLE 2
```powershell
$value = Get-KrRequestBody -Raw
Retrieves the raw request body from the HTTP request without any parsing.
```

## PARAMETERS

### -Raw
If specified, retrieves the raw request body without any parsing.

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

### Returns the value of the request body, or $null if not found.
## NOTES
This function is designed to be used in the context of a Kestrun server response.

## RELATED LINKS
