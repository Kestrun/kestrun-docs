---
layout: default
parent: PowerShell Cmdlets
title: Add-KrForwardedHeader
nav_order: 24
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrForwardedHeader

## SYNOPSIS
Adds Forwarded Headers middleware to a Kestrun server.

## SYNTAX

### Items (Default)
```
Add-KrForwardedHeader [-Server <KestrunHost>] [-XForwardedFor] [-XForwardedProto] [-XForwardedHost]
 [-XForwardedPrefix] [-All] [-ForwardLimit <Int32>] [-KnownNetworks <String[]>] [-KnownProxies <String[]>]
 [-ForwardedForHeaderName <String>] [-ForwardedProtoHeaderName <String>] [-ForwardedHostHeaderName <String>]
 [-ForwardedPrefixHeaderName <String>] [-OriginalForHeaderName <String>] [-OriginalProtoHeaderName <String>]
 [-OriginalHostHeaderName <String>] [-OriginalPrefixHeaderName <String>] [-RequireHeaderSymmetry] [-PassThru]
 [<CommonParameters>]
```

### Options
```
Add-KrForwardedHeader [-Server <KestrunHost>] -Options <ForwardedHeadersOptions> [-PassThru]
 [<CommonParameters>]
```

## DESCRIPTION
This cmdlet adds and configures the ASP.NET Core Forwarded Headers middleware
for a Kestrun server.
This middleware processes proxy-related headers such as
X-Forwarded-For, X-Forwarded-Proto, X-Forwarded-Host, and X-Forwarded-Prefix to
update the request's Scheme, Host, and Remote IP address accordingly.
This is essential when hosting behind reverse proxies or load balancers that
modify these headers.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrForwardedHeader -XForwardedFor -XForwardedProto -KnownProxies $proxyIps
Adds Forwarded Headers middleware to the current Kestrun server, enabling
processing of X-Forwarded-For and X-Forwarded-Proto headers, and
trusting the specified proxy IP addresses.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the Forwarded Headers middleware will be added.
If not specified, the cmdlet will attempt to resolve the current server context.

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
An instance of Microsoft.AspNetCore.Builder.ForwardedHeadersOptions to configure
the middleware.
This allows for full customization of the middleware behavior.

```yaml
Type: ForwardedHeadersOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -XForwardedFor
Switch to enable processing of the X-Forwarded-For header.

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

### -XForwardedProto
Switch to enable processing of the X-Forwarded-Proto header.

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

### -XForwardedHost
Switch to enable processing of the X-Forwarded-Host header.

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

### -XForwardedPrefix
Switch to enable processing of the X-Forwarded-Prefix header.

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

### -All
Switch to enable processing of all supported forwarded headers.

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

### -ForwardLimit
Specifies the maximum number of entries to read from the forwarded headers.
Default is 1.

```yaml
Type: Int32
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: 1
Accept pipeline input: False
Accept wildcard characters: False
```

### -KnownNetworks
An array of IPNetwork objects representing known networks from which forwarded
headers will be accepted.

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

### -KnownProxies
An array of IPAddress objects representing known proxy servers from which
forwarded headers will be accepted.

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

### -ForwardedForHeaderName
Custom header name for X-Forwarded-For.

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

### -ForwardedProtoHeaderName
Custom header name for X-Forwarded-Proto.

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

### -ForwardedHostHeaderName
Custom header name for X-Forwarded-Host.

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

### -ForwardedPrefixHeaderName
Custom header name for X-Forwarded-Prefix.

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

### -OriginalForHeaderName
Custom header name for Original-For.

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

### -OriginalProtoHeaderName
Custom header name for Original-Proto.

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

### -OriginalHostHeaderName
Custom header name for Original-Host.

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

### -OriginalPrefixHeaderName
Custom header name for Original-Prefix.

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

### -RequireHeaderSymmetry
Switch to require that all enabled forwarded headers are present in the request.

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
If specified, the cmdlet returns the Kestrun server instance after adding
the middleware.

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
