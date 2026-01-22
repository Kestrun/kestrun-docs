---
layout: default
parent: PowerShell Cmdlets
nav_order: 45
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Add-KrNamedPipeListener
---

# Add-KrNamedPipeListener

## SYNOPSIS

Adds a named pipe listener to a Kestrun server instance.

## SYNTAX

### NoCert (Default)

```powershell
Add-KrNamedPipeListener [[-Server] <KestrunHost>] [-NamedPipeName] <string> [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function adds a named pipe listener to the specified Kestrun server instance, allowing it to listen for incoming requests on the specified named pipe.

## EXAMPLES

### EXAMPLE 1

Add-KrNamedPipeListener -Server $server -NamedPipeName "MyNamedPipe"
Adds a named pipe listener with the specified name to the given Kestrun server instance.

## PARAMETERS

### -NamedPipeName

The name of the named pipe on which the server will listen for incoming requests.
This parameter is mandatory.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If specified, the cmdlet will return the modified server instance after adding the named pipe listener

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

The Kestrun server instance to which the named pipe listener will be added.
This parameter is optional and can be provided via pipeline input.

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

This function is designed to be used in the context of a Kestrun server setup and allows for flexible configuration of named pipe listeners.
The named pipe listener will be added to the server's options and will be used when the server is started to listen for incoming requests on the specified named pipe.


## RELATED LINKS

{{ Fill in the related links here }}
