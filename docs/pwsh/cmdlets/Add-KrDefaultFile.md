---
layout: default
parent: PowerShell Cmdlets
title: Add-KrDefaultFile
nav_order: 8
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.defaultfilesoptions?view=aspnetcore-8.0
schema: 2.0.0
---

# Add-KrDefaultFile

## SYNOPSIS
Registers a default file provider for static files (e.g.
index.html).

## SYNTAX

### Items (Default)
```
Add-KrDefaultFile [-Server <KestrunHost>] [-RequestPath <String>] [-DefaultFiles <String[]>]
 [-FileProvider <IFileProvider>] [-RedirectToAppendTrailingSlash] [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### Options
```
Add-KrDefaultFile [-Server <KestrunHost>] -Options <DefaultFilesOptions> [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to specify a default file that should be served
when a request is made to a directory without a specific file name.
It can be used to serve files like index.html or default.aspx.

## EXAMPLES

### EXAMPLE 1
```
$server | Add-KrDefaultFile -RequestPath '/static' -DefaultFiles 'index.html', 'default.aspx' -RedirectToAppendTrailingSlash
This example adds a default file provider to the server for the path '/static',
serving the files 'index.html' and 'default.aspx' when a request is made to that path.
```

### EXAMPLE 2
```
$server | Add-KrDefaultFile -Options $options
This example adds a default file provider to the server using the specified DefaultFilesOptions.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the default file provider will be added.

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
The DefaultFilesOptions to configure the default file provider.

```yaml
Type: DefaultFilesOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestPath
The path at which the default file provider will be registered.

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

### -DefaultFiles
An array of default file names to be served when a request is made to the specified path.

```yaml
Type: String[]
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FileProvider
An optional file provider to use for serving the default files.

```yaml
Type: IFileProvider
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RedirectToAppendTrailingSlash
If specified, requests to the path will be redirected to append a trailing slash.

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



### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Kestrun.Hosting.KestrunHost
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.defaultfilesoptions?view=aspnetcore-8.0](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.defaultfilesoptions?view=aspnetcore-8.0)

