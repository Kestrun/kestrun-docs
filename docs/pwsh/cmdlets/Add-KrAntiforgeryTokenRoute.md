---
layout: default
parent: PowerShell Cmdlets
title: Add-KrAntiforgeryTokenRoute
nav_order: 2
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrAntiforgeryTokenRoute

## SYNOPSIS
Adds a GET endpoint that issues the antiforgery cookie and returns a JSON token payload.

## SYNTAX

```
Add-KrAntiforgeryTokenRoute [[-Server] <KestrunHost>] [[-Path] <String>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Maps a token endpoint (default: /csrf-token) using the C# extension
\[Kestrun.Hosting.KestrunHostMapExtensions\]::AddAntiforgeryTokenRoute().
The endpoint is exempt from CSRF validation and responds with:
    { "token": "\<RequestToken\>", "headerName": "\<ConfiguredHeaderOrNull\>" }

## EXAMPLES

### EXAMPLE 1
```powershell
$server | Add-KrAntiforgeryMiddleware -CookieName ".Kestrun.AntiXSRF" -HeaderName "X-CSRF-TOKEN" -PassThru |
  Add-KrAntiforgeryTokenRoute -Path "/csrf-token" -PassThru
```

### EXAMPLE 2
```powershell
# Client test (PowerShell):
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$info = Invoke-RestMethod "http://127.0.0.1:5000/csrf-token" -WebSession $session
$hdr = $info.headerName ?? 'X-CSRF-TOKEN'
Invoke-RestMethod "http://127.0.0.1:5000/profile" -Method Post -WebSession $session `
  -Headers @{ $hdr = $info.token } -ContentType 'application/json' -Body (@{name='Max'}|ConvertTo-Json)
```

## PARAMETERS

### -Server
The Kestrun server instance (pipeline-friendly).

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Path
Route path to expose.
Defaults to "/csrf-token".

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: /csrf-token
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Return the server instance for chaining.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Kestrun.Hosting.KestrunHost
## NOTES

## RELATED LINKS
