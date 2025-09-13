---
layout: default
parent: PowerShell Cmdlets
title: Write-KrCsvResponse
nav_order: 119
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Write-KrCsvResponse

## SYNOPSIS
Writes CSV data to the HTTP response body.

## SYNTAX

```
Write-KrCsvResponse [-InputObject] <Object> [[-StatusCode] <Int32>] [[-ContentType] <String>]
 [[-CsvConfiguration] <CsvConfiguration>] [<CommonParameters>]
```

## DESCRIPTION
Sends a raw CSV payload to the client and optionally sets the HTTP status
code and content type.

## EXAMPLES

### EXAMPLE 1
```powershell
Write-KrCsvResponse -InputObject "Name,Age`nAlice,30`nBob,25" -StatusCode 200
Writes the CSV data to the response body with a 200 OK status code.
```

## PARAMETERS

### -InputObject
The CSV content to write to the response body.
This can be a string or any
other object that can be converted to a string.

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
If not specified, defaults to "text/csv".

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

### -CsvConfiguration
An optional CsvHelper configuration object to customize CSV serialization.

```yaml
Type: CsvConfiguration
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
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
