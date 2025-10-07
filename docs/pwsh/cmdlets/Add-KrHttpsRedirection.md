---
layout: default
parent: PowerShell Cmdlets
title: Add-KrHttpsRedirection
nav_order: 28
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrHttpsRedirection

## SYNOPSIS
Adds HTTPS redirection middleware to the Kestrun server.

## SYNTAX

### Items (Default)
```
Add-KrHttpsRedirection [-Server <KestrunHost>] [-RedirectStatusCode <Int32>] [-HttpsPort <Int32>] [-PassThru]
 [<CommonParameters>]
```

### Options
```
Add-KrHttpsRedirection [-Server <KestrunHost>] -Options <HttpsRedirectionOptions> [-PassThru]
 [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to add HTTPS redirection middleware to a Kestrun server instance.
It can be used to enforce HTTPS by redirecting HTTP requests to HTTPS.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrHttpsRedirection -Server $myServer -RedirectStatusCode 301 -HttpsPort 8443
Adds HTTPS redirection middleware to the specified Kestrun server instance,
using a 301 (Permanent Redirect) status code and redirecting to port 8443.
```

### EXAMPLE 2
```powershell
$options = [Microsoft.AspNetCore.HttpsPolicy.HttpsRedirectionOptions]::new()
$options.RedirectStatusCode = 308
$options.HttpsPort = 8443
Add-KrHttpsRedirection -Server $myServer -Options $options -PassThru
Adds HTTPS redirection middleware to the specified Kestrun server instance,
using the provided HttpsRedirectionOptions and returns the modified server instance.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the HTTPS redirection middleware will be added.

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
An instance of HttpsRedirectionOptions to configure the HTTPS redirection behavior.
If this parameter is provided, it takes precedence over the individual parameters.

```yaml
Type: HttpsRedirectionOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RedirectStatusCode
The HTTP status code to use for redirection.
Default is 307 (Temporary Redirect).
This parameter is ignored if the Options parameter is provided.

```yaml
Type: Int32
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: 307
Accept pipeline input: False
Accept wildcard characters: False
```

### -HttpsPort
The HTTPS port to which requests should be redirected.
If not specified, the default port (443) is used.
This parameter is ignored if the Options parameter is provided.

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

### -PassThru
If specified, the cmdlet returns the modified Kestrun server instance.

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
This cmdlet is part of the Kestrun PowerShell module.

## RELATED LINKS
