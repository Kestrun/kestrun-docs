---
layout: default
parent: PowerShell Cmdlets
title: Add-KrDistributedRedisCache
nav_order: 12
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrDistributedRedisCache

## SYNOPSIS
Adds StackExchange.Redis distributed cache services to the Kestrun server.

## SYNTAX

### Items (Default)
```
Add-KrDistributedRedisCache [-Server <KestrunHost>] [-ConfigurationOptions <ConfigurationOptions>]
 [-Configuration <String>] [-InstanceName <String>] [-PassThru] [<CommonParameters>]
```

### Options
```
Add-KrDistributedRedisCache [-Server <KestrunHost>] -Options <RedisCacheOptions> [-PassThru]
 [<CommonParameters>]
```

## DESCRIPTION
Configures the Kestrun server to use StackExchange.Redis as the distributed cache for session state.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrDistributedRedisCache -Server $myServer -Options $myRedisOptions
Adds StackExchange.Redis distributed cache services to the specified Kestrun server with the provided options.
```

### EXAMPLE 2
```powershell
Add-KrDistributedRedisCache -Configuration "localhost:6379" -InstanceName "MyApp"
Configures StackExchange.Redis distributed cache with the specified configuration string and instance name.
```

### EXAMPLE 3
```powershell
$configOptions = [StackExchange.Redis.ConfigurationOptions]::Parse("localhost:6379")
$configOptions.AbortOnConnectFail = $false
Add-KrDistributedRedisCache -ConfigurationOptions $configOptions
Configures StackExchange.Redis distributed cache with the specified configuration options.
```

## PARAMETERS

### -Server
The Kestrun server instance to configure.
If not specified, the current server instance is used.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Options
The Redis cache options to configure.
If not specified, default options are used.

```yaml
Type: RedisCacheOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConfigurationOptions
The StackExchange.Redis configuration options to use.
If not specified, the default configuration is used.
This parameter is mutually exclusive with the Configuration parameter.

```yaml
Type: ConfigurationOptions
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Configuration
The configuration string to use for connecting to the Redis server.
If not specified, the default configuration is used.
This parameter is mutually exclusive with the ConfigurationOptions parameter.

```yaml
Type: String
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstanceName
The instance name to use for the Redis cache.
If not specified, the default instance name is used.

```yaml
Type: String
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
If specified, the cmdlet returns the modified server instance after configuration.

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
This cmdlet is part of the Kestrun PowerShell module and is used to configure StackExchange.Redis distributed cache for Kestrun servers.

## RELATED LINKS
