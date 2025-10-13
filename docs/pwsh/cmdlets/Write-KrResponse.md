---
layout: default
parent: PowerShell Cmdlets
title: Write-KrResponse
nav_order: 154
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Write-KrResponse

## SYNOPSIS
Writes a response with the specified input object and HTTP status code.

## SYNTAX

```
Write-KrResponse [-InputObject] <Object> [[-StatusCode] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
This function is a wrapper around the Kestrun server response methods.
The response format based on the Accept header or defaults to text/plain.
Content type is determined automatically.

## EXAMPLES

### EXAMPLE 1
```powershell
Write-KrResponse -InputObject $myObject -StatusCode 200
Writes the $myObject to the response with a 200 status code. The content type
is determined automatically based on the Accept header or defaults to text/plain.
```

## PARAMETERS

### -InputObject
The input object to write to the response body.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StatusCode
The HTTP status code to set for the response.
Defaults to 200 (OK).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 200
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
