---
layout: default
parent: PowerShell Cmdlets
nav_order: 32
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Add-KrHostFiltering
---

# Add-KrHostFiltering

## SYNOPSIS

Adds Host Filtering middleware to a Kestrun server instance.

## SYNTAX

### Items (Default)

```powershell
Add-KrHostFiltering [-Server <KestrunHost>] [-AllowedHosts <string[]>] [-NotAllowEmptyHosts]
 [-ExcludeFailureMessage] [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Add-KrHostFiltering -Options <HostFilteringOptions> [-Server <KestrunHost>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet adds the Host Filtering middleware to a Kestrun server instance, allowing you to configure host filtering options.

## EXAMPLES

### EXAMPLE 1

Add-KrHostFiltering -AllowedHosts "example.com", "www.example.com" -PassThru
This example adds Host Filtering middleware to the current Kestrun server instance, allowing only requests with Host headers
matching "example.com" or "www.example.com", and returns the modified server instance.

### EXAMPLE 2

$options = [Microsoft.AspNetCore.HostFiltering.HostFilteringOptions]::new()
$options.AllowedHosts.Add("example.com")
$options.AllowEmptyHosts = $true
Add-KrHostFiltering -Options $options -PassThru
This example creates a HostFilteringOptions object that allows requests with the Host header "example.com"
and allows empty Host headers, then adds the Host Filtering middleware to the current Kestrun server instance and returns the modified server instance.

## PARAMETERS

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
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ExcludeFailureMessage

A switch indicating whether to exclude the failure message in the response when a request is rejected due to host filtering.
If this switch is present, the failure message will be excluded from the response.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -NotAllowEmptyHosts

A switch indicating whether requests with an empty Host header should be allowed.
If this switch is present, requests with an empty Host header will be rejected.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Options

A Microsoft.AspNetCore.HostFiltering.HostFilteringOptions object that defines the configuration options for the Host Filtering middleware.
If this parameter is provided, it takes precedence over the individual configuration parameters (AllowedHosts, AllowEmptyHosts, IncludeFailureMessage).

```yaml
Type: Microsoft.AspNetCore.HostFiltering.HostFilteringOptions
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Options
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If this switch is specified, the cmdlet will return the modified Kestrun server instance
after adding the Host Filtering middleware.
This allows for further chaining of cmdlets or inspection of
the server instance.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance to which the Host Filtering middleware will be added.
If not specified, the cmdlet will attempt to use the current Kestrun server instance.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This cmdlet is part of the Kestrun PowerShell module.


## RELATED LINKS

{{ Fill in the related links here }}
