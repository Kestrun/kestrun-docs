---
layout: default
parent: PowerShell Cmdlets
nav_order: 199
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Write-KrErrorResponse
---

# Write-KrErrorResponse

## SYNOPSIS

Writes an error response to the HTTP client.

## SYNTAX

### Message (Default)

```powershell
Write-KrErrorResponse -Message <string> [-StatusCode <int>] [-ContentType <string>]
 [-Details <string>] [-IncludeStack] [<CommonParameters>]
```

### Exception

```powershell
Write-KrErrorResponse -Exception <Exception> [-StatusCode <int>] [-ContentType <string>]
 [-Details <string>] [-IncludeStack] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function allows you to send an error message or exception details back to the client.

## EXAMPLES

### EXAMPLE 1

Write-KrErrorResponse -Message "An error occurred while processing your request." -StatusCode 400 -ContentType "application/json"
Writes a simple error message to the response with a 400 Bad Request status code and content type "application/json".

### EXAMPLE 2

Write-KrErrorResponse -Exception $exception -StatusCode 500 -ContentType "application/json" -IncludeStack
Writes the details of the provided exception to the response with a 500 Internal Server Error status
code and content type "application/json". The stack trace is included in the response.

## PARAMETERS

### -ContentType

The content type of the response.
If not specified, defaults to "application/json".

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Details

Additional details to include in the error response.
This can be used to provide
more context about the error.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Exception

The exception object containing error details.
This is used when you want to send
detailed exception information back to the client.

```yaml
Type: System.Exception
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Exception
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IncludeStack

A switch to indicate whether to include the stack trace in the error response.
This is useful for debugging purposes.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Message

The error message to send in the response.
This is used when the error is a simple
message rather than an exception.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Message
  Position: Named
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
Defaults to 500 (Internal Server Error).

```yaml
Type: System.Int32
DefaultValue: 500
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
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
