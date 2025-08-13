---
title: Write-KrErrorResponse
nav_order: 101
render_with_liquid: false
---
---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytokenhandler?view=azure-dotnet
schema: 2.0.0
---

# Write-KrErrorResponse

## SYNOPSIS
Writes an error response to the HTTP client.

## SYNTAX

### Message (Default)
```
Write-KrErrorResponse -Message <String> [-StatusCode <Int32>] [-ContentType <String>] [-Details <String>]
 [-IncludeStack] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### Exception
```
Write-KrErrorResponse -Exception <Exception> [-StatusCode <Int32>] [-ContentType <String>] [-Details <String>]
 [-IncludeStack] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
This function allows you to send an error message or exception details back to the client.

## EXAMPLES

### EXAMPLE 1
```
Write-KrErrorResponse -Message "An error occurred while processing your request." -StatusCode 400 -ContentType "application/json"
Writes a simple error message to the response with a 400 Bad Request status code and content type "application/json".
```

### EXAMPLE 2
```
Write-KrErrorResponse -Exception $exception -StatusCode 500 -ContentType "application/json" -IncludeStack
Writes the details of the provided exception to the response with a 500 Internal Server Error status
code and content type "application/json". The stack trace is included in the response.
```

## PARAMETERS

### -Message
The error message to send in the response.
This is used when the error is a simple
message rather than an exception.

```yaml
Type: String
Parameter Sets: Message
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Exception
The exception object containing error details.
This is used when you want to send
detailed exception information back to the client.

```yaml
Type: Exception
Parameter Sets: Exception
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StatusCode
The HTTP status code to set for the response.
Defaults to 500 (Internal Server Error).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 500
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContentType
The content type of the response.
If not specified, defaults to "application/json".

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Details
Additional details to include in the error response.
This can be used to provide
more context about the error.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeStack
A switch to indicate whether to include the stack trace in the error response.
This is useful for debugging purposes.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

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
