---
layout: default
parent: PowerShell Cmdlets
title: Write-KrRedirectResponse
nav_order: 115
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Write-KrRedirectResponse

## SYNOPSIS
Writes a redirect response to the HTTP client.

## SYNTAX

```
Write-KrRedirectResponse [-Url] <String> [[-Message] <String>] [<CommonParameters>]
```

## DESCRIPTION
Sets the Location header to the provided URL and optionally includes a
message body describing the redirect.

## EXAMPLES

### EXAMPLE 1
```powershell
Write-KrRedirectResponse -Url "https://example.com/new-page" -Message "You are being redirected to the new page."
Redirects the client to "https://example.com/new-page" and includes a message in the response body.
```

## PARAMETERS

### -Url
The URL to redirect the client to.
This should be a fully qualified URL.

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

### -Message
An optional message to include in the response body.
This can be used to provide additional context about the redirect.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
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
