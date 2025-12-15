---
layout: default
parent: PowerShell Cmdlets
nav_order: 24
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Add-KrFaviconMiddleware
---

# Add-KrFaviconMiddleware

## SYNOPSIS

Adds a favicon to the Kestrun server.

## SYNTAX

### __AllParameterSets

```powershell
Add-KrFaviconMiddleware [[-Server] <KestrunHost>] [[-IconPath] <string>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet allows you to register a favicon for the Kestrun server.
It can be used to set a custom favicon for the server's web interface.

## EXAMPLES

### EXAMPLE 1

$server | Add-KrFaviconMiddleware -IconPath 'C:\path\to\favicon.ico'
This example adds a custom favicon to the server from the specified path.

### EXAMPLE 2

$server | Add-KrFaviconMiddleware
This example adds the default embedded favicon to the server.

## PARAMETERS

### -IconPath

The path to the favicon file.
If not specified, a default embedded favicon will be used.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If specified, returns the modified server instance after adding the favicon.

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

The Kestrun server instance to which the favicon will be added.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
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

This cmdlet is used to register a favicon for the Kestrun server, allowing you to set a custom favicon for the server's web interface.
If no icon path is specified, the default embedded favicon will be used.


## RELATED LINKS

{{ Fill in the related links here }}
