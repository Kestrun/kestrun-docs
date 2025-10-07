---
layout: default
parent: PowerShell Cmdlets
title: Add-KrCacheResponse
nav_order: 6
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrCacheResponse

## SYNOPSIS
Adds caching headers to the HTTP response.

## SYNTAX

```
Add-KrCacheResponse [-NoCache] [-NoStore] [[-MaxAge] <Int32>] [[-SharedMaxAge] <Int32>] [-MaxStale]
 [[-MaxStaleLimit] <Int32>] [[-MinFresh] <Int32>] [-NoTransform] [-OnlyIfCached] [-Public] [-Private]
 [-MustRevalidate] [-ProxyRevalidate] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to add caching headers to the HTTP response in a route script block.
It provides various parameters to customize the caching behavior, such as setting max-age,
no-cache, no-store, and other cache control directives.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrCacheResponse  -NoCache -MaxAge 3600 -Public
This example adds caching headers to the response, setting the 'no-cache' directive,
a 'max-age' of 3600 seconds, and marking the response as 'public'.
```

### EXAMPLE 2
```powershell
Add-KrCacheResponse -NoStore -Private -MustRevalidate
This example adds caching headers to the response, setting the 'no-store' directive,
marking the response as 'private', and adding the 'must-revalidate' directive.
```

## PARAMETERS

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
Position: 1
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
Position: 2
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
Position: 3
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
Position: 4
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
This cmdlet is used to add caching headers to the response in a route script block,
allowing you to control how responses are cached by clients and intermediate caches.
It must be used within a route script block where the $Context variable is available.

## RELATED LINKS
