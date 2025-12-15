---
layout: default
parent: PowerShell Cmdlets
nav_order: 133
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: New-KrCorsPolicyBuilder
---

# New-KrCorsPolicyBuilder

## SYNOPSIS

Creates a new CORS policy builder.

## SYNTAX

### __AllParameterSets

```powershell
New-KrCorsPolicyBuilder [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function creates a new CORS policy builder, which can be used to configure CORS (Cross-Origin Resource Sharing) policies in an ASP.NET Core application.

## EXAMPLES

### EXAMPLE 1

New-KrCorsPolicyBuilder | Set-KrCorsMethod -Any | Set-KrCorsHeader -Any | Add-KrCorsPolicy -Server $server -Name 'MyCORSPolicy'

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.AspNetCore.Cors.Infrastructure.CorsPolicyBuilder

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
