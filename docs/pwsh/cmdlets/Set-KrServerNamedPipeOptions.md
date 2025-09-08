---
layout: default
parent: PowerShell Cmdlets
title: Set-KrServerNamedPipeOptions
nav_order: 96
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrServerNamedPipeOptions

## SYNOPSIS
Sets the named pipe options for a Kestrun server instance.
(Windows Operating Systems only)

## SYNTAX

### Items (Default)
```
Set-KrServerNamedPipeOptions [-Server <KestrunHost>] [-ListenerQueueCount <Int32>] [-MaxReadBufferSize <Int64>]
 [-CurrentUserOnly] [-MaxWriteBufferSize <Int64>] [-PipeSecurity <PipeSecurity>] [-PassThru]
 [<CommonParameters>]
```

### Options
```
Set-KrServerNamedPipeOptions [-Server <KestrunHost>] -Options <NamedPipeTransportOptions> [-PassThru]
 [<CommonParameters>]
```

## DESCRIPTION
This function sets the named pipe options for the specified Kestrun server instance, allowing for configuration of various named pipe transport settings.

## EXAMPLES

### EXAMPLE 1
```powershell
Set-KrServerNamedPipeOptions -Server $server -ListenerQueueCount 5 -MaxReadBufferSize 65536
This command sets the named pipe options for the specified Kestrun server instance, configuring the listener queue count and maximum read buffer size.
```

### EXAMPLE 2
```powershell
Set-KrServerNamedPipeOptions -Server $server -CurrentUserOnly
This command configures the named pipe options for the specified Kestrun server instance to restrict access to the current user only.
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
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Options
The NamedPipeTransportOptions object containing the desired named pipe configuration settings.
This parameter is mandatory when using the 'Options' parameter set.

```yaml
Type: NamedPipeTransportOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ListenerQueueCount
Specifies the number of named pipe listener queues to create for the server.
This parameter is optional and can be set to a specific value or left unset to use defaults.

```yaml
Type: Int32
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxReadBufferSize
Specifies the maximum size, in bytes, of the read buffer for named pipe connections.
This parameter is optional and can be set to a specific value or left unset to use defaults.

```yaml
Type: Int64
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -CurrentUserOnly
If specified, the named pipe will only be accessible by the current user.
This parameter is optional and can be left unset to use defaults.

```yaml
Type: SwitchParameter
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxWriteBufferSize
Specifies the maximum size, in bytes, of the write buffer for named pipe connections.
This parameter is optional and can be set to a specific value or left unset to use defaults.

```yaml
Type: Int64
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -PipeSecurity
Specifies the PipeSecurity object to apply to the named pipe.
This parameter is optional and can be set to a specific value or left unset to use defaults.

```yaml
Type: PipeSecurity
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
If specified, the cmdlet will return the modified server instance after applying the named pipe options.

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
### The modified Kestrun server instance with the updated named pipe options.
## NOTES
This function is for Windows Operating Systems only, as named pipes are not supported on Unix-based systems.
The named pipe options will be applied to the server's options and will be used when the server is started to listen for incoming requests on the specified named pipe.
The named pipe transport options can be configured to optimize performance and security based on the specific requirements of the Kestrun server deployment.
The named pipe transport options can be set either by providing a complete NamedPipeTransportOptions object
This function is designed to be used in the context of a Kestrun server setup and allows for flexible configuration of named pipe transport options.

## RELATED LINKS
