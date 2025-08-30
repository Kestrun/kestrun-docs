---
layout: default
parent: PowerShell Cmdlets
title: Set-KrServerLimit
nav_order: 91
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrServerLimit

## SYNOPSIS
Configures advanced options and operational limits for a Kestrun server instance.

## SYNTAX

```
Set-KrServerLimit [[-Server] <KestrunHost>] [[-MaxRequestBodySize] <Int64>]
 [[-MaxConcurrentConnections] <Int32>] [[-MaxRequestHeaderCount] <Int32>] [[-KeepAliveTimeoutSeconds] <Int32>]
 [[-MaxRequestBufferSize] <Int64>] [[-MaxRequestHeadersTotalSize] <Int32>] [[-MaxRequestLineSize] <Int32>]
 [[-MaxResponseBufferSize] <Int64>] [[-MinRequestBodyDataRate] <MinDataRate>]
 [[-MinResponseDataRate] <MinDataRate>] [[-RequestHeadersTimeoutSeconds] <Int32>] [-PassThru]
 [<CommonParameters>]
```

## DESCRIPTION
This function allows administrators to fine-tune the behavior of a Kestrun server by setting various
operational limits and options.

## EXAMPLES

### EXAMPLE 1
```powershell
Set-KrServerLimit -Server $server -MaxRequestBodySize 30000000
Applies the specified limits to the Kestrun server instance.
```

### EXAMPLE 2
```powershell
Set-KrServerLimit -Server $server -MinRequestBodyDataRate 240
Sets the minimum data rate for receiving the request body.
```

### EXAMPLE 3
```powershell
Set-KrServerLimit -Server $server -MaxResponseBufferSize 65536
Sets the maximum size of the buffer used for sending HTTP responses.
```

### EXAMPLE 4
```powershell
Set-KrServerLimit -Server $server -MinResponseDataRate 240
Sets the minimum data rate for sending the response.
```

### EXAMPLE 5
```powershell
Set-KrServerLimit -Server $server -MaxRequestBodySize 30000000
Applies the specified limits to the Kestrun server instance.
```

## PARAMETERS

### -Server
The Kestrun server instance to configure.This parameter is mandatory and must be a valid server object.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -MaxRequestBodySize
Specifies the maximum allowed size of the HTTP request body in bytes.
Requests exceeding this size will be rejected.
Default: 30,000,000 bytes (28.6 MB).

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxConcurrentConnections
Sets the maximum number of concurrent client connections allowed to the server.
Additional connection attempts will be queued or rejected.
Default: Unlimited (no explicit limit).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxRequestHeaderCount
Defines the maximum number of HTTP headers permitted in a single request.
Requests with more headers will be rejected.
Default: 100.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeepAliveTimeoutSeconds
Specifies the duration, in seconds, that a connection is kept alive when idle before being closed.
Default: 120 seconds.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxRequestBufferSize
Sets the maximum size, in bytes, of the buffer used for reading HTTP requests.
Default: 1048576 bytes (1 MB).

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxRequestHeadersTotalSize
Specifies the maximum combined size, in bytes, of all HTTP request headers.
Requests exceeding this size will be rejected.
Default: 32768 bytes (32 KB).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxRequestLineSize
Sets the maximum allowed length, in bytes, of the HTTP request line (method, URI, and version).
Default: 8192 bytes (8 KB).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxResponseBufferSize
Specifies the maximum size, in bytes, of the buffer used for sending HTTP responses.
Default: 65536 bytes (64 KB).

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinRequestBodyDataRate
Defines the minimum data rate, in bytes per second, required for receiving the request body.
If the rate falls below this threshold, the connection may be closed.
Default: 240 bytes/second.

```yaml
Type: MinDataRate
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinResponseDataRate
Sets the minimum data rate, in bytes per second, required for sending the response.
Default: 240 bytes/second.

```yaml
Type: MinDataRate
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestHeadersTimeoutSeconds
Specifies the maximum time, in seconds, allowed to receive the complete set of request headers.
Default: 30 seconds.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
If specified, the cmdlet will return the modified server instance after applying the limits.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### [Kestrun.Hosting.KestrunHost]
### The modified Kestrun server instance after applying the limits.
## NOTES
This cmdlet modifies the server instance's configuration to enforce the specified limits.

## RELATED LINKS
