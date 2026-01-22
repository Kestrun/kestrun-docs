---
layout: default
parent: PowerShell Cmdlets
nav_order: 192
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Start-KrSseResponse
---

# Start-KrSseResponse

## SYNOPSIS

Starts a Server-Sent Events (SSE) response to the client.

## SYNTAX

### __AllParameterSets

```powershell
Start-KrSseResponse [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function initiates a Server-Sent Events (SSE) response to the connected client.
It sets the appropriate headers and keeps the connection open for sending SSEs.

## EXAMPLES

### EXAMPLE 1

Start-KrSseResponse
Starts an SSE response to the client.

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

This function requires that SSE has been configured on the server using Add-KrSseMiddleware.


## RELATED LINKS

{{ Fill in the related links here }}
