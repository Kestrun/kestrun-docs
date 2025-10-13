---
layout: default
parent: PowerShell Cmdlets
title: Write-KrBinaryResponse
nav_order: 144
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Write-KrBinaryResponse

## SYNOPSIS
Writes binary data directly to the HTTP response body.

## SYNTAX

```
Write-KrBinaryResponse [-InputObject] <Byte[]> [[-StatusCode] <Int32>] [[-ContentType] <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Sends a byte array to the client.
Useful for returning images or other
binary content with a specified status code and content type.

## EXAMPLES

### EXAMPLE 1
```powershell
Write-KrBinaryResponse -InputObject $myBinaryData -StatusCode 200 -ContentType "application/octet-stream"
Writes the $myBinaryData to the response body with a 200 OK status code and
content type "application/octet-stream".
```

## PARAMETERS

### -InputObject
The binary data to write to the response body.
This should be a byte array.

```yaml
Type: Byte[]
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

### -ContentType
The content type of the response.
If not specified, defaults to "application/octet-stream".

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
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
