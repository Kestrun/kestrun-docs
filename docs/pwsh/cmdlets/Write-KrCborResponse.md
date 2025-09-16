---
layout: default
parent: PowerShell Cmdlets
title: Write-KrCborResponse
nav_order: 116
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Write-KrCborResponse

## SYNOPSIS
Writes an object serialized as CBOR to the HTTP response.

## SYNTAX

```
Write-KrCborResponse [-InputObject] <Object> [[-StatusCode] <Int32>] [[-ContentType] <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Converts the provided object to CBOR format and writes it to the response body.
The status code and content type can be customized.

## EXAMPLES

### EXAMPLE 1
```powershell
Write-KrCborResponse -InputObject $myObject -StatusCode 200 -ContentType "application/cbor"
Writes the $myObject serialized as CBOR to the response with a 200 status code and
content type "application/cbor".
```

## PARAMETERS

### -InputObject
The object to serialize and write to the response.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -StatusCode
The HTTP status code to set for the response.
Defaults to 200.

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
The content type to set for the response.
If not specified, defaults to application/cbor

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

## RELATED LINKS
