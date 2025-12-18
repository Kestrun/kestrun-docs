---
layout: default
parent: PowerShell Cmdlets
nav_order: 58
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.kestrun.dev/docs/powershell/kestrun/middleware
Locale: en-US
Module Name: Kestrun
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Add-KrSession
---

# Add-KrSession

## SYNOPSIS

Adds session state services and middleware to the Kestrun server.

## SYNTAX

### Items (Default)

```powershell
Add-KrSession [-Server <KestrunHost>] [-Cookie <CookieBuilder>] [-IdleTimeout <int>]
 [-IOTimeout <int>] [-NoDistributedMemoryCache]
 [-MemoryCacheOptions <MemoryDistributedCacheOptions>] [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Add-KrSession -Options <SessionOptions> [-Server <KestrunHost>] [-NoDistributedMemoryCache]
 [-MemoryCacheOptions <MemoryDistributedCacheOptions>] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Configures the Kestrun server to use session state for incoming requests.

## EXAMPLES

### EXAMPLE 1

Add-KrSession -Server $myServer -Options $mySessionOptions
Adds session state services and middleware to the specified Kestrun server with the provided options.

### EXAMPLE 2

Add-KrSession -IdleTimeout 30 -IOTimeout 15
Configures session state with a 30-minute idle timeout and a 15-second IO timeout.

### EXAMPLE 3

$cookie = New-KrCookieBuilder -Name 'SessionCookie' -HttpOnly -SameSite Lax
Add-KrSession -Cookie $cookie -IdleTimeout 25
Configures session state with a 25-minute idle timeout and a cookie named 'SessionCookie'.

### EXAMPLE 4

New-KrCookieBuilder -Name 'SessionCookie' -HttpOnly -SameSite Lax |
    Add-KrSession -IdleTimeout 25
Configures session state with a 25-minute idle timeout and a cookie named 'SessionCookie' created via pipeline.

### EXAMPLE 5

Add-KrSession -NoDistributedMemoryCache
Configures session state without adding a default in-memory distributed cache. Useful if you plan to add your own distributed cache implementation.

### EXAMPLE 6

$MemoryCacheOptions= [Microsoft.Extensions.Caching.Memory.MemoryDistributedCacheOptions]::new()
$MemoryCacheOptions.SizeLimit = 1024
$MemoryCacheOptions.ExpirationScanFrequency = [TimeSpan]::FromMinutes(5)
Add-KrSession -MemoryCacheOptions $MemoryCacheOptions
Configures session state and adds a distributed memory cache with a size limit of 1024 bytes and an expiration scan frequency of 5 minutes.

## PARAMETERS

### -Cookie

The cookie configuration to use.
If not specified, default cookie settings are applied.
Can be created with New-KrCookieBuilder and passed via pipeline.

```yaml
Type: Microsoft.AspNetCore.Http.CookieBuilder
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IdleTimeout

The idle timeout in seconds after which the session will expire.
If not specified, the default is 20 minutes.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IOTimeout

The IO timeout in seconds for session operations.
If not specified, the default is 10 seconds.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MemoryCacheOptions

The configuration options for the in-memory distributed cache.
If not specified, default options are used.

```yaml
Type: Microsoft.Extensions.Caching.Memory.MemoryDistributedCacheOptions
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

### -NoDistributedMemoryCache

If specified, the cmdlet will not add a default in-memory distributed cache.
This is useful if you plan to add your own distributed cache implementation.
The cmdlet will check if a distributed cache is already registered before adding the default.

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

### -Options

The session options to configure.
If not specified, default options are used.

```yaml
Type: Microsoft.AspNetCore.Builder.SessionOptions
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Options
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If specified, the cmdlet returns the modified server instance after configuration.

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

The Kestrun server instance to configure.
If not specified, the current server instance is used.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
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

This cmdlet is part of the Kestrun PowerShell module and is used to configure session state for Kestrun servers.


## RELATED LINKS

- [](https://docs.kestrun.dev/docs/powershell/kestrun/middleware)