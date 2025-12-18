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
ms.date: 12/18/2025
PlatyPS schema version: 2024-05-01
title: Set-KrServerNamedPipeOptions
---

# Set-KrServerNamedPipeOptions

## SYNOPSIS

Sets the named pipe options for a Kestrun server instance. (Windows Operating Systems only)

## SYNTAX

### Items (Default)

```powershell
Set-KrServerNamedPipeOptions [-Server <KestrunHost>] [-ListenerQueueCount <int>]
 [-MaxReadBufferSize <long>] [-CurrentUserOnly] [-MaxWriteBufferSize <long>]
 [-PipeSecurity <PipeSecurity>] [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Set-KrServerNamedPipeOptions -Options <NamedPipeTransportOptions> [-Server <KestrunHost>]
 [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function sets the named pipe options for the specified Kestrun server instance, allowing for configuration of various named pipe transport settings.

## EXAMPLES

### EXAMPLE 1

Set-KrServerNamedPipeOptions -Server $server -ListenerQueueCount 5 -MaxReadBufferSize 65536
This command sets the named pipe options for the specified Kestrun server instance, configuring the listener queue count and maximum read buffer size.

### EXAMPLE 2

Set-KrServerNamedPipeOptions -Server $server -CurrentUserOnly
This command configures the named pipe options for the specified Kestrun server instance to restrict access to the current user only.

## PARAMETERS

### -CurrentUserOnly

If specified, the named pipe will only be accessible by the current user.
This parameter is optional and can be left unset to use defaults.

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

### -ListenerQueueCount

Specifies the number of named pipe listener queues to create for the server.
This parameter is optional and can be set to a specific value or left unset to use defaults.

```yaml
Type: System.Int32
DefaultValue: 0
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

### -MaxReadBufferSize

Specifies the maximum size, in bytes, of the read buffer for named pipe connections.
This parameter is optional and can be set to a specific value or left unset to use defaults.

```yaml
Type: System.Int64
DefaultValue: 0
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

### -MaxWriteBufferSize

Specifies the maximum size, in bytes, of the write buffer for named pipe connections.
This parameter is optional and can be set to a specific value or left unset to use defaults.

```yaml
Type: System.Int64
DefaultValue: 0
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

The NamedPipeTransportOptions object containing the desired named pipe configuration settings.
This parameter is mandatory when using the 'Options' parameter set.

```yaml
Type: Microsoft.AspNetCore.Server.Kestrel.Transport.NamedPipes.NamedPipeTransportOptions
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

If specified, the cmdlet will return the modified server instance after applying the named pipe options.

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

### -PipeSecurity

Specifies the PipeSecurity object to apply to the named pipe.
This parameter is optional and can be set to a specific value or left unset to use defaults.

```yaml
Type: System.IO.Pipes.PipeSecurity
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

### -Server

The Kestrun server instance to configure.
This parameter is mandatory and must be a valid server object.

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

### [Kestrun.Hosting.KestrunHost]
The modified Kestrun server instance with the updated named pipe options.

{{ Fill in the Description }}

## NOTES

This function is for Windows Operating Systems only, as named pipes are not supported on Unix-based systems.
The named pipe options will be applied to the server's options and will be used when the server is started to listen for incoming requests on the specified named pipe.
The named pipe transport options can be configured to optimize performance and security based on the specific requirements of the Kestrun server deployment.
The named pipe transport options can be set either by providing a complete NamedPipeTransportOptions object
This function is designed to be used in the context of a Kestrun server setup and allows for flexible configuration of named pipe transport options.


## RELATED LINKS

{{ Fill in the related links here }}
