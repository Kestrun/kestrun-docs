---
title: Add-KrStaticFilesService
nav_order: 43
render_with_liquid: false
---
---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.staticfileoptions?view=aspnetcore-8.0
schema: 2.0.0
---

# Add-KrStaticFilesService

## SYNOPSIS
Registers a static file server to serve files from a specified path.

## SYNTAX

### Items (Default)
```
Add-KrStaticFilesService [-Server <KestrunHost>] [-FileProvider <PhysicalFileProvider>] [-RequestPath <String>]
 [-HttpsCompression] [-ServeUnknownFileTypes] [-DefaultContentType <String>] [-RedirectToAppendTrailingSlash]
 [-PassThru] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### Options
```
Add-KrStaticFilesService [-Server <KestrunHost>] -Options <StaticFileOptions> [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to serve static files from a specified path using the Kestrun server.
It can be used to serve files like images, stylesheets, and scripts.

## EXAMPLES

### EXAMPLE 1
```
$server | Add-KrStaticFilesService -RequestPath '/static' -HttpsCompression -ServeUnknownFileTypes -DefaultContentType 'application/octet-stream' -RedirectToAppendTrailingSlash
This example adds a static file service to the server for the path '/static', enabling HTTPS compression, allowing serving unknown file types, setting the default content type to 'application/octet-stream', and redirecting requests to append a trailing slash.
```

### EXAMPLE 2
```
$server | Add-KrStaticFilesService -Options $options
This example adds a static file service to the server using the specified StaticFileOptions.
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

### -FileProvider
An optional file provider to use for serving the files.

```yaml
Type: PhysicalFileProvider
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

### -PassThru
{{ Fill PassThru Description }}

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

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
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

[https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.staticfileoptions?view=aspnetcore-8.0](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.staticfileoptions?view=aspnetcore-8.0)

