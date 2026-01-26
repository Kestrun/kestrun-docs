---
layout: default
parent: PowerShell Cmdlets
nav_order: 186
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Set-KrServerLimit
---

# Set-KrServerLimit

## SYNOPSIS

Configures advanced options and operational limits for a Kestrun server instance.

## SYNTAX

### __AllParameterSets

```powershell
Set-KrServerLimit [[-Server] <KestrunHost>] [[-MaxRequestBodySize] <long>]
 [[-MaxConcurrentConnections] <int>] [[-MaxRequestHeaderCount] <int>]
 [[-KeepAliveTimeoutSeconds] <int>] [[-MaxRequestBufferSize] <long>]
 [[-MaxRequestHeadersTotalSize] <int>] [[-MaxRequestLineSize] <int>]
 [[-MaxResponseBufferSize] <long>] [[-MinRequestBodyDataRate] <MinDataRate>]
 [[-MinResponseDataRate] <MinDataRate>] [[-RequestHeadersTimeoutSeconds] <int>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function allows administrators to fine-tune the behavior of a Kestrun server by setting various
operational limits and options.

## EXAMPLES

### EXAMPLE 1

Set-KrServerLimit -Server $server -MaxRequestBodySize 30000000
Applies the specified limits to the Kestrun server instance.

### EXAMPLE 2

Set-KrServerLimit -Server $server -MinRequestBodyDataRate 240
Sets the minimum data rate for receiving the request body.

### EXAMPLE 3

Set-KrServerLimit -Server $server -MaxResponseBufferSize 65536
Sets the maximum size of the buffer used for sending HTTP responses.

### EXAMPLE 4

Set-KrServerLimit -Server $server -MinResponseDataRate 240
Sets the minimum data rate for sending the response.

### EXAMPLE 5

Set-KrServerLimit -Server $server -MaxRequestBodySize 30000000
Applies the specified limits to the Kestrun server instance.

## PARAMETERS

### -KeepAliveTimeoutSeconds

Specifies the duration, in seconds, that a connection is kept alive when idle before being closed.
Default: 120 seconds.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MaxConcurrentConnections

Sets the maximum number of concurrent client connections allowed to the server.
Additional connection attempts will be queued or rejected.
Default: Unlimited (no explicit limit).

```yaml
Type: System.Int32
DefaultValue: 0
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

### -MaxRequestBodySize

Specifies the maximum allowed size of the HTTP request body in bytes.
Requests exceeding this size will be rejected.
Default: 30,000,000 bytes (28.6 MB).

```yaml
Type: System.Int64
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

### -MaxRequestBufferSize

Sets the maximum size, in bytes, of the buffer used for reading HTTP requests.
Default: 1048576 bytes (1 MB).

```yaml
Type: System.Int64
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MaxRequestHeaderCount

Defines the maximum number of HTTP headers permitted in a single request.
Requests with more headers will be rejected.
Default: 100.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MaxRequestHeadersTotalSize

Specifies the maximum combined size, in bytes, of all HTTP request headers.
Requests exceeding this size will be rejected.
Default: 32768 bytes (32 KB).

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MaxRequestLineSize

Sets the maximum allowed length, in bytes, of the HTTP request line (method, URI, and version).
Default: 8192 bytes (8 KB).

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MaxResponseBufferSize

Specifies the maximum size, in bytes, of the buffer used for sending HTTP responses.
Default: 65536 bytes (64 KB).

```yaml
Type: System.Int64
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 8
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MinRequestBodyDataRate

Defines the minimum data rate, in bytes per second, required for receiving the request body.
If the rate falls below this threshold, the connection may be closed.
Default: 240 bytes/second.

```yaml
Type: Microsoft.AspNetCore.Server.Kestrel.Core.MinDataRate
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 9
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MinResponseDataRate

Sets the minimum data rate, in bytes per second, required for sending the response.
Default: 240 bytes/second.

```yaml
Type: Microsoft.AspNetCore.Server.Kestrel.Core.MinDataRate
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 10
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

### -RequestHeadersTimeoutSeconds

Specifies the maximum time, in seconds, allowed to receive the complete set of request headers.
Default: 30 seconds.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 11
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance to configure.This parameter is mandatory and must be a valid server object.

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

### [Kestrun.Hosting.KestrunHost]
The modified Kestrun server instance after applying the limits.

{{ Fill in the Description }}

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This cmdlet modifies the server instance's configuration to enforce the specified limits.


## RELATED LINKS

{{ Fill in the related links here }}
