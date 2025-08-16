---
layout: default
parent: PowerShell Cmdlets
title: Add-KrFileServer
nav_order: 16
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrFileServer

## SYNOPSIS
Registers a file server to serve static files from a specified path.

## SYNTAX

### Items (Default)
```
Add-KrFileServer [-Server <KestrunHost>] [-FileProvider <PhysicalFileProvider>] [-RequestPath <String>]
 [-EnableDirectoryBrowsing] [-RedirectToAppendTrailingSlash] [-PassThru] [<CommonParameters>]
```

### Options
```
Add-KrFileServer [-Server <KestrunHost>] -Options <FileServerOptions> [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to serve static files from a specified path using the Kestrun server.
It can be used to serve files like images, stylesheets, and scripts.

## EXAMPLES

### EXAMPLE 1
```powershell
$server | Add-KrFileServer -RequestPath '/files' -EnableDirectoryBrowsing
This example adds a file server to the server for the path '/files', enabling directory browsing.
The file server will use the default options for serving static files.
```

### EXAMPLE 2
```powershell
$server | Add-KrFileServer -Options $options
This example adds a file server to the server using the specified FileServerOptions.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the file server will be added.

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
The FileServerOptions to configure the file server.

```yaml
Type: FileServerOptions
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
The path at which the file server will be registered.

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

### -EnableDirectoryBrowsing
If specified, enables directory browsing for the file server.

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
If specified, the cmdlet will return the modified server instance.

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
