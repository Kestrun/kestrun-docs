---
layout: default
parent: PowerShell Cmdlets
title: Add-KrHealthHttpProbe
nav_order: 23
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrHealthHttpProbe

## SYNOPSIS
Registers an HTTP-based health probe that polls a remote endpoint.

## SYNTAX

```
Add-KrHealthHttpProbe [[-Server] <KestrunHost>] [-Name] <String> [-Url] <String> [[-Tags] <String[]>]
 [[-HttpClient] <HttpClient>] [[-Timeout] <TimeSpan>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Creates a Kestrun HttpProbe that issues a GET request to the specified URL and interprets the
response according to the standard health contract.
Provide a shared HttpClient instance for
production use to avoid socket exhaustion, or rely on the default constructed client for simple
scenarios.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrHealthHttpProbe -Name Api -Url 'https://api.contoso.local/health' -Tags 'remote','api'
Registers a health probe that checks a downstream API health endpoint.
```

### EXAMPLE 2
```powershell
$client = [System.Net.Http.HttpClient]::new()
Get-KrServer | Add-KrHealthHttpProbe -Name Ping -Url 'https://example.com/health' -HttpClient $client -PassThru
Registers a probe using a shared HttpClient instance and returns the host for additional configuration.
```

## PARAMETERS

### -Server
The Kestrun host instance to configure.
If omitted, the current server context is resolved automatically.

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

### -Name
Unique name for the probe.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Url
The absolute URL that the probe polls.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
Optional set of tags used to include or exclude the probe when requests filter by tag.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HttpClient
Optional HttpClient reused for the probe requests.
When omitted a new HttpClient instance is created.

```yaml
Type: HttpClient
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Timeout
Optional timeout applied to the HTTP request.
Defaults to 5 seconds.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Emits the configured server instance so the call can be chained.

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
