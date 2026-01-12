---
layout: default
parent: PowerShell Cmdlets
nav_order: 173
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Set-KrCorsOrigin
---

# Set-KrCorsOrigin

## SYNOPSIS

Sets the CORS origin for a given CorsPolicyBuilder object.

## SYNTAX

### With (Default)

```powershell
Set-KrCorsOrigin -Builder <CorsPolicyBuilder> -Origins <string[]> [-AllowWildcardSubdomains]
 [<CommonParameters>]
```

### Any

```powershell
Set-KrCorsOrigin -Builder <CorsPolicyBuilder> -Any [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function sets the CORS origin for a given CorsPolicyBuilder object.
It supports setting the origin to any value, a specific set of origins, or allowing wildcard subdomains.

## EXAMPLES

### EXAMPLE 1

New-KrCorsPolicyBuilder | Set-KrCorsOrigin -Builder $corsPolicyBuilder -Any
Sets the CORS origin to any value.

### EXAMPLE 2

New-KrCorsPolicyBuilder | Set-KrCorsOrigin -Builder $corsPolicyBuilder -Origins @('http://example.com', 'https://example.com')
Sets the CORS origin to a specific set of origins.

## PARAMETERS

### -AllowWildcardSubdomains

If specified, allows wildcard subdomains for the CORS origin.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: With
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Any

If specified, sets the CORS origin to any value.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Any
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Builder

The CorsPolicyBuilder object to set the CORS origin for.

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

### -Origins

The specific set of origins to allow.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: With
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
