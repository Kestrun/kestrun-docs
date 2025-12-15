---
layout: default
parent: PowerShell Cmdlets
nav_order: 165
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Set-KrCorsPreflightMaxAge
---

# Set-KrCorsPreflightMaxAge

## SYNOPSIS

Sets the preflight max age for CORS policies in ASP.NET Core.

## SYNTAX

### TimeSpan (Default)

```powershell
Set-KrCorsPreflightMaxAge -Builder <CorsPolicyBuilder> -MaxAge <timespan> [<CommonParameters>]
```

### Seconds

```powershell
Set-KrCorsPreflightMaxAge -Builder <CorsPolicyBuilder> -Seconds <int> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function sets the preflight max age for CORS policies in ASP.NET Core.
It takes a CorsPolicyBuilder object and a TimeSpan object as input parameters.
The SetPreflightMaxAge method of the CorsPolicyBuilder object is called with the provided TimeSpan object to set the preflight max age.
The modified CorsPolicyBuilder object is then returned.

## EXAMPLES

### EXAMPLE 1

New-KrCorsPolicyBuilder | Set-KrCorsPreflightMaxAge -MaxAge (New-TimeSpan -Hours 24) | Add-KrCorsPolicy -Server $server -Name 'MyCORSPolicy'

### EXAMPLE 2

New-KrCorsPolicyBuilder | Set-KrCorsPreflightMaxAge -Seconds 86400 | Add-KrCorsPolicy -Name 'MyCORSPolicy'

## PARAMETERS

### -Builder

The CorsPolicyBuilder object to set the preflight max age for.

```yaml
Type: Microsoft.AspNetCore.Cors.Infrastructure.CorsPolicyBuilder
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MaxAge

The TimeSpan object representing the preflight max age to set.

```yaml
Type: System.TimeSpan
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: TimeSpan
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Seconds

The number of seconds representing the preflight max age to set.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Seconds
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
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

### Microsoft.AspNetCore.Cors.Infrastructure.CorsPolicyBuilder

{{ Fill in the Description }}

## OUTPUTS

### Microsoft.AspNetCore.Cors.Infrastructure.CorsPolicyBuilder

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
