---
layout: default
parent: PowerShell Cmdlets
title: Write-KrJsonResponse
nav_order: 108
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Write-KrJsonResponse

## SYNOPSIS
Writes an object to the HTTP response body as JSON.

## SYNTAX

```
Write-KrJsonResponse [-InputObject] <Object> [[-StatusCode] <Int32>] [[-Depth] <Int32>] [[-Compress] <Boolean>]
 [[-ContentType] <String>] [<CommonParameters>]
```

## DESCRIPTION
Serializes the provided object to JSON using Newtonsoft.Json and writes it
to the current HTTP response.
The caller can specify the HTTP status code,
serialization depth and formatting options.

## EXAMPLES

### EXAMPLE 1
```powershell
$myObject | Write-KrJsonResponse -StatusCode 201 -Depth 5 -Compress -ContentType "application/json"
Serializes the object to JSON and writes it to the response with the specified options.
```

### EXAMPLE 2
```powershell
$myObject | Write-KrJsonResponse -StatusCode 400 -Depth 3 -Compress -ContentType "application/json"
Serializes the object to JSON and writes it to the response with the specified options.
```

### EXAMPLE 3
```powershell
$myObject | Write-KrJsonResponse -StatusCode 500 -Depth 2
Serializes the object to JSON and writes it to the response with the specified options.
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

### -Depth
The maximum depth of the JSON serialization.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Compress
Whether to compress the JSON output.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContentType
The content type of the response.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
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
