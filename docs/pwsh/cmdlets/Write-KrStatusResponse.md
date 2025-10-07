---
layout: default
parent: PowerShell Cmdlets
title: Write-KrStatusResponse
nav_order: 139
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Write-KrStatusResponse

## SYNOPSIS
Sets only the HTTP status code for the response, without a body.

## SYNTAX

```
Write-KrStatusResponse [-StatusCode] <Int32> [<CommonParameters>]
```

## DESCRIPTION
Sets the HTTP status code for the response and clears any body or content type,
allowing status code pages middleware to handle the response body if configured.

## EXAMPLES

### EXAMPLE 1
```powershell
Write-KrStatusResponse -StatusCode 404
Sets the response status code to 404 Not Found, without a body. If status code pages
middleware is enabled, it will generate the response body.
```

## PARAMETERS

### -StatusCode
The HTTP status code to set for the response.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
This function is designed to be used in the context of a Kestrun server response.

## RELATED LINKS
