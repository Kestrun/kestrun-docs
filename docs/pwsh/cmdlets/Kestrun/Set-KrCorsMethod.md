---
layout: default
parent: PowerShell Cmdlets
nav_order: 177
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Set-KrCorsMethod
---

# Set-KrCorsMethod

## SYNOPSIS

Sets the methods for a CORS policy in a .NET Core application.

## SYNTAX

### With (Default)

```powershell
Set-KrCorsMethod -Builder <CorsPolicyBuilder> -Methods <string[]> [<CommonParameters>]
```

### Any

```powershell
Set-KrCorsMethod -Builder <CorsPolicyBuilder> -Any [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function sets the methods for a CORS policy in a .NET Core application.
It takes a `CorsPolicyBuilder` object and either allows any method or specifies a list of methods.

## EXAMPLES

### EXAMPLE 1

New-KrCorsPolicyBuilder | Set-KrCorsMethod -Any

### EXAMPLE 2

New-KrCorsPolicyBuilder | Set-KrCorsMethod -Methods @('GET', 'POST', 'PUT', 'DELETE')

## PARAMETERS

### -Any

If specified, allows any HTTP method in the CORS policy.

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

The `CorsPolicyBuilder` object to configure.

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

### -Methods

A list of HTTP methods to allow in the CORS policy.

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
