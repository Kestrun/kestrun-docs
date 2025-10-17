---
layout: default
parent: PowerShell Cmdlets
title: Add-KrSession
nav_order: 47
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrSession

## SYNOPSIS
Adds session state services and middleware to the Kestrun server.

## SYNTAX

### Items (Default)
```
Add-KrSession [-Server <KestrunHost>] [-Cookie <CookieBuilder>] [-IdleTimeout <Int32>] [-IOTimeout <Int32>]
 [-NoDistributedMemoryCache] [-MemoryCacheOptions <MemoryDistributedCacheOptions>] [-PassThru]
 [<CommonParameters>]
```

### Options
```
Add-KrSession [-Server <KestrunHost>] -Options <SessionOptions> [-NoDistributedMemoryCache]
 [-MemoryCacheOptions <MemoryDistributedCacheOptions>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Configures the Kestrun server to use session state for incoming requests.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrSession -Server $myServer -Options $mySessionOptions
Adds session state services and middleware to the specified Kestrun server with the provided options.
```

### EXAMPLE 2
```powershell
Add-KrSession -IdleTimeout 30 -IOTimeout 15
Configures session state with a 30-minute idle timeout and a 15-second IO timeout.
```

### EXAMPLE 3
```powershell
$cookie = New-KrCookieBuilder -Name 'SessionCookie' -HttpOnly -SameSite Lax
Add-KrSession -Cookie $cookie -IdleTimeout 25
Configures session state with a 25-minute idle timeout and a cookie named 'SessionCookie'.
```

### EXAMPLE 4
```powershell
New-KrCookieBuilder -Name 'SessionCookie' -HttpOnly -SameSite Lax |
    Add-KrSession -IdleTimeout 25
Configures session state with a 25-minute idle timeout and a cookie named 'SessionCookie' created via pipeline.
```

### EXAMPLE 5
```powershell
Add-KrSession -NoDistributedMemoryCache
Configures session state without adding a default in-memory distributed cache. Useful if you plan to add your own distributed cache implementation.
```

### EXAMPLE 6
```powershell
$MemoryCacheOptions= [Microsoft.Extensions.Caching.Memory.MemoryDistributedCacheOptions]::new()
$MemoryCacheOptions.SizeLimit = 1024
$MemoryCacheOptions.ExpirationScanFrequency = [TimeSpan]::FromMinutes(5)
Add-KrSession -MemoryCacheOptions $MemoryCacheOptions
Configures session state and adds a distributed memory cache with a size limit of 1024 bytes and an expiration scan frequency of 5 minutes.
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
The session options to configure.
If not specified, default options are used.

```yaml
Type: SessionOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Cookie
The cookie configuration to use.
If not specified, default cookie settings are applied.
Can be created with New-KrCookieBuilder and passed via pipeline.

```yaml
Type: CookieBuilder
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdleTimeout
The idle timeout in seconds after which the session will expire.
If not specified, the default is 20 minutes.

```yaml
Type: Int32
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -IOTimeout
The IO timeout in seconds for session operations.
If not specified, the default is 10 seconds.

```yaml
Type: Int32
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoDistributedMemoryCache
If specified, the cmdlet will not add a default in-memory distributed cache.
This is useful if you plan to add your own distributed cache implementation.
The cmdlet will check if a distributed cache is already registered before adding the default.

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

### -MemoryCacheOptions
The configuration options for the in-memory distributed cache.
If not specified, default options are used.

```yaml
Type: MemoryDistributedCacheOptions
Parameter Sets: (All)
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
This cmdlet is part of the Kestrun PowerShell module and is used to configure session state for Kestrun servers.

## RELATED LINKS
