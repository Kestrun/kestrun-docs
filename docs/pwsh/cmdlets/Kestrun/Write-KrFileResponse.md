---
layout: default
parent: PowerShell Cmdlets
nav_order: 215
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Write-KrFileResponse
---

# Write-KrFileResponse

## SYNOPSIS

Sends a file as the HTTP response.

## SYNTAX

### __AllParameterSets

```powershell
Write-KrFileResponse [-FilePath] <string> [[-ContentType] <string>] [[-StatusCode] <int>]
 [[-FileDownloadName] <string>] [[-ContentDisposition] <ContentDispositionType>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Writes a file from disk to the response body.
The file path is resolved
relative to the Kestrun root if required.
Additional options allow
specifying the download name, forcing inline display and custom content
type.

## EXAMPLES

### EXAMPLE 1

Write-KrFileResponse -FilePath "C:\path\to\file.txt" -ContentType "text/plain" -StatusCode 200 -FileDownloadName "download.txt" -ContentDisposition Attachment
Sends the file at "C:\path\to\file.txt" as a downloadable attachment
with the name "download.txt" and a content type of "text/plain". The response
status code is set to 200 (OK).

## PARAMETERS

### -ContentDisposition

Specifies how the content should be presented in the response.
Options include
inline and attachment.

```yaml
Type: Kestrun.Models.ContentDispositionType
DefaultValue: NoContentDisposition
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ContentType

The content type of the file being sent.
If not specified, it will be determined
based on the file extension.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -FileDownloadName

The name to use for the file when downloaded.
If not specified, the original
file name will be used.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -FilePath

The path to the file to send in the response.
This can be an absolute path
or a relative path from the Kestrun root.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -StatusCode

The HTTP status code to set for the response.
Defaults to 200 (OK).

```yaml
Type: System.Int32
DefaultValue: 200
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

This function is designed to be used in the context of a Kestrun server response.


## RELATED LINKS

{{ Fill in the related links here }}
