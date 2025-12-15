---
layout: default
parent: PowerShell Cmdlets
nav_order: 13
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.cors.infrastructure.corspolicybuilder?view=aspnetcore-8.0
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Add-KrCorsPolicyMiddleware
---

# Add-KrCorsPolicyMiddleware

## SYNOPSIS

Adds a CORS policy to the server.

## SYNTAX

### Items (Default)

```powershell
Add-KrCorsPolicyMiddleware -Name <string> [-Server <KestrunHost>] [-AllowAnyOrigin]
 [-AllowAnyMethod] [-AllowAnyHeader] [-AllowCredentials] [-DisallowCredentials] [-PassThru]
 [<CommonParameters>]
```

### Options

```powershell
Add-KrCorsPolicyMiddleware -Name <string> -Builder <CorsPolicyBuilder> [-Server <KestrunHost>]
 [-PassThru] [<CommonParameters>]
```

### AllowAll

```powershell
Add-KrCorsPolicyMiddleware -Name <string> [-Server <KestrunHost>] [-AllowAll] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet allows you to configure a CORS policy for the Kestrun server.
It can be used to specify allowed origins, methods, headers, and other CORS settings.

## EXAMPLES

### EXAMPLE 1

$server | Add-KrCorsPolicyMiddleware -Name 'AllowAll' -AllowAnyOrigin -AllowAnyMethod -AllowAnyHeader
This example adds a CORS policy named 'AllowAll' to the server, allowing any origin, method, and header.

### EXAMPLE 2

$server | Add-KrCorsPolicyMiddleware -Name 'CustomPolicy' -Builder $builder
This example adds a CORS policy named 'CustomPolicy' to the server using the specified CORS policy builder.

### EXAMPLE 3

$server | Add-KrCorsPolicyMiddleware -Server $server -Name 'CustomPolicy' -AllowAnyOrigin -AllowAnyMethod -AllowAnyHeader
This example adds a CORS policy named 'CustomPolicy' to the server, allowing any origin, method, and header.

## PARAMETERS

### -AllowAll

If specified, allows any origin, method, and header to access the resources.
This is a shorthand for specifying AllowAnyOrigin, AllowAnyMethod, and AllowAnyHeader

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AllowAll
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AllowAnyHeader

If specified, allows any header to be included in requests.
If not specified, only headers explicitly allowed will be included.

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

### -AllowAnyMethod

If specified, allows any HTTP method to be used in requests.

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

### -AllowAnyOrigin

If specified, allows any origin to access the resources.

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

### -AllowCredentials

If specified, allows credentials (cookies, authorization headers, etc.) to be included in requests.

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

### -Builder

The CORS policy builder to configure the CORS policy.

```yaml
Type: Microsoft.AspNetCore.Cors.Infrastructure.CorsPolicyBuilder
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

### -DisallowCredentials

If specified, disallows credentials in requests.
If not specified, credentials will be allowed.

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

### -Name

The name of the CORS policy.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
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

If specified, returns the modified server instance after adding the CORS policy.

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

The Kestrun server instance to which the CORS policy will be added.

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

This cmdlet is used to configure CORS policies for the Kestrun server, allowing you to control cross-origin requests and specify which origins, methods, and headers are allowed.


## RELATED LINKS

- [](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.cors.infrastructure.corspolicybuilder?view=aspnetcore-8.0)