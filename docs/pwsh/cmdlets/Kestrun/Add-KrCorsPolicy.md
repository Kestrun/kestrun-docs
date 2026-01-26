---
layout: default
parent: PowerShell Cmdlets
nav_order: 14
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Add-KrCorsPolicy
---

# Add-KrCorsPolicy

## SYNOPSIS

Adds a CORS policy to the Kestrun server.

## SYNTAX

### Named (Default)

```powershell
Add-KrCorsPolicy -Builder <CorsPolicyBuilder> -Name <string> [-Server <KestrunHost>] [-PassThru]
 [<CommonParameters>]
```

### Default

```powershell
Add-KrCorsPolicy -Builder <CorsPolicyBuilder> -Default [-Server <KestrunHost>] [-PassThru]
 [<CommonParameters>]
```

### AllowAll-Named

```powershell
Add-KrCorsPolicy -Name <string> -AllowAll [-Server <KestrunHost>] [<CommonParameters>]
```

### AllowAll-Default

```powershell
Add-KrCorsPolicy -Default -AllowAll [-Server <KestrunHost>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function adds a CORS policy to the Kestrun server.
It can be used to configure CORS policies for the Kestrun server.

## EXAMPLES

### EXAMPLE 1

New-KrCorsPolicyBuilder | Set-KrCorsMethod -Any | Set-KrCorsHeader -Any | Add-KrCorsPolicy -Server $server -Name 'MyCORSPolicy'

### EXAMPLE 2

New-KrCorsPolicyBuilder | Set-KrCorsMethod -Any | Set-KrCorsHeader -Any | Add-KrCorsPolicy -Server $server -Default

### EXAMPLE 3

Add-KrCorsPolicy -Server $server -Default -AllowAll

### EXAMPLE 4

New-KrCorsPolicyBuilder | Set-KrCorsExposedHeader -Headers 'X-Total-Count','X-Page-Number'|
   Add-KrCorsPolicy -Server $server -Name 'MyCORSPolicy'

## PARAMETERS

### -AllowAll

Specifies that the CORS policy should allow all origins, methods, and headers.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AllowAll-Default
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AllowAll-Named
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

The CORS policy builder to be used to create the CORS policy.

```yaml
Type: Microsoft.AspNetCore.Cors.Infrastructure.CorsPolicyBuilder
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Default
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Named
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Default

Specifies that the CORS policy is the default policy.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AllowAll-Default
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Default
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Name

The name of the CORS policy to be added.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Named
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: AllowAll-Named
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

Specifies that the CORS policy builder should be passed through the pipeline.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Default
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Named
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server to which the CORS policy will be added.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.AspNetCore.Cors.Infrastructure.CorsPolicyBuilder

{{ Fill in the Description }}

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

## OUTPUTS

### Microsoft.AspNetCore.Cors.Infrastructure.CorsPolicyBuilder

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun runtime API and is used to configure CORS policies for the Kestrun server.


## RELATED LINKS

{{ Fill in the related links here }}
