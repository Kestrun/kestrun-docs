---
layout: default
parent: PowerShell Cmdlets
title: Add-KrHostFiltering
nav_order: 29
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrHostFiltering

## SYNOPSIS
Adds Host Filtering middleware to a Kestrun server instance.

## SYNTAX

### Items (Default)
```
Add-KrHostFiltering [-Server <KestrunHost>] [-AllowedHosts <String[]>] [-NotAllowEmptyHosts]
 [-ExcludeFailureMessage] [-PassThru] [<CommonParameters>]
```

### Options
```
Add-KrHostFiltering [-Server <KestrunHost>] -Options <HostFilteringOptions> [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet adds the Host Filtering middleware to a Kestrun server instance, allowing you to configure host filtering options.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrHostFiltering -AllowedHosts "example.com", "www.example.com" -PassThru
This example adds Host Filtering middleware to the current Kestrun server instance, allowing only requests with Host headers
matching "example.com" or "www.example.com", and returns the modified server instance.
```

### EXAMPLE 2
```powershell
$options = [Microsoft.AspNetCore.HostFiltering.HostFilteringOptions]::new()
$options.AllowedHosts.Add("example.com")
$options.AllowEmptyHosts = $true
Add-KrHostFiltering -Options $options -PassThru
This example creates a HostFilteringOptions object that allows requests with the Host header "example.com"
and allows empty Host headers, then adds the Host Filtering middleware to the current Kestrun server instance and returns the modified server instance.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the Host Filtering middleware will be added.
If not specified, the cmdlet will attempt to use the current Kestrun server instance.

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
A Microsoft.AspNetCore.HostFiltering.HostFilteringOptions object that defines the configuration options for the Host Filtering middleware.
If this parameter is provided, it takes precedence over the individual configuration parameters (AllowedHosts, AllowEmptyHosts, IncludeFailureMessage).

```yaml
Type: HostFilteringOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowedHosts
The hosts headers that are allowed to access this site.
At least one value is required.
Port numbers must be excluded.
A top level wildcard "*" allows all non-empty hosts.
Subdomain wildcards are permitted.
E.g.
"*.example.com" matches subdomains like foo.example.com, but not the parent domain example.com.
Unicode host names are allowed but will be converted to punycode for matching.
IPv6 addresses must include their bounding brackets and be in their normalized form.

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

### -NotAllowEmptyHosts
A switch indicating whether requests with an empty Host header should be allowed.
If this switch is present, requests with an empty Host header will be rejected.

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

### -ExcludeFailureMessage
A switch indicating whether to exclude the failure message in the response when a request is rejected due to host filtering.
If this switch is present, the failure message will be excluded from the response.

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
after adding the Host Filtering middleware.
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
