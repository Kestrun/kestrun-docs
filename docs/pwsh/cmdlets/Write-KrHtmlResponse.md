---
layout: default
parent: PowerShell Cmdlets
title: Write-KrHtmlResponse
nav_order: 112
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Write-KrHtmlResponse

## SYNOPSIS
Writes an HTML response to the HTTP response body.

## SYNTAX

### FilePath (Default)
```
Write-KrHtmlResponse -FilePath <String> [-StatusCode <Int32>] [-Variables <Hashtable>] [<CommonParameters>]
```

### Template
```
Write-KrHtmlResponse -Template <String> [-StatusCode <Int32>] [-Variables <Hashtable>] [<CommonParameters>]
```

## DESCRIPTION
Serializes the provided HTML template with variables and writes it to the HTTP response.

## EXAMPLES

### EXAMPLE 1
```powershell
Write-KrHtmlResponse -FilePath "C:\path\to\template.html" -StatusCode 200 -Variables @{ Title = "My Page"; Content = "Hello, World!" }
Reads the HTML file at "C:\path\to\template.html", merges in the variables, and writes the resulting HTML to the response with a 200 status code.
```

## PARAMETERS

### -FilePath
The path to the HTML file to read and write to the response.
This can be a relative or absolute path.

```yaml
Type: String
Parameter Sets: FilePath
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Template
The HTML template string to write to the response.
If provided, this will override the FilePath parameter.

```yaml
Type: String
Parameter Sets: Template
Aliases:

Required: True
Position: Named
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
Position: Named
Default value: 200
Accept pipeline input: False
Accept wildcard characters: False
```

### -Variables
A hashtable of variables to use for template placeholders.
These will be merged into the HTML template.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
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
