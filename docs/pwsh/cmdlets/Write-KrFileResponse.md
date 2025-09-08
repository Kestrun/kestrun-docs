---
layout: default
parent: PowerShell Cmdlets
title: Write-KrFileResponse
nav_order: 111
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Write-KrFileResponse

## SYNOPSIS
Sends a file as the HTTP response.

## SYNTAX

```
Write-KrFileResponse [-FilePath] <String> [[-ContentType] <String>] [[-StatusCode] <Int32>]
 [[-FileDownloadName] <String>] [[-ContentDisposition] <ContentDispositionType>] [<CommonParameters>]
```

## DESCRIPTION
Writes a file from disk to the response body.
The file path is resolved
relative to the Kestrun root if required.
Additional options allow
specifying the download name, forcing inline display and custom content
type.

## EXAMPLES

### EXAMPLE 1
```powershell
Write-KrFileResponse -FilePath "C:\path\to\file.txt" -ContentType "text/plain" -StatusCode 200 -FileDownloadName "download.txt" -ContentDisposition Attachment
Sends the file at "C:\path\to\file.txt" as a downloadable attachment
with the name "download.txt" and a content type of "text/plain". The response
status code is set to 200 (OK).
```

## PARAMETERS

### -FilePath
The path to the file to send in the response.
This can be an absolute path
or a relative path from the Kestrun root.

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

### -ContentType
The content type of the file being sent.
If not specified, it will be determined
based on the file extension.

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

### -StatusCode
The HTTP status code to set for the response.
Defaults to 200 (OK).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 200
Accept pipeline input: False
Accept wildcard characters: False
```

### -FileDownloadName
The name to use for the file when downloaded.
If not specified, the original
file name will be used.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContentDisposition
Specifies how the content should be presented in the response.
Options include
inline and attachment.

```yaml
Type: ContentDispositionType
Parameter Sets: (All)
Aliases:
Accepted values: Attachment, Inline, NoContentDisposition

Required: False
Position: 5
Default value: NoContentDisposition
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
