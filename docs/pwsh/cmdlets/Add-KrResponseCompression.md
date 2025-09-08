---
layout: default
parent: PowerShell Cmdlets
title: Add-KrResponseCompression
nav_order: 30
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrResponseCompression

## SYNOPSIS
Adds response compression to the server.

## SYNTAX

### Items (Default)
```
Add-KrResponseCompression [-Server <KestrunHost>] [-EnableForHttps] [-MimeTypes <String[]>]
 [-ExcludedMimeTypes <String[]>] [-PassThru] [<CommonParameters>]
```

### Options
```
Add-KrResponseCompression [-Server <KestrunHost>] -Options <ResponseCompressionOptions> [-PassThru]
 [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to configure response compression for the Kestrun server.
It can be used to compress responses using various algorithms like Gzip, Brotli, etc.

## EXAMPLES

### EXAMPLE 1
```powershell
$server | Add-KrResponseCompression -EnableForHttps -MimeTypes 'text/plain', 'application/json' -ExcludedMimeTypes 'image/*' -Providers $gzipProvider, $brotliProvider
This example adds response compression to the server, enabling it for HTTPS requests, and specifying the MIME types to compress and exclude, as well as the compression providers to use.
```

### EXAMPLE 2
```powershell
$server | Add-KrResponseCompression -Options $options
This example adds response compression to the server using the specified ResponseCompressionOptions.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the response compression will be added.

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
The ResponseCompressionOptions to configure the response compression.

```yaml
Type: ResponseCompressionOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableForHttps
If specified, enables response compression for HTTPS requests.

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

### -MimeTypes
An array of MIME types to compress.
If not specified, defaults to common text-based MIME types.

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

### -ExcludedMimeTypes
An array of MIME types to exclude from compression.

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
This cmdlet is used to configure response compression for the Kestrun server, allowing you to specify which MIME types should be compressed and which should be excluded.
Providers is not supported yet.

## RELATED LINKS
