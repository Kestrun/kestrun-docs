---
layout: default
parent: PowerShell Cmdlets
nav_order: 171
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Set-KrCorsCredential
---

# Set-KrCorsCredential

## SYNOPSIS

Set the CORS credentials policy for a given CorsPolicyBuilder object.

## SYNTAX

### Allow (Default)

```powershell
Set-KrCorsCredential -Builder <CorsPolicyBuilder> [-Allow] [<CommonParameters>]
```

### Disallow

```powershell
Set-KrCorsCredential -Builder <CorsPolicyBuilder> [-Disallow] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function sets the CORS credentials policy for a given CorsPolicyBuilder object.
It can either allow or disallow credentials based on the provided parameters.
The function uses the CorsPolicyBuilder object to configure the CORS policy.
The function can be used in a pipeline to configure the CORS policy for a given CorsPolicy
object.

## EXAMPLES

### EXAMPLE 1

$corsBuilder = New-KrCorsPolicyBuilder  | Set-KrCorsCredential -Allow

### EXAMPLE 2

$corsBuilder = New-KrCorsPolicyBuilder  | Set-KrCorsCredential -Disallow

## PARAMETERS

### -Allow

Allows credentials in the CORS policy.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Allow
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Builder

The CorsPolicyBuilder object to configure.

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

### -Disallow

Disallows credentials in the CORS policy.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Disallow
  Position: Named
  IsRequired: false
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
