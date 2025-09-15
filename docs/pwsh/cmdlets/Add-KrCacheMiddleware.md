---
layout: default
parent: PowerShell Cmdlets
title: Add-KrCacheMiddleware
nav_order: 4
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrCacheMiddleware

## SYNOPSIS
Adds response caching to the Kestrun server.

## SYNTAX

```
Add-KrCacheMiddleware [[-Server] <KestrunHost>] [[-SizeLimit] <Int64>] [[-MaximumBodySize] <Int64>]
 [-UseCaseSensitivePaths] [-NoCache] [-NoStore] [[-MaxAge] <Int32>] [[-SharedMaxAge] <Int32>] [-MaxStale]
 [[-MaxStaleLimit] <Int32>] [[-MinFresh] <Int32>] [-NoTransform] [-OnlyIfCached] [-Public] [-Private]
 [-MustRevalidate] [-ProxyRevalidate] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to enable and configure response caching for the Kestrun server.
It can be used to improve performance by caching responses for frequently requested resources.

## EXAMPLES

### EXAMPLE 1
```powershell
$server | Add-KrCacheMiddleware -SizeLimit 10485760 -MaximumBody 65536 -UseCaseSensitivePaths
This example adds response caching to the server with a size limit of 10MB, a maximum body size of 64KB,
and enables case-sensitive paths.
```

### EXAMPLE 2
```powershell
$server | Add-KrCacheMiddleware
This example adds response caching to the server with default settings.
```

## PARAMETERS

### -Server
The Kestrun server instance to which response caching will be added.

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

### -SizeLimit
The maximum size, in bytes, of the response cache.
If not specified, the default
size limit of the underlying implementation will be used.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaximumBodySize
The maximum size, in bytes, of the response body that can be cached.
If not specified,
the default value of 64KB will be used.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseCaseSensitivePaths
If specified, the caching will be case-sensitive with respect to request paths.

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

### -NoCache
If specified, the 'no-cache' directive will be added to the Cache-Control header.

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

### -NoStore
If specified, the 'no-store' directive will be added to the Cache-Control header.

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

### -MaxAge
If specified, sets the 'max-age' directive in seconds for the Cache-Control header.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -SharedMaxAge
If specified, sets the 's-maxage' directive in seconds for the Cache-Control header
(used by shared caches).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxStale
If specified, the 'max-stale' directive will be added to the Cache-Control header.

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

### -MaxStaleLimit
If specified, sets the limit in seconds for the 'max-stale' directive in the Cache-Control header.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinFresh
If specified, sets the 'min-fresh' directive in seconds for the Cache-Control header.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoTransform
If specified, the 'no-transform' directive will be added to the Cache-Control header.

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

### -OnlyIfCached
If specified, the 'only-if-cached' directive will be added to the Cache-Control header.

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

### -Public
If specified, the 'public' directive will be added to the Cache-Control header.

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

### -Private
If specified, the 'private' directive will be added to the Cache-Control header.

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

### -MustRevalidate
If specified, the 'must-revalidate' directive will be added to the Cache-Control header.

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

### -ProxyRevalidate
If specified, the 'proxy-revalidate' directive will be added to the Cache-Control header.

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

### -PassThru
If specified, returns the modified server instance after adding response caching.

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
This cmdlet is used to enable and configure response caching for the Kestrun server,

## RELATED LINKS
