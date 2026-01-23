---
layout: default
parent: PowerShell Cmdlets
nav_order: 30
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Add-KrHealthHttpProbe
---

# Add-KrHealthHttpProbe

## SYNOPSIS

Registers an HTTP-based health probe that polls a remote endpoint.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrHealthHttpProbe [[-Server] <KestrunHost>] [-Name] <string> [-Url] <string>
 [[-Tags] <string[]>] [[-HttpClient] <HttpClient>] [[-Timeout] <timespan>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Creates a Kestrun HttpProbe that issues a GET request to the specified URL and interprets the
response according to the standard health contract.
Provide a shared HttpClient instance for
production use to avoid socket exhaustion, or rely on the default constructed client for simple
scenarios.

## EXAMPLES

### EXAMPLE 1

Add-KrHealthHttpProbe -Name Api -Url 'https://api.contoso.local/health' -Tags 'remote','api'
Registers a health probe that checks a downstream API health endpoint.

### EXAMPLE 2

$client = [System.Net.Http.HttpClient]::new()
Get-KrServer | Add-KrHealthHttpProbe -Name Ping -Url 'https://example.com/health' -HttpClient $client -PassThru
Registers a probe using a shared HttpClient instance and returns the host for additional configuration.

## PARAMETERS

### -HttpClient

Optional HttpClient reused for the probe requests.
When omitted a new HttpClient instance is created.

```yaml
Type: System.Net.Http.HttpClient
DefaultValue: ''
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

### -Name

Unique name for the probe.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

Emits the configured server instance so the call can be chained.

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

### -Server

The Kestrun host instance to configure.
If omitted, the current server context is resolved automatically.

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

### -Tags

Optional set of tags used to include or exclude the probe when requests filter by tag.

```yaml
Type: System.String[]
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

### -Timeout

Optional timeout applied to the HTTP request.
Defaults to 5 seconds.

```yaml
Type: System.TimeSpan
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Url

The absolute URL that the probe polls.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
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

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
