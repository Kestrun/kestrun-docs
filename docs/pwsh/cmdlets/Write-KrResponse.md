---
layout: default
parent: PowerShell Cmdlets
title: Write-KrResponse
nav_order: 108
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Write-KrResponse

## SYNOPSIS
Writes a response to the HTTP client.

## SYNTAX

```
Write-KrResponse [-InputObject] <Stream> [[-StatusCode] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
This function is a wrapper around the Kestrun server response methods.

## EXAMPLES

### EXAMPLE 1
```powershell
Write-KrResponse -InputObject $myStream -StatusCode 200 -ContentType "application/octet-stream"
Writes the $myStream to the response body with a 200 OK status code and content type "application/octet-stream".
```

## PARAMETERS

### -InputObject
The input object to write to the response body.
This can be a stream, byte array, or other types.

```yaml
Type: Stream
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
