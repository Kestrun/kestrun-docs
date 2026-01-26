---
layout: default
parent: PowerShell Cmdlets
nav_order: 15
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.kestrun.dev/docs/powershell/kestrun/middleware
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Add-KrDistributedRedisCache
---

# Add-KrDistributedRedisCache

## SYNOPSIS

Adds StackExchange.Redis distributed cache services to the Kestrun server.

## SYNTAX

### Items (Default)

```powershell
Add-KrDistributedRedisCache [-Server <KestrunHost>] [-ConfigurationOptions <ConfigurationOptions>]
 [-Configuration <string>] [-InstanceName <string>] [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Add-KrDistributedRedisCache -Options <RedisCacheOptions> [-Server <KestrunHost>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Configures the Kestrun server to use StackExchange.Redis as the distributed cache for session state.

## EXAMPLES

### EXAMPLE 1

Add-KrDistributedRedisCache -Server $myServer -Options $myRedisOptions
Adds StackExchange.Redis distributed cache services to the specified Kestrun server with the provided options.

### EXAMPLE 2

Add-KrDistributedRedisCache -Configuration "localhost:6379" -InstanceName "MyApp"
Configures StackExchange.Redis distributed cache with the specified configuration string and instance name.

### EXAMPLE 3

$configOptions = [StackExchange.Redis.ConfigurationOptions]::Parse("localhost:6379")
$configOptions.AbortOnConnectFail = $false
Add-KrDistributedRedisCache -ConfigurationOptions $configOptions
Configures StackExchange.Redis distributed cache with the specified configuration options.

## PARAMETERS

### -Configuration

The configuration string to use for connecting to the Redis server.
If not specified, the default configuration is used.
This parameter is mutually exclusive with the ConfigurationOptions parameter.

```yaml
Type: System.String
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

### -ConfigurationOptions

The StackExchange.Redis configuration options to use.
If not specified, the default configuration is used.
This parameter is mutually exclusive with the Configuration parameter.

```yaml
Type: StackExchange.Redis.ConfigurationOptions
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

### -InstanceName

The instance name to use for the Redis cache.
If not specified, the default instance name is used.

```yaml
Type: System.String
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

### -Options

The Redis cache options to configure.
If not specified, default options are used.

```yaml
Type: Microsoft.Extensions.Caching.StackExchangeRedis.RedisCacheOptions
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

This cmdlet is part of the Kestrun PowerShell module and is used to configure StackExchange.Redis distributed cache for Kestrun servers.


## RELATED LINKS

- [](https://docs.kestrun.dev/docs/powershell/kestrun/middleware)