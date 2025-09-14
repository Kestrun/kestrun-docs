---
layout: default
parent: PowerShell Cmdlets
title: Add-KrStaticFilesMiddleware
nav_order: 47
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrStaticFilesMiddleware

## SYNOPSIS
Registers a static file server to serve files from a specified path.

## SYNTAX

### Items (Default)
```
Add-KrStaticFilesMiddleware [-Server <KestrunHost>] [-RootPath <String>] [-RequestPath <String>]
 [-HttpsCompression] [-ServeUnknownFileTypes] [-DefaultContentType <String>] [-RedirectToAppendTrailingSlash]
 [-ContentTypeMap <Hashtable>] [-NoCache] [-NoStore] [-MaxAge <Int32>] [-SharedMaxAge <Int32>] [-MaxStale]
 [-MaxStaleLimit <Int32>] [-MinFresh <Int32>] [-NoTransform] [-OnlyIfCached] [-Public] [-Private]
 [-MustRevalidate] [-ProxyRevalidate] [-PassThru] [<CommonParameters>]
```

### Options
```
Add-KrStaticFilesMiddleware [-Server <KestrunHost>] -Options <StaticFileOptions> [-NoCache] [-NoStore]
 [-MaxAge <Int32>] [-SharedMaxAge <Int32>] [-MaxStale] [-MaxStaleLimit <Int32>] [-MinFresh <Int32>]
 [-NoTransform] [-OnlyIfCached] [-Public] [-Private] [-MustRevalidate] [-ProxyRevalidate] [-PassThru]
 [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to serve static files from a specified path using the Kestrun server.
It can be used to serve files like images, stylesheets, and scripts.

## EXAMPLES

### EXAMPLE 1
```powershell
$server | Add-KrStaticFilesMiddleware -RequestPath '/static' -HttpsCompression -ServeUnknownFileTypes -DefaultContentType 'application/octet-stream' -RedirectToAppendTrailingSlash
This example adds a static file service to the server for the path '/static', enabling HTTPS compression, allowing serving unknown file types,
setting the default content type to 'application/octet-stream', and redirecting requests to append a trailing slash.
```

### EXAMPLE 2
```powershell
$server | Add-KrStaticFilesMiddleware -Options $options
This example adds a static file service to the server using the specified StaticFileOptions.
```

### EXAMPLE 3
```powershell
$server | Add-KrStaticFilesMiddleware -RequestPath '/static' -MaxAge 600 -Public -MustRevalidate
This example adds a static file service to the server for the path '/static', setting caching headers with a max-age of 600 seconds,
marking the response as public, and adding the must-revalidate directive.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the static file service will be added.

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
The StaticFileOptions to configure the static file service.

```yaml
Type: StaticFileOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RootPath
The root path from which to serve static files.

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

### -RequestPath
The path at which the static file service will be registered.

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

### -HttpsCompression
If specified, enables HTTPS compression for the static files.

```yaml
Type: SwitchParameter
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServeUnknownFileTypes
If specified, allows serving files with unknown MIME types.

```yaml
Type: SwitchParameter
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultContentType
The default content type to use for files served by the static file service.

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

### -RedirectToAppendTrailingSlash
If specified, redirects requests to append a trailing slash to the URL.

```yaml
Type: SwitchParameter
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContentTypeMap
A hashtable mapping file extensions to MIME types.

```yaml
Type: Hashtable
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoCache
If specified, adds a 'no-cache' directive to the Cache-Control header.

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
If specified, adds a 'no-store' directive to the Cache-Control header.

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
Position: Named
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
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxStale
If specified, adds a 'max-stale' directive to the Cache-Control header.

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
Position: Named
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
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoTransform
If specified, adds a 'no-transform' directive to the Cache-Control header.

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
If specified, adds an 'only-if-cached' directive to the Cache-Control header.

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
If specified, adds a 'public' directive to the Cache-Control header.

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
If specified, adds a 'private' directive to the Cache-Control header.

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
If specified, adds a 'must-revalidate' directive to the Cache-Control header.

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
If specified, adds a 'proxy-revalidate' directive to the Cache-Control header.

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
If specified, the cmdlet will return the modified server instance after adding the static file service.

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
ContentTypeProvider and ContentTypeProviderOptions are not supported yet.

## RELATED LINKS
