---
layout: default
parent: PowerShell Cmdlets
title: Write-KrXmlResponse
nav_order: 119
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Write-KrXmlResponse

## SYNOPSIS
Writes an object serialized as XML to the HTTP response.

## SYNTAX

```
Write-KrXmlResponse [-InputObject] <Object> [[-StatusCode] <Int32>] [[-ContentType] <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Converts the provided object to XML and writes it to the response body.
The
status code and content type can be customized.

## EXAMPLES

### EXAMPLE 1
```powershell
Write-KrXmlResponse -InputObject $myObject -StatusCode 200 -ContentType "application/kestrun-xml"
Writes the $myObject serialized as XML (<kestrun-xml>) to the response with a 200 status code
and content type "application/kestrun-xml".
```

## PARAMETERS

### -InputObject
The object to serialize and write to the response body.
This can be any
PowerShell object, including complex types.

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

### -ContentType
The content type of the response.
If not specified, defaults to "application/xml".

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
