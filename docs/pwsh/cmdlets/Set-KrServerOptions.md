---
layout: default
parent: PowerShell Cmdlets
title: Set-KrServerOptions
nav_order: 98
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrServerOptions

## SYNOPSIS
Configures advanced options and operational limits for a Kestrun server instance.

## SYNTAX

```
Set-KrServerOptions [[-Server] <KestrunHost>] [-AllowSynchronousIO] [-DisableResponseHeaderCompression]
 [-DenyServerHeader] [-AllowAlternateSchemes] [-AllowHostHeaderOverride] [-DisableStringReuse]
 [[-MaxRunspaces] <Int32>] [[-MinRunspaces] <Int32>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
The Set-KrServerOptions function allows fine-grained configuration of a Kestrun server instance.
It enables administrators to control server behavior, resource usage, and protocol compliance by
setting limits on request sizes, connection counts, timeouts, and other operational parameters.
Each parameter is optional and, if not specified, the server will use its built-in default value.

## EXAMPLES

### EXAMPLE 1
```powershell
Set-KrServerOptions -Server $srv -MaxRequestBodySize 1000000
Configures the server instance $srv to limit request body size to 1,000,000 bytes.
```

### EXAMPLE 2
```powershell
Set-KrServerOptions -Server $srv -AllowSynchronousIO
Configures the server instance $srv to allow synchronous IO operations.
```

## PARAMETERS

### -Server
The Kestrun server instance to configure.
This parameter is mandatory and must be a valid server object.

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

### -AllowSynchronousIO
If set to $true, allows synchronous IO operations on the server.
Synchronous IO can impact scalability and is generally discouraged.
Default: $false.

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

### -DisableResponseHeaderCompression
If set to $true, disables compression of HTTP response headers.
Default: $false.

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

### -DenyServerHeader
If set to $true, removes the 'Server' HTTP header from responses for improved privacy and security.
Default: $false.

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

### -AllowAlternateSchemes
If set to $true, allows alternate URI schemes (other than HTTP/HTTPS) in requests.
Default: $false.

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

### -AllowHostHeaderOverride
If set to $true, permits overriding the Host header in incoming requests.
Default: $false.

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

### -DisableStringReuse
If set to $true, disables internal string reuse optimizations, which may increase memory usage but can help with certain debugging scenarios.
Default: $false.

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

### -MaxRunspaces
Specifies the maximum number of runspaces to use for script execution.
This can help control resource usage and concurrency in script execution.
Default: 2x CPU cores or as specified in the KestrunOptions.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinRunspaces
Specifies the minimum number of runspaces to use for script execution.
This ensures that at least a certain number of runspaces are always available for processing requests.
Default: 1.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 1
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

## NOTES
All parameters are optional except for -Server.
Defaults are based on typical Kestrun server settings as of the latest release.

## RELATED LINKS
