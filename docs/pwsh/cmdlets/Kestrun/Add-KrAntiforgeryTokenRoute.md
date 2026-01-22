---
layout: default
parent: PowerShell Cmdlets
nav_order: 3
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Add-KrAntiforgeryTokenRoute
---

# Add-KrAntiforgeryTokenRoute

## SYNOPSIS

Adds a GET endpoint that issues the antiforgery cookie and returns a JSON token payload.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrAntiforgeryTokenRoute [[-Server] <KestrunHost>] [[-Path] <string>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Maps a token endpoint (default: /csrf-token) using the C# extension
[Kestrun.Hosting.KestrunHostMapExtensions]::AddAntiforgeryTokenRoute().
The endpoint is exempt from CSRF validation and responds with:
    { "token": "<RequestToken>", "headerName": "<ConfiguredHeaderOrNull>" }

## EXAMPLES

### EXAMPLE 1

$server | Add-KrAntiforgeryMiddleware -CookieName ".Kestrun.AntiXSRF" -HeaderName "X-CSRF-TOKEN" -PassThru |
  Add-KrAntiforgeryTokenRoute -Path "/csrf-token" -PassThru

### EXAMPLE 2

# Client test (PowerShell):
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$info = Invoke-RestMethod "http://127.0.0.1:5000/csrf-token" -WebSession $session
$hdr = $info.headerName ?? 'X-CSRF-TOKEN'
Invoke-RestMethod "http://127.0.0.1:5000/profile" -Method Post -WebSession $session `
  -Headers @{ $hdr = $info.token } -ContentType 'application/json' -Body (@{name='Max'}|ConvertTo-Json)

## PARAMETERS

### -PassThru

Return the server instance for chaining.

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

### -Path

Route path to expose.
Defaults to "/csrf-token".

```yaml
Type: System.String
DefaultValue: /csrf-token
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

### -Server

The Kestrun server instance (pipeline-friendly).

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
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

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
