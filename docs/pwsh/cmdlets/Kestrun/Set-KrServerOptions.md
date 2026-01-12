---
layout: default
parent: PowerShell Cmdlets
nav_order: 183
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Set-KrServerOptions
---

# Set-KrServerOptions

## SYNOPSIS

Configures advanced options and operational limits for a Kestrun server instance.

## SYNTAX

### __AllParameterSets

```powershell
Set-KrServerOptions [[-Server] <KestrunHost>] [[-MaxRunspaces] <int>] [[-MinRunspaces] <int>]
 [-AllowSynchronousIO] [-DisableResponseHeaderCompression] [-DenyServerHeader]
 [-AllowAlternateSchemes] [-AllowHostHeaderOverride] [-DisableStringReuse] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Set-KrServerOptions function allows fine-grained configuration of a Kestrun server instance.
It enables administrators to control server behavior, resource usage, and protocol compliance by
setting limits on request sizes, connection counts, timeouts, and other operational parameters.
Each parameter is optional and, if not specified, the server will use its built-in default value.

## EXAMPLES

### EXAMPLE 1

Set-KrServerOptions -Server $srv -MaxRequestBodySize 1000000
Configures the server instance $srv to limit request body size to 1,000,000 bytes.

### EXAMPLE 2

Set-KrServerOptions -Server $srv -AllowSynchronousIO
Configures the server instance $srv to allow synchronous IO operations.

## PARAMETERS

### -AllowAlternateSchemes

If set to $true, allows alternate URI schemes (other than HTTP/HTTPS) in requests.
Default: $false.

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

### -AllowHostHeaderOverride

If set to $true, permits overriding the Host header in incoming requests.
Default: $false.

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

### -AllowSynchronousIO

If set to $true, allows synchronous IO operations on the server.
Synchronous IO can impact scalability and is generally discouraged.
Default: $false.

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

### -DenyServerHeader

If set to $true, removes the 'Server' HTTP header from responses for improved privacy and security.
Default: $false.

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

### -DisableResponseHeaderCompression

If set to $true, disables compression of HTTP response headers.
Default: $false.

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

### -DisableStringReuse

If set to $true, disables internal string reuse optimizations, which may increase memory usage but can help with certain debugging scenarios.
Default: $false.

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

### -MaxRunspaces

Specifies the maximum number of runspaces to use for script execution.
This can help control resource usage and concurrency in script execution.
Default: 2x CPU cores or as specified in the KestrunOptions.

```yaml
Type: System.Int32
DefaultValue: 0
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

### -MinRunspaces

Specifies the minimum number of runspaces to use for script execution.
This ensures that at least a certain number of runspaces are always available for processing requests.
Default: 1.

```yaml
Type: System.Int32
DefaultValue: 1
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If specified, the cmdlet will return the modified server instance after applying the limits.

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

The Kestrun server instance to configure.
This parameter is mandatory and must be a valid server object.

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

## NOTES

All parameters are optional except for -Server.
Defaults are based on typical Kestrun server settings as of the latest release.


## RELATED LINKS

{{ Fill in the related links here }}
