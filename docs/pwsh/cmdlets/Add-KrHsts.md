---
layout: default
parent: PowerShell Cmdlets
title: Add-KrHsts
nav_order: 28
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrHsts

## SYNOPSIS
Adds HTTP Strict Transport Security (HSTS) middleware to a Kestrun server instance.

## SYNTAX

### Items (Default)
```
Add-KrHsts [-Server <KestrunHost>] [-MaxAgeDays <Int32>] [-IncludeSubDomains] [-Preload]
 [-ExcludedHosts <String[]>] [-AllowInDevelopment] [-PassThru] [<CommonParameters>]
```

### Options
```
Add-KrHsts [-Server <KestrunHost>] -Options <HstsOptions> [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
The Add-KrHsts cmdlet configures HTTP Strict Transport Security (HSTS)
for a Kestrun server instance.
HSTS is a web security policy mechanism that helps
to protect websites against protocol downgrade attacks and cookie hijacking.
It allows web servers to declare that web browsers (or other complying user agents)
should only interact with it using secure HTTPS connections, and never via the insecure HTTP protocol.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrHsts -MaxAgeDays 60 -IncludeSubDomains -Preload -PassThru
This example adds HSTS middleware to the current Kestrun server instance with a max age of 60 days,
includes subdomains, enables preload, and returns the modified server instance.
```

### EXAMPLE 2
```powershell
Add-KrHsts -MaxAgeDays 30 -IncludeSubDomains -Preload -AllowInDevelopment
This example enables HSTS for development/testing by clearing default excluded hosts.
Useful for testing HSTS behavior in non-production environments.
```

### EXAMPLE 3
```powershell
$options = [Microsoft.AspNetCore.HttpsPolicy.HstsOptions]::new()
$options.MaxAge = [TimeSpan]::FromDays(90)
$options.IncludeSubDomains = $true
Add-KrHsts -Options $options -PassThru
This example creates a HstsOptions object with a max age of 90 days and includes subdomains,
then adds the HSTS middleware to the current Kestrun server instance and returns the modified server instance.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the HSTS middleware will be added.
If not specified, the cmdlet will attempt to use the current server context.

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
A Microsoft.AspNetCore.HttpsPolicy.HstsOptions object that defines the configuration options for
the HSTS middleware.
If this parameter is provided, it takes precedence over the individual configuration
parameters (MaxAgeDays, IncludeSubDomains, Preload, ExcludedHosts).

```yaml
Type: HstsOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxAgeDays
The maximum duration (in days) that the browser should remember that a site is only to be accessed using HTTPS.
The default value is 30 days.

```yaml
Type: Int32
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: 30
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeSubDomains
A switch indicating whether the HSTS policy should also apply to all subdomains of the site.
If this switch is present, the IncludeSubDomains directive will be included in the HSTS header.

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

### -Preload
A switch indicating whether the site should be included in browsers' HSTS preload list.
If this switch is present, the Preload directive will be included in the HSTS header.

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

### -ExcludedHosts
An array of hostnames that should be excluded from the HSTS policy.
These hosts will not receive the HSTS header.

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

### -AllowInDevelopment
A switch that allows HSTS to work in development environments by clearing the default excluded hosts.
By default, ASP.NET Core excludes localhost and development hosts from HSTS for security.
Use this switch to enable HSTS for testing and development scenarios.

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
If this switch is specified, the cmdlet will return the modified Kestrun server instance
after adding the HSTS middleware.
This allows for further chaining of cmdlets or inspection of
the server instance.

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
