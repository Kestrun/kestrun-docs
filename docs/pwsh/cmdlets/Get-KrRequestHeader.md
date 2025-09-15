---
layout: default
parent: PowerShell Cmdlets
title: Get-KrRequestHeader
nav_order: 65
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

```
Get-KrRequestHeader [-Name] <String> [<CommonParameters>]
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

## PARAMETERS

### -Name
The name of the request header to retrieve from the HTTP request.

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

### Returns the value of the specified request header, or $null if not found.
## NOTES
This function is designed to be used in the context of a Kestrun server response.

## RELATED LINKS
