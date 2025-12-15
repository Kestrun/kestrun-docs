---
layout: default
parent: PowerShell Cmdlets
nav_order: 33
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Add-KrHsts
---

# Add-KrHsts

## SYNOPSIS

Adds HTTP Strict Transport Security (HSTS) middleware to a Kestrun server instance.

## SYNTAX

### Items (Default)

```powershell
Add-KrHsts [-Server <KestrunHost>] [-MaxAgeDays <int>] [-IncludeSubDomains] [-Preload]
 [-ExcludedHosts <string[]>] [-AllowInDevelopment] [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Add-KrHsts -Options <HstsOptions> [-Server <KestrunHost>] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Add-KrHsts cmdlet configures HTTP Strict Transport Security (HSTS)
for a Kestrun server instance.
HSTS is a web security policy mechanism that helps
to protect websites against protocol downgrade attacks and cookie hijacking.
It allows web servers to declare that web browsers (or other complying user agents)
should only interact with it using secure HTTPS connections, and never via the insecure HTTP protocol.

## EXAMPLES

### EXAMPLE 1

Add-KrHsts -MaxAgeDays 60 -IncludeSubDomains -Preload -PassThru
This example adds HSTS middleware to the current Kestrun server instance with a max age of 60 days,
includes subdomains, enables preload, and returns the modified server instance.

### EXAMPLE 2

Add-KrHsts -MaxAgeDays 30 -IncludeSubDomains -Preload -AllowInDevelopment
This example enables HSTS for development/testing by clearing default excluded hosts.
Useful for testing HSTS behavior in non-production environments.

### EXAMPLE 3

$options = [Microsoft.AspNetCore.HttpsPolicy.HstsOptions]::new()
$options.MaxAge = [TimeSpan]::FromDays(90)
$options.IncludeSubDomains = $true
Add-KrHsts -Options $options -PassThru
This example creates a HstsOptions object with a max age of 90 days and includes subdomains,
then adds the HSTS middleware to the current Kestrun server instance and returns the modified server instance.

## PARAMETERS

### -AllowInDevelopment

A switch that allows HSTS to work in development environments by clearing the default excluded hosts.
By default, ASP.NET Core excludes localhost and development hosts from HSTS for security.
Use this switch to enable HSTS for testing and development scenarios.

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

### -ExcludedHosts

An array of hostnames that should be excluded from the HSTS policy.
These hosts will not receive the HSTS header.

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

### -IncludeSubDomains

A switch indicating whether the HSTS policy should also apply to all subdomains of the site.
If this switch is present, the IncludeSubDomains directive will be included in the HSTS header.

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

### -MaxAgeDays

The maximum duration (in days) that the browser should remember that a site is only to be accessed using HTTPS.
The default value is 30 days.

```yaml
Type: System.Int32
DefaultValue: 30
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

A Microsoft.AspNetCore.HttpsPolicy.HstsOptions object that defines the configuration options for
the HSTS middleware.
If this parameter is provided, it takes precedence over the individual configuration
parameters (MaxAgeDays, IncludeSubDomains, Preload, ExcludedHosts).

```yaml
Type: Microsoft.AspNetCore.HttpsPolicy.HstsOptions
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
after adding the HSTS middleware.
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

### -Preload

A switch indicating whether the site should be included in browsers' HSTS preload list.
If this switch is present, the Preload directive will be included in the HSTS header.

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

### -Server

The Kestrun server instance to which the HSTS middleware will be added.
If not specified, the cmdlet will attempt to use the current server context.

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
