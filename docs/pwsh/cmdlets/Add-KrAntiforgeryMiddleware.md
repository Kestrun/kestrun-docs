---
layout: default
parent: PowerShell Cmdlets
title: Add-KrAntiforgeryMiddleware
nav_order: 1
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrAntiforgeryMiddleware

## SYNOPSIS
Adds an Antiforgery service to the server.

## SYNTAX

### Items (Default)
```
Add-KrAntiforgeryMiddleware [-Server <KestrunHost>] [-FormFieldName <String>] [-CookieName <String>]
 [-HeaderName <String>] [-SuppressXFrameOptionsHeader] [-SuppressReadingTokenFromFormBody] [-PassThru]
 [<CommonParameters>]
```

### Options
```
Add-KrAntiforgeryMiddleware [-Server <KestrunHost>] -Options <AntiforgeryOptions> [-PassThru]
 [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to configure the Antiforgery service for the Kestrun server.
It can be used to protect against Cross-Site Request Forgery (CSRF) attacks by generating and validating antiforgery tokens.

## EXAMPLES

### EXAMPLE 1
```powershell
$server | Add-KrAntiforgeryMiddleware -Cookie $cookieBuilder -FormField '__RequestVerificationToken' -HeaderName 'X-CSRF-Token' -SuppressXFrameOptionsHeader
This example adds an Antiforgery service to the server with a custom cookie builder, form field name, and header name.
```

### EXAMPLE 2
```powershell
$server | Add-KrAntiforgeryMiddleware -Options $options
This example adds an Antiforgery service to the server using the specified Antiforgery options.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the Antiforgery service will be added.

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
The Antiforgery options to configure the service.

```yaml
Type: AntiforgeryOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FormFieldName
The name of the form field to use for the Antiforgery token.
If not specified, the default will be used.

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

### -CookieName
The name of the cookie to use for the Antiforgery token.
Default is ".Kestrun.AntiXSRF".

```yaml
Type: String
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: .Kestrun.AntiXSRF
Accept pipeline input: False
Accept wildcard characters: False
```

### -HeaderName
The name of the header to use for the Antiforgery token.
Default is "X-CSRF-TOKEN".

```yaml
Type: String
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: X-CSRF-TOKEN
Accept pipeline input: False
Accept wildcard characters: False
```

### -SuppressXFrameOptionsHeader
If specified, the X-Frame-Options header will not be added to responses.

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

### -SuppressReadingTokenFromFormBody
If specified, the Antiforgery service will not read tokens from the form body.
This option is only available in .NET 9.0+ / PowerShell 7.6+.

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
If specified, the cmdlet will return the modified server instance after adding the Antiforgery service.

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
